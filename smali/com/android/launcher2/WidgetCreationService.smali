.class public Lcom/android/launcher2/WidgetCreationService;
.super Landroid/app/IntentService;
.source "WidgetCreationService.java"


# static fields
.field public static final DASHWIRE_ACTION_NAME:Ljava/lang/String; = "com.dashwire.config.launcher.CONFIGURE_HOMESCREEN_RESULT"

.field public static final DASHWIRE_PERMISSION:Ljava/lang/String; = "com.dashwire.config.launcher.SEND_HOMESCREEN_RESULT"

.field public static final FAVORITES:Ljava/lang/String; = "Favorites"

.field public static final LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final SUCCESS:Ljava/lang/String; = "success"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "WidgetCreationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 74
    return-void
.end method
