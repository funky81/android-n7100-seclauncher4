.class public Lcom/android/launcher2/LauncherSettings$AppOrderModify;
.super Ljava/lang/Object;
.source "LauncherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOrderModify"
.end annotation


# static fields
.field public static final CREATE_APP:I = 0x3

.field public static final CREATE_FOLDER:I = 0x0

.field public static final DELETE_ITEM:I = 0x5

.field public static final UPDATE_APP:I = 0x4

.field public static final UPDATE_FOLDER:I = 0x1

.field public static final UPDATE_TITLE:I = 0x2


# instance fields
.field public action:I

.field public cell:I

.field public component:Landroid/content/ComponentName;

.field public folderId:J

.field public hidden:Z

.field public id:J

.field public screen:I

.field public secret:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
