.class public Lcom/android/launcher2/BadgeCountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BadgeCountReceiver.java"


# static fields
.field private static final ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String; = "android.intent.action.BADGE_COUNT_UPDATE"

.field private static final BADGECOUNT:Ljava/lang/String; = "badgecount"

.field private static final BADGE_AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field private static final BADGE_URI:Landroid/net/Uri; = null

.field private static final CLASSNAME:Ljava/lang/String; = "class"

#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final INTENT_DATA_BADGE_COUNT:Ljava/lang/String; = "badge_count"

.field private static final INTENT_DATA_BADGE_COUNT_CLASS_NAME:Ljava/lang/String; = "badge_count_class_name"

.field private static final INTENT_DATA_BADGE_COUNT_PACKAGE_NAME:Ljava/lang/String; = "badge_count_package_name"

.field private static final PACKAGENAME:Ljava/lang/String; = "package"

.field private static final TAG:Ljava/lang/String; = "BadgeCountReceiver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mValues:Landroid/content/ContentValues;

.field private final mWhereValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/BadgeCountReceiver;->DEBUGGABLE:Z

    .line 45
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/BadgeCountReceiver;->BADGE_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 53
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/BadgeCountReceiver;->mValues:Landroid/content/ContentValues;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/BadgeCountReceiver;->mWhereValues:[Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/android/launcher2/BadgeCountReceiver;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/BadgeCountReceiver;->mResolver:Landroid/content/ContentResolver;

    .line 62
    return-void
.end method

.method public static initialize(Landroid/content/Context;)Lcom/android/launcher2/BadgeCountReceiver;
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    new-instance v0, Lcom/android/launcher2/BadgeCountReceiver;

    invoke-direct {v0, p0}, Lcom/android/launcher2/BadgeCountReceiver;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, badgeReceiver:Lcom/android/launcher2/BadgeCountReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 83
    const-string v4, "badge_count"

    invoke-virtual {p2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, badgeCnt:I
    const-string v4, "badge_count_package_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, packageName:Ljava/lang/String;
    const-string v4, "badge_count_class_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, className:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 88
    :cond_0
    const-string v4, "BadgeCountReceiver"

    const-string v5, "packageName or className not specified"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0           #badgeCnt:I
    .end local v1           #className:Ljava/lang/String;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 91
    .restart local v0       #badgeCnt:I
    .restart local v1       #className:Ljava/lang/String;
    .restart local v2       #packageName:Ljava/lang/String;
    :cond_2
    sget-boolean v4, Lcom/android/launcher2/BadgeCountReceiver;->DEBUGGABLE:Z

    if-eqz v4, :cond_3

    .line 92
    const-string v4, "BadgeCountReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", className: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 95
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mValues:Landroid/content/ContentValues;

    const-string v5, "badgecount"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mWhereValues:[Ljava/lang/String;

    aput-object v2, v4, v9

    .line 97
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mWhereValues:[Ljava/lang/String;

    aput-object v1, v4, v10

    .line 100
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/launcher2/BadgeCountReceiver;->BADGE_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/launcher2/BadgeCountReceiver;->mValues:Landroid/content/ContentValues;

    const-string v7, "package=? AND class=?"

    iget-object v8, p0, Lcom/android/launcher2/BadgeCountReceiver;->mWhereValues:[Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 102
    .local v3, updateCount:I
    if-nez v3, :cond_4

    .line 103
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mValues:Landroid/content/ContentValues;

    const-string v5, "package"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mValues:Landroid/content/ContentValues;

    const-string v5, "class"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/launcher2/BadgeCountReceiver;->BADGE_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/launcher2/BadgeCountReceiver;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 108
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 109
    iget-object v4, p0, Lcom/android/launcher2/BadgeCountReceiver;->mWhereValues:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/launcher2/BadgeCountReceiver;->mWhereValues:[Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v6, v5, v10

    aput-object v6, v4, v9

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/launcher2/BadgeCountReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method
