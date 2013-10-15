.class Lcom/android/launcher2/Launcher$WidgetAddInfo;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidgetAddInfo"
.end annotation


# instance fields
.field public mAllowDuplicate:Z

.field public mComponentName:Landroid/content/ComponentName;

.field public mSizeX:I

.field public mSizeY:I

.field final synthetic this$0:Lcom/android/launcher2/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1798
    iput-object p1, p0, Lcom/android/launcher2/Launcher$WidgetAddInfo;->this$0:Lcom/android/launcher2/Launcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1801
    iput v0, p0, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeX:I

    iput v0, p0, Lcom/android/launcher2/Launcher$WidgetAddInfo;->mSizeY:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/Launcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1798
    invoke-direct {p0, p1}, Lcom/android/launcher2/Launcher$WidgetAddInfo;-><init>(Lcom/android/launcher2/Launcher;)V

    return-void
.end method
