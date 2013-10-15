.class Lcom/android/launcher2/MenuView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "MenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/launcher2/MenuView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public extraTabTab:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 774
    new-instance v0, Lcom/android/launcher2/MenuView$SavedState$1;

    invoke-direct {v0}, Lcom/android/launcher2/MenuView$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 769
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    .line 771
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 766
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuView$SavedState;->extraTabTab:Ljava/lang/String;

    .line 767
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 787
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 788
    return-void
.end method
