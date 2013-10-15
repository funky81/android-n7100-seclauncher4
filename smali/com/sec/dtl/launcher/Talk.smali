.class public final enum Lcom/sec/dtl/launcher/Talk;
.super Ljava/lang/Enum;
.source "Talk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/dtl/launcher/Talk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/dtl/launcher/Talk; = null

.field public static final enum INSTANCE:Lcom/sec/dtl/launcher/Talk; = null

.field private static final TAG:Ljava/lang/String; = "Talk"


# instance fields
.field private mResources:Landroid/content/res/Resources;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechEngine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/sec/dtl/launcher/Talk;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/sec/dtl/launcher/Talk;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/dtl/launcher/Talk;

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/dtl/launcher/Talk;->$VALUES:[Lcom/sec/dtl/launcher/Talk;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/dtl/launcher/Talk;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/dtl/launcher/Talk;)Landroid/content/res/Resources;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/dtl/launcher/Talk;Ljava/util/Locale;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sec/dtl/launcher/Talk;->setTextToSpeechLanguage(Ljava/util/Locale;)V

    return-void
.end method

.method private setTextToSpeechLanguage(Ljava/util/Locale;)V
    .locals 2
    .parameter "ttsLocale"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 56
    :pswitch_0
    const-string v0, "Talk"

    const-string v1, "Language is not available defaulting to US English"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "Talk"

    const-string v1, "Could not initialize TextToSpeech US language"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 57
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/dtl/launcher/Talk;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/sec/dtl/launcher/Talk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/dtl/launcher/Talk;

    return-object v0
.end method

.method public static values()[Lcom/sec/dtl/launcher/Talk;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->$VALUES:[Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v0}, [Lcom/sec/dtl/launcher/Talk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/dtl/launcher/Talk;

    return-object v0
.end method


# virtual methods
.method public getTextToSpeech()Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackSuspend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    goto :goto_0
.end method

.method public isTalkbackPaused()Z
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 185
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    .line 188
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTalkbackSuspend()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 126
    .local v0, accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    .end local v1           #enabledServices:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, appContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 89
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v2, "accessibility_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string v2, "enabled_accessibility_services"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeechEngine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-nez v2, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    .line 98
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    new-instance v3, Lcom/sec/dtl/launcher/Talk$1;

    invoke-direct {v3, p0}, Lcom/sec/dtl/launcher/Talk$1;-><init>(Lcom/sec/dtl/launcher/Talk;)V

    invoke-direct {v2, v0, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 116
    iget-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeechEngine:Ljava/lang/String;

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->shutdown()V

    goto :goto_0
.end method

.method public say(I)V
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method

.method public say(III)V
    .locals 4
    .parameter "formatResourceId"
    .parameter "intArg1"
    .parameter "intArg2"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    .line 180
    :cond_0
    return-void
.end method

.method public say(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->getTextToSpeech()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/dtl/launcher/Talk;->isTalkbackPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide a valid string to speak"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/dtl/launcher/Talk;->setTextToSpeechLanguage(Ljava/util/Locale;)V

    .line 153
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 155
    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 73
    iput-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 74
    iput-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mResources:Landroid/content/res/Resources;

    .line 75
    iput-object v1, p0, Lcom/sec/dtl/launcher/Talk;->mTextToSpeechEngine:Ljava/lang/String;

    .line 77
    :cond_0
    return-void
.end method
