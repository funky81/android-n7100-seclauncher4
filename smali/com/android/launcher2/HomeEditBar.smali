.class public Lcom/android/launcher2/HomeEditBar;
.super Landroid/widget/LinearLayout;
.source "HomeEditBar.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeEditBar$3;
    }
.end annotation


# static fields
.field public static isfolderCreated:Z


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAppInfo:Landroid/widget/TextView;

.field private mAppInfoContainer:Landroid/widget/FrameLayout;

.field private mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

.field private mCancel:Landroid/widget/TextView;

.field private mCancelContainer:Landroid/widget/FrameLayout;

.field private mCancelDrawable:Landroid/graphics/drawable/Drawable;

.field private mCancelText:Ljava/lang/String;

.field private mCurrentAnimatorRes:I

.field private mDelete:Landroid/widget/TextView;

.field private mDeleteContainer:Landroid/widget/FrameLayout;

.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteText:Ljava/lang/String;

.field private mDisable:Landroid/widget/TextView;

.field private mDisableContainer:Landroid/widget/FrameLayout;

.field private mDisableDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisableText:Ljava/lang/String;

.field private mDropped:Z

.field private mEntered:Z

.field private mHideAnimatorRes:I

.field private mNewFolder:Landroid/widget/TextView;

.field private mNewFolderContainer:Landroid/widget/FrameLayout;

.field private mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mOrientation:I

.field private mPosition:I

.field private mShowAnimatorRes:I

.field private mShowPosted:Z

.field private mUninstall:Landroid/widget/TextView;

.field private mUninstallContainer:Landroid/widget/FrameLayout;

.field private mUninstallDrawable:Landroid/graphics/drawable/Drawable;

.field private mUninstallText:Ljava/lang/String;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/HomeEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/HomeEditBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 99
    iput v2, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    .line 102
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    .line 115
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    .line 119
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 120
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteText:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallText:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0042

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableText:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelText:Ljava/lang/String;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/HomeEditBar;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher2/HomeEditBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    return p1
.end method

