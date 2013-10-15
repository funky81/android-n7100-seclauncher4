.class Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/tabs/TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 320
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;->mContext:Landroid/content/Context;

    .line 322
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 326
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/tabs/TabManager$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 327
    .local v0, v:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 328
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 329
    return-object v0
.end method
