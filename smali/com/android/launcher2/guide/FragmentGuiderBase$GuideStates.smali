.class final enum Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;
.super Ljava/lang/Enum;
.source "FragmentGuiderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/guide/FragmentGuiderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GuideStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

.field public static final enum OFF:Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

.field public static final enum ON:Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;->ON:Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    .line 46
    new-instance v0, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;->OFF:Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    sget-object v1, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;->ON:Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;->OFF:Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;->$VALUES:[Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;->$VALUES:[Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    invoke-virtual {v0}, [Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/guide/FragmentGuiderBase$GuideStates;

    return-object v0
.end method
