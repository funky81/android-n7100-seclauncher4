.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"

.field private static final mCoordinates:[I

.field private static mCountX:I

.field private static mCountY:I


# instance fields
.field pref2:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static findEmptyCell(Landroid/content/Context;[II)Z
    .locals 22
    .parameter "context"
    .parameter "xy"
    .parameter "screen"

    .prologue
    .line 172
    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v3, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    .line 174
    .local v7, occupied:[[Z
    const-wide/16 v2, -0x64

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v3, v1}, Lcom/android/launcher2/LauncherModel;->getItemsInLocalCoordinates(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v12

    .line 177
    .local v12, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/HomeItem;

    .line 178
    .local v11, item:Lcom/android/launcher2/HomeItem;
    iget v8, v11, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 179
    .local v8, cellX:I
    iget v9, v11, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 180
    .local v9, cellY:I
    iget v14, v11, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 181
    .local v14, spanX:I
    iget v15, v11, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 182
    .local v15, spanY:I
    move/from16 v20, v8

    .local v20, x:I
    :goto_0
    add-int v2, v8, v14

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 183
    move/from16 v21, v9

    .local v21, y:I
    :goto_1
    add-int v2, v9, v15

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    .line 184
    aget-object v2, v7, v20

    const/4 v3, 0x1

    aput-boolean v3, v2, v21

    .line 183
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 182
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 188
    .end local v8           #cellX:I
    .end local v9           #cellY:I
    .end local v11           #item:Lcom/android/launcher2/HomeItem;
    .end local v14           #spanX:I
    .end local v15           #spanY:I
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_2
    const-string v2, "com.android.launcher2.prefs"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 189
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v2, "tempScreen"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_4

    .line 190
    const-string v2, "tempCellX"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 191
    .local v16, tempCellX:I
    const-string v2, "tempCellY"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 192
    .local v17, tempCellY:I
    const-string v2, "tempSpanX"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 193
    .local v18, tempSpanX:I
    const-string v2, "tempSpanY"

    const/4 v3, -0x1

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 194
    .local v19, tempSpanY:I
    move/from16 v20, v16

    .restart local v20       #x:I
    :goto_2
    add-int v2, v16, v18

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_4

    .line 195
    move/from16 v21, v17

    .restart local v21       #y:I
    :goto_3
    add-int v2, v17, v19

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    sget v2, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_3

    .line 196
    aget-object v2, v7, v20

    const/4 v3, 0x1

    aput-boolean v3, v2, v21

    .line 195
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 194
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 200
    .end local v16           #tempCellX:I
    .end local v17           #tempCellY:I
    .end local v18           #tempSpanX:I
    .end local v19           #tempSpanY:I
    .end local v20           #x:I
    .end local v21           #y:I
    :cond_4
    const/4 v3, 0x1

    const/4 v4, 0x1

    sget v5, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    sget v6, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/CellLayout;->findVacantCell([IIIII[[Z)Z

    move-result v2

    return v2
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 11
    .parameter "context"
    .parameter "data"
    .parameter "screen"

    .prologue
    const/4 v8, 0x1

    .line 160
    const/4 v10, 0x0

    .line 161
    .local v10, installed:Z
    sget-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    invoke-static {p1, v0, p3}, Lcom/android/launcher2/InstallShortcutReceiver;->findEmptyCell(Landroid/content/Context;[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/LauncherApplication;

    .line 163
    .local v9, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    const-wide/16 v3, -0x64

    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v2, 0x0

    aget v6, v1, v2

    sget-object v1, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    aget v7, v1, v8

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;

    .line 166
    const/4 v10, 0x1

    .line 168
    .end local v9           #app:Lcom/android/launcher2/LauncherApplication;
    :cond_0
    return v10
.end method

.method private pkgCheck(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 205
    const/4 v11, 0x0

    .line 207
    .local v11, set:Z
    iget-object v1, p0, Lcom/android/launcher2/InstallShortcutReceiver;->pref2:Landroid/content/SharedPreferences;

    const-string v3, "replace"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 208
    .local v9, isReplaced:Z
    if-eqz v9, :cond_1

    .line 209
    const/4 v11, 0x1

    :cond_0
    move v1, v11

    .line 229
    :goto_0
    return v1

    .line 212
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 213
    .local v8, compName:Landroid/content/ComponentName;
    if-nez v8, :cond_2

    move v1, v5

    .line 214
    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 216
    .local v10, pkgName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/LauncherApplication;

    .line 217
    .local v6, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 220
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "pkgName=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v10, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 224
    .local v7, c:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    const/4 v11, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "data"

    .prologue
    .line 58
    const-string v16, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 59
    .local v11, name:Ljava/lang/String;
    const-string v16, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 60
    .local v6, intent:Landroid/content/Intent;
    const/4 v8, 0x0

    .line 62
    .local v8, isSecretShortcut:Z
    const/4 v9, 0x0

    .line 63
    .local v9, mExtraApp:Z
    const-string v16, "ExtraStuff"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/InstallShortcutReceiver;->pref2:Landroid/content/SharedPreferences;

    .line 65
    const-string v16, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    if-eqz v6, :cond_0

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    if-gtz v16, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_2

    .line 70
    const-string v16, "android.intent.action.VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    :cond_2
    const-string v16, "duplicate"

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 77
    .local v3, duplicate:Z
    if-nez v3, :cond_4

    move-object/from16 v0, p1

    invoke-static {v0, v11, v6}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 78
    const v16, 0x7f0e001d

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, msg:Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f09000a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 136
    .local v7, isLightTheme:Z
    if-eqz v7, :cond_3

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x1030132

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->setTheme(I)V

    .line 150
    :cond_3
    if-eqz v9, :cond_c

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/InstallShortcutReceiver;->pref2:Landroid/content/SharedPreferences;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    const-string v17, "replace"

    const/16 v18, 0x0

    invoke-interface/range {v16 .. v18}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 80
    .end local v7           #isLightTheme:Z
    .end local v10           #msg:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v13

    .line 81
    .local v13, screen:I
    const/4 v5, 0x0

    .line 87
    .local v5, installed:Z
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 88
    .local v12, res:Landroid/content/res/Resources;
    const v16, 0x7f0a001d

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    sput v16, Lcom/android/launcher2/InstallShortcutReceiver;->mCountX:I

    .line 89
    const v16, 0x7f0a001e

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    sput v16, Lcom/android/launcher2/InstallShortcutReceiver;->mCountY:I

    .line 91
    if-eqz v8, :cond_6

    .line 92
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v14

    .line 93
    .local v14, screenCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v14, :cond_a

    if-nez v5, :cond_a

    .line 94
    if-eq v4, v13, :cond_5

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v5

    .line 93
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 99
    .end local v4           #i:I
    .end local v14           #screenCount:I
    :cond_6
    const/4 v15, 0x0

    .line 100
    .local v15, startIndex:I
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v14

    .line 108
    .restart local v14       #screenCount:I
    if-eqz v6, :cond_7

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcom/android/launcher2/InstallShortcutReceiver;->pkgCheck(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    .line 110
    :cond_7
    if-eqz v9, :cond_9

    .line 111
    const/4 v5, 0x1

    .line 117
    :goto_3
    if-nez v5, :cond_a

    .line 119
    move v4, v15

    .restart local v4       #i:I
    :goto_4
    if-ge v4, v14, :cond_a

    if-nez v5, :cond_a

    .line 120
    if-eq v4, v13, :cond_8

    .line 121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v5

    .line 119
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 114
    .end local v4           #i:I
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v13}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v5

    goto :goto_3

    .line 126
    .end local v15           #startIndex:I
    :cond_a
    if-eqz v5, :cond_b

    .line 127
    const v16, 0x7f0e001b

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #msg:Ljava/lang/String;
    goto/16 :goto_1

    .line 130
    .end local v10           #msg:Ljava/lang/String;
    :cond_b
    const v16, 0x7f0e001a

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #msg:Ljava/lang/String;
    goto/16 :goto_1

    .line 154
    .end local v5           #installed:Z
    .end local v12           #res:Landroid/content/res/Resources;
    .end local v13           #screen:I
    .end local v14           #screenCount:I
    .restart local v7       #isLightTheme:Z
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v10, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
