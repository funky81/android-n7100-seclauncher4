.class public Lcom/android/launcher2/EasyModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EasyModeReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const-string v0, "EasyModeReceiver"

    iput-object v0, p0, Lcom/android/launcher2/EasyModeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher2/Launcher;->isAvailableEasyMode1()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 31
    const-string v6, "EasyModeReceiver"

    const-string v7, "Easy mode action received!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v6, "easymode"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    .local v1, easyMode:Z
    const-string v6, "easymode_from"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, from:Ljava/lang/String;
    const-string v6, "settings"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 35
    .local v3, fromSettings:Z
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v6

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v6, v5, v3}, Lcom/android/launcher2/LauncherModel;->triggerToggleEasyMode(IZ)V

    .line 37
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/launcher2/Launcher;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v4, home:Landroid/content/Intent;
    const/high16 v5, 0x1400

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 42
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/high16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    .end local v1           #easyMode:Z
    .end local v2           #from:Ljava/lang/String;
    .end local v3           #fromSettings:Z
    .end local v4           #home:Landroid/content/Intent;
    :cond_0
    return-void

    .line 35
    .restart local v1       #easyMode:Z
    .restart local v2       #from:Ljava/lang/String;
    .restart local v3       #fromSettings:Z
    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method
