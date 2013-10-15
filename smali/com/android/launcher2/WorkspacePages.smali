.class Lcom/android/launcher2/WorkspacePages;
.super Ljava/lang/Object;
.source "WorkspacePages.java"


# static fields
.field private static final PREFERENCES_EMPTYPAGES:Ljava/lang/String; = "emptypages"

.field private static mPages:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPageAt(ILandroid/content/Context;)Z
    .locals 5
    .parameter "page"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 86
    if-ltz p0, :cond_0

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    if-lt p0, v3, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 89
    :cond_1
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    new-array v1, v3, [Z

    .line 90
    .local v1, pagesTemp:[Z
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v4, v4

    invoke-static {v3, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 92
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v0, -0x1

    aget-boolean v4, v1, v4

    aput-boolean v4, v3, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_2
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v2, v3, p0

    .line 95
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    .line 96
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static deletePageAt(ILandroid/content/Context;)Z
    .locals 5
    .parameter "page"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 107
    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p0, v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    add-int/lit8 v0, p0, 0x1

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 111
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v3, v0, -0x1

    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v4, v4, v0

    aput-boolean v4, v2, v3

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    :cond_2
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput-boolean v1, v2, v3

    .line 114
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    .line 115
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static itemAddedToPage(ILandroid/content/Context;)Z
    .locals 2
    .parameter "page"
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 153
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 154
    if-ltz p0, :cond_0

    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v1, v1

    if-lt p0, v1, :cond_2

    .line 155
    :cond_0
    const/4 v0, 0x0

    .line 162
    :cond_1
    :goto_0
    return v0

    .line 157
    :cond_2
    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v1, v1, p0

    if-nez v1, :cond_1

    .line 158
    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v0, v1, p0

    .line 160
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static movePage(IILandroid/content/Context;)Z
    .locals 5
    .parameter "from"
    .parameter "to"
    .parameter "context"

    .prologue
    .line 126
    invoke-static {p2}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 127
    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-ge p0, v2, :cond_0

    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 128
    :cond_0
    const/4 v2, 0x0

    .line 143
    :goto_0
    return v2

    .line 130
    :cond_1
    if-eq p0, p1, :cond_4

    .line 131
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v0, v2, p0

    .line 132
    .local v0, fromValue:Z
    if-ge p0, p1, :cond_2

    .line 133
    move v1, p0

    .local v1, i:I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 134
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v1, 0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 136
    .end local v1           #i:I
    :cond_2
    move v1, p0

    .restart local v1       #i:I
    :goto_2
    if-le v1, p1, :cond_3

    .line 137
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v1, -0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v1

    .line 136
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 139
    :cond_3
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v0, v2, p1

    .line 141
    invoke-static {p2}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    .line 143
    .end local v0           #fromValue:Z
    .end local v1           #i:I
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z
    .locals 1
    .parameter "page"
    .parameter "context"

    .prologue
    .line 172
    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    .line 173
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readPreferences(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 40
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    if-eqz v4, :cond_1

    .line 62
    :cond_0
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v2

    .line 49
    .local v2, pageCount:I
    new-array v4, v2, [Z

    sput-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_2

    .line 52
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v5, v4, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_2
    const-string v4, "com.android.launcher2.prefs"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "emptypages"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, s:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v6, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 58
    .local v1, len:I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_4

    .line 59
    sget-object v6, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x74

    if-ne v4, v7, :cond_3

    const/4 v4, 0x1

    :goto_2
    aput-boolean v4, v6, v0

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    .line 59
    goto :goto_2

    .line 60
    :cond_4
    move v0, v1

    :goto_3
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 61
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v5, v4, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static writePreferences(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 72
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    const/16 v3, 0x74

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    const/16 v3, 0x66

    goto :goto_1

    .line 73
    :cond_1
    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 74
    .local v1, prefs:Landroid/content/SharedPreferences$Editor;
    const-string v3, "emptypages"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method