.method private appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 163
    .local v3, infoOk:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 206
    :cond_0
    :goto_1
    :pswitch_0
    return v3

    .line 162
    .end local v3           #infoOk:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 165
    .restart local v3       #infoOk:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 166
    if-nez v3, :cond_0

    .line 167
    new-instance v0, Lcom/android/launcher2/HomeEditBar$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeEditBar$1;-><init>(Lcom/android/launcher2/HomeEditBar;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 177
    :pswitch_2
    if-eqz v3, :cond_0

    .line 178
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 180
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 181
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 187
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 188
    .local v11, pkgName:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 189
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 190
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, v11, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 192
    .local v10, intent:Landroid/content/Intent;
    const/high16 v0, 0x1080

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 195
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 196
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 202
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #pkgName:Ljava/lang/String;
    :pswitch_4
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private cancel(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 380
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 421
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 382
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 384
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 385
    .local v6, home:Lcom/android/launcher2/HomeView;
    if-eqz v6, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 387
    .local v7, ws:Lcom/android/launcher2/Workspace;
    if-eqz v7, :cond_1

    .line 388
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 390
    .end local v7           #ws:Lcom/android/launcher2/Workspace;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 392
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 393
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 397
    .end local v6           #home:Lcom/android/launcher2/HomeView;
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 398
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 402
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 404
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 409
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 411
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 412
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e008b

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 414
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 415
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 332
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 376
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 334
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 335
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_2

    .line 336
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->onDelete()V

    .line 345
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 347
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 348
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 339
    .local v6, home:Lcom/android/launcher2/HomeView;
    if-eqz v6, :cond_1

    .line 340
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 341
    .local v7, ws:Lcom/android/launcher2/Workspace;
    if-eqz v7, :cond_1

    .line 342
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_1

    .line 352
    .end local v6           #home:Lcom/android/launcher2/HomeView;
    .end local v7           #ws:Lcom/android/launcher2/Workspace;
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 353
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 357
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 359
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 364
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 366
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 367
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 369
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 370
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private disable(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 424
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 463
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 426
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeEditBar;->showDisableConfirmationDialog(Lcom/android/launcher2/BaseItem;)V

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 429
    .local v6, home:Lcom/android/launcher2/HomeView;
    if-eqz v6, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 431
    .local v7, ws:Lcom/android/launcher2/Workspace;
    if-eqz v7, :cond_1

    .line 432
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 434
    .end local v7           #ws:Lcom/android/launcher2/Workspace;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 435
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 436
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 440
    .end local v6           #home:Lcom/android/launcher2/HomeView;
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 441
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 444
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    .line 445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 446
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 451
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 452
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 453
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 454
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e0089

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 456
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 457
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "tv"

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    .local v0, all:[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 137
    aget-object v1, v0, v2

    .line 138
    if-eqz v1, :cond_1

    .line 141
    :cond_0
    return-object v1

    .line 136
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private newFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 10
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 525
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_4

    instance-of v0, p1, Lcom/android/launcher2/HomePendingItem;

    if-nez v0, :cond_4

    :cond_2
    const/4 v3, 0x1

    .line 532
    .local v3, canCreateFolder:Z
    :goto_0
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 570
    :cond_3
    :goto_1
    :pswitch_0
    return v3

    .line 525
    .end local v3           #canCreateFolder:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 534
    .restart local v3       #canCreateFolder:Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 538
    :pswitch_2
    if-eqz v3, :cond_3

    .line 539
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 541
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 542
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 543
    :cond_5
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_6

    .line 544
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    .line 545
    :cond_6
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->createHomeFolderFromDragItem()Z

    .line 546
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_3

    .line 547
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 553
    :pswitch_3
    if-eqz v3, :cond_3

    .line 554
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 555
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e0087

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 557
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_3

    .line 558
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_1

    .line 564
    :pswitch_4
    if-eqz v3, :cond_3

    .line 565
    iget-object v5, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_1

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setAnimatorsForOrientation()V
    .locals 2

    .prologue
    .line 885
    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v0, v1, 0x3

    .line 886
    .local v0, barPosition:I
    packed-switch v0, :pswitch_data_0

    .line 900
    :pswitch_0
    const v1, 0x7f050015

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 901
    const v1, 0x7f050016

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    .line 904
    :goto_0
    return-void

    .line 888
    :pswitch_1
    const v1, 0x7f05000d

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 889
    const v1, 0x7f05000e

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    .line 892
    :pswitch_2
    const v1, 0x7f050013

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 893
    const v1, 0x7f050014

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    .line 896
    :pswitch_3
    const/high16 v1, 0x7f05

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    .line 897
    const v1, 0x7f050001

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    goto :goto_0

    .line 886
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
    .line 919
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 920
    aput-object p2, p3, p4

    .line 921
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const/4 v1, 0x1

    aget-object v1, p3, v1

    const/4 v2, 0x2

    aget-object v2, p3, v2

    const/4 v3, 0x3

    aget-object v3, p3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 923
    :cond_0
    return-void
.end method

.method private setDrawablesForOrientation()V
    .locals 4

    .prologue
    .line 930
    const/4 v2, 0x4

    new-array v0, v2, [Landroid/graphics/drawable/Drawable;

    .line 932
    .local v0, d:[Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v2, v2, 0x30

    shr-int/lit8 v1, v2, 0x4

    .line 936
    .local v1, index:I
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 937
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 938
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 939
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 940
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 941
    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/HomeEditBar;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setDrawableForOrientation(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;[Landroid/graphics/drawable/Drawable;I)V

    .line 943
    return-void
.end method

.method private setInitialAnimationParameter()V
    .locals 7

    .prologue
    const v6, 0x7f0f001c

    const v5, 0x7f0f001e

    const v4, 0x7f0f001d

    const v3, 0x7f0f0011

    .line 663
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->EditDragBar:[I

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 664
    .local v0, dragBar:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    .line 665
    invoke-static {v6, p0}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/LinearLayout;)V

    .line 666
    invoke-static {v6, p0}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 667
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 669
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 670
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 671
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 672
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 673
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 677
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 678
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 679
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 681
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 683
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 684
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 685
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-static {v5, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 687
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 688
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 689
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 690
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 691
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 693
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 694
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 695
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 696
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 697
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 699
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 700
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/widget/TextView;)V

    .line 701
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    invoke-static {v3, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 702
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyle(ILandroid/view/View;)V

    .line 703
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    invoke-static {v4, v1}, Lcom/android/launcher2/RotateHelper;->applyStyleLayout(ILandroid/view/View;)V

    .line 705
    :cond_5
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
    .line 962
    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 963
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 965
    invoke-virtual {p1, p4}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 966
    invoke-virtual {p1, p5}, Landroid/widget/FrameLayout;->setActivated(Z)V

    .line 967
    return-void
.end method

.method private showDisableConfirmationDialog(Lcom/android/launcher2/BaseItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 766
    sget-object v0, Lcom/android/launcher2/HomeEditBar$3;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 775
    :goto_0
    return-void

    .line 768
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/DisableAppConfirmationDialog;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private uninstall(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z
    .locals 8
    .parameter "item"
    .parameter "dragState"
    .parameter "dragEvent"

    .prologue
    .line 467
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 509
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 470
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Ljava/lang/String;Ljava/lang/String;Landroid/app/FragmentManager;)V

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 474
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v6, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 475
    .local v6, home:Lcom/android/launcher2/HomeView;
    if-eqz v6, :cond_1

    .line 476
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    .line 477
    .local v7, ws:Lcom/android/launcher2/Workspace;
    if-eqz v7, :cond_1

    .line 478
    invoke-virtual {p2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 480
    .end local v7           #ws:Lcom/android/launcher2/Workspace;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 481
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 482
    const/16 v0, 0x6457

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto :goto_0

    .line 486
    .end local v6           #home:Lcom/android/launcher2/HomeView;
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 487
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 490
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    if-nez v0, :cond_0

    .line 491
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 492
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    goto :goto_0

    .line 497
    :pswitch_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mEntered:Z

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->mDropped:Z

    .line 499
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 500
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f0e002c

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 502
    iget-boolean v0, p0, Lcom/android/launcher2/HomeEditBar;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 503
    const/16 v0, 0x5695

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->performHapticFeedback(II)Z

    goto/16 :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 14
    .parameter "workspace"
    .parameter "oldState"
    .parameter "newState"
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p5, animators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    iput-object p1, p0, Lcom/android/launcher2/HomeEditBar;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 228
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    .line 230
    const/4 v8, 0x1

    .line 232
    .local v8, allowFeatureForHelpApp:Z
    sget-object v1, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_10

    if-eqz p4, :cond_10

    .line 233
    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowAnimatorRes:I

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    .line 235
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_8

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v4, 0x1

    .line 236
    .local v4, canShowInfo:Z
    :goto_0
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_9

    move-object/from16 v1, p4

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-boolean v1, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/launcher2/Launcher;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v10, 0x1

    .line 237
    .local v10, canShowDisable:Z
    :goto_1
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_a

    move-object/from16 v1, p4

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-boolean v1, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v1, :cond_a

    const/4 v11, 0x1

    .line 238
    .local v11, canShowUninstall:Z
    :goto_2
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/launcher2/FolderItem;

    if-nez v1, :cond_b

    const/4 v13, 0x1

    .line 239
    .local v13, notAFolder:Z
    :goto_3
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v1, :cond_c

    const/4 v7, 0x1

    .line 240
    .local v7, isAppItem:Z
    :goto_4
    if-eqz v7, :cond_d

    if-eqz v13, :cond_d

    if-eqz v10, :cond_d

    const/4 v5, 0x1

    .line 241
    .local v5, canShowDisableContainer:Z
    :goto_5
    if-eqz v7, :cond_e

    if-eqz v13, :cond_e

    if-eqz v11, :cond_e

    const/4 v6, 0x1

    .line 244
    .local v6, canShowUninstallContainer:Z
    :goto_6
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    .line 245
    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "addapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "add_widgets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "remove_items"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "move_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    :cond_0
    const/4 v8, 0x0

    .line 257
    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsEditFromHome:Z

    if-nez v1, :cond_f

    :cond_2
    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p4

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_f

    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/android/launcher2/HomePendingItem;

    if-nez v1, :cond_f

    :cond_3
    if-eqz v8, :cond_f

    const/4 v3, 0x1

    .line 264
    .local v3, canCreateFolder:Z
    :goto_7
    const/4 v8, 0x1

    .line 266
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v12

    .line 269
    .local v12, maxPages:I
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_5

    .line 270
    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "addapps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "add_widgets"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "remove_items"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "create_folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v2, "move_app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 273
    :cond_4
    const/4 v8, 0x0

    .line 277
    :cond_5
    const/4 v8, 0x1

    .line 282
    new-instance v1, Lcom/android/launcher2/HomeEditBar$2;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher2/HomeEditBar$2;-><init>(Lcom/android/launcher2/HomeEditBar;ZZZZZ)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeEditBar;->post(Ljava/lang/Runnable;)Z

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    .line 312
    .end local v3           #canCreateFolder:Z
    .end local v4           #canShowInfo:Z
    .end local v5           #canShowDisableContainer:Z
    .end local v6           #canShowUninstallContainer:Z
    .end local v7           #isAppItem:Z
    .end local v10           #canShowDisable:Z
    .end local v11           #canShowUninstall:Z
    .end local v12           #maxPages:I
    .end local v13           #notAFolder:Z
    :cond_6
    :goto_8
    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    if-eqz v1, :cond_7

    .line 313
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v9

    .line 314
    .local v9, animator:Landroid/animation/Animator;
    invoke-virtual {v9, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 315
    invoke-virtual {v9, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 316
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v9           #animator:Landroid/animation/Animator;
    :cond_7
    return-void

    .line 235
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 236
    .restart local v4       #canShowInfo:Z
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 237
    .restart local v10       #canShowDisable:Z
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 238
    .restart local v11       #canShowUninstall:Z
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 239
    .restart local v13       #notAFolder:Z
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 240
    .restart local v7       #isAppItem:Z
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 241
    .restart local v5       #canShowDisableContainer:Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 257
    .restart local v6       #canShowUninstallContainer:Z
    :cond_f
    const/4 v3, 0x0

    goto :goto_7

    .line 309
    .end local v4           #canShowInfo:Z
    .end local v5           #canShowDisableContainer:Z
    .end local v6           #canShowUninstallContainer:Z
    .end local v7           #isAppItem:Z
    .end local v10           #canShowDisable:Z
    .end local v11           #canShowUninstall:Z
    .end local v13           #notAFolder:Z
    :cond_10
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/launcher2/HomeEditBar;->mShowPosted:Z

    if-eqz v1, :cond_6

    .line 310
    :cond_11
    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    iput v1, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    goto :goto_8
.end method

.method public getBarPosition()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mPosition:I

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 580
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .parameter "a"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 589
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    if-ne v0, v1, :cond_5

    .line 590
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->setVisibility(I)V

    .line 591
    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v4, v0}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 595
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 597
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 600
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 601
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 604
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 605
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 607
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 608
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 609
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 611
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 612
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 613
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 615
    :cond_4
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 616
    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/HomeEditBar;->setStates(Landroid/widget/FrameLayout;Landroid/widget/TextView;ZZZ)V

    .line 617
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    :cond_5
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 629
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 640
    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mCurrentAnimatorRes:I

    iget v1, p0, Lcom/android/launcher2/HomeEditBar;->mHideAnimatorRes:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 642
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    .line 643
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setInitialAnimationParameter()V

    .line 644
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    .line 645
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    .line 647
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 648
    const/4 v0, 0x2

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/HomeEditBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 649
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 653
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 654
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setInitialAnimationParameter()V

    .line 655
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    .line 656
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    .line 657
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "dragEvent"

    .prologue
    .line 722
    const/4 v3, 0x0

    .line 723
    .local v3, rc:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    .line 724
    .local v2, localState:Ljava/lang/Object;
    instance-of v4, v2, Lcom/android/launcher2/DragState;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 725
    check-cast v1, Lcom/android/launcher2/DragState;

    .line 726
    .local v1, dragState:Lcom/android/launcher2/DragState;
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 727
    .local v0, dragItem:Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_1

    .line 728
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_2

    .line 729
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->appInfo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    .line 758
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 759
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 762
    .end local v0           #dragItem:Lcom/android/launcher2/BaseItem;
    .end local v1           #dragState:Lcom/android/launcher2/DragState;
    :cond_1
    return v3

    .line 730
    .restart local v0       #dragItem:Lcom/android/launcher2/BaseItem;
    .restart local v1       #dragState:Lcom/android/launcher2/DragState;
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_6

    .line 732
    sget-boolean v4, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v4, :cond_5

    .line 733
    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "addapps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "add_widgets"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "create_folder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "resize_widgets"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    const-string v5, "move_app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 736
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 739
    :cond_4
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0

    .line 744
    :cond_5
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->delete(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0

    .line 747
    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_7

    .line 748
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->newFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0

    .line 749
    :cond_7
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_8

    .line 750
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->disable(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0

    .line 751
    :cond_8
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_9

    .line 752
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->uninstall(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0

    .line 753
    :cond_9
    iget-object v4, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    if-ne p1, v4, :cond_0

    .line 754
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher2/HomeEditBar;->cancel(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragState;Landroid/view/DragEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 786
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 791
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 792
    .local v7, fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_0

    .line 793
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 794
    .local v8, tv:Landroid/widget/TextView;
    if-eqz v8, :cond_0

    .line 795
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    .line 796
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    .line 797
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 798
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfo:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mAppInfoDrawable:Landroid/graphics/drawable/Drawable;

    .line 802
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_0
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #fl:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 803
    .restart local v7       #fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_1

    .line 804
    const v0, 0x7f070033

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 805
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_1

    .line 806
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    .line 807
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    .line 808
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 809
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDelete:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 810
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 812
    .local v3, bin:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 813
    .local v4, lid:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 818
    .end local v3           #bin:Landroid/graphics/drawable/Drawable;
    .end local v4           #lid:Landroid/graphics/drawable/Drawable;
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_1
    const v0, 0x7f070044

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #fl:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 819
    .restart local v7       #fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_2

    .line 820
    const v0, 0x7f070045

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 821
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_2

    .line 822
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    .line 823
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    .line 824
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 825
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolder:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 826
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 827
    new-instance v0, Lcom/android/launcher2/NewFolderDrawable;

    iget-object v1, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Lcom/android/launcher2/NewFolderDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mNewFolderDrawable:Landroid/graphics/drawable/Drawable;

    .line 832
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_2
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #fl:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 833
    .restart local v7       #fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_3

    .line 834
    const v0, 0x7f070049

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 835
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_3

    .line 836
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    .line 837
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    .line 838
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 839
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisable:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    .line 840
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 841
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 842
    .restart local v3       #bin:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 843
    .restart local v4       #lid:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mDisableDrawable:Landroid/graphics/drawable/Drawable;

    .line 848
    .end local v3           #bin:Landroid/graphics/drawable/Drawable;
    .end local v4           #lid:Landroid/graphics/drawable/Drawable;
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_3
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #fl:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 849
    .restart local v7       #fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_4

    .line 850
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 851
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_4

    .line 852
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    .line 853
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    .line 854
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 855
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstall:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    .line 856
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 857
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 858
    .restart local v3       #bin:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 859
    .restart local v4       #lid:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mUninstallDrawable:Landroid/graphics/drawable/Drawable;

    .line 864
    .end local v3           #bin:Landroid/graphics/drawable/Drawable;
    .end local v4           #lid:Landroid/graphics/drawable/Drawable;
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_4
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #fl:Landroid/widget/FrameLayout;
    check-cast v7, Landroid/widget/FrameLayout;

    .line 865
    .restart local v7       #fl:Landroid/widget/FrameLayout;
    if-eqz v7, :cond_5

    .line 866
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeEditBar;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 867
    .restart local v8       #tv:Landroid/widget/TextView;
    if-eqz v8, :cond_5

    .line 868
    iput-object v7, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    .line 869
    iput-object v8, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    .line 870
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancelContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 871
    iget-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancel:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeEditBar;->mCancelDrawable:Landroid/graphics/drawable/Drawable;

    .line 876
    .end local v8           #tv:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/HomeEditBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/HomeEditBar;->mOrientation:I

    .line 877
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setAnimatorsForOrientation()V

    .line 878
    invoke-direct {p0}, Lcom/android/launcher2/HomeEditBar;->setDrawablesForOrientation()V

    .line 879
    return-void
.end method
