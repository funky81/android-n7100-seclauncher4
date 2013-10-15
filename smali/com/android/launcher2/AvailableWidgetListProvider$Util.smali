.class public final Lcom/android/launcher2/AvailableWidgetListProvider$Util;
.super Ljava/lang/Object;
.source "AvailableWidgetListProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AvailableWidgetListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Util"
.end annotation


# static fields
.field private static final UNINSTALLABLE:I = 0x81


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUninstall(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .parameter "appInfo"

    .prologue
    const/4 v0, 0x0

    .line 52
    sget-object v1, Lcom/android/launcher2/MenuAppLoader;->nonUninstallableWidgets:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "SM-T310X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static canUninstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2
    .parameter "pm"
    .parameter "packageName"

    .prologue
    const/4 v0, 0x0

    .line 33
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->canUninstall(Landroid/content/pm/ApplicationInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 36
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isSecret(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "pm"
    .parameter "packageName"

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
