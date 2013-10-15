.class public Lcom/android/launcher2/XmlBackup;
.super Landroid/content/BroadcastReceiver;
.source "XmlBackup.java"


# static fields
.field private static final HOMESCREEN_BACKUP_EXML:Ljava/lang/String; = "/homescreen.exml"

.field private static final REQUEST_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

.field private static final REQUEST_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_HOMESCREEN"

.field private static final RESPONSE_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_BACKUP_HOMESCREEN"

.field private static final RESPONSE_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_RESTORE_HOMESCREEN"

.field private static final TAG:Ljava/lang/String; = "HomeScreenXmlBackup"

.field private static cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "mContext"
    .parameter "path"
    .parameter "source"
    .parameter "saveKey"

    .prologue
    .line 391
    new-instance v5, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/homescreen.exml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v5, file:Ljava/io/File;
    const/4 v12, 0x0

    .line 394
    .local v12, result:I
    const/4 v3, 0x0

    .line 395
    .local v3, err_code:I
    const/4 v8, 0x0

    .line 398
    .local v8, key:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 404
    :goto_0
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v13, v8}, Lcom/android/launcher2/XmlBackup;->decryptStream(Ljava/io/InputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 407
    .local v6, fileis:Ljava/io/InputStream;
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 408
    .local v4, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 409
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v13, "utf-8"

    invoke-interface {v9, v6, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    .line 412
    .local v1, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v10

    .line 413
    .local v10, provider:Lcom/android/launcher2/LauncherProvider;
    invoke-virtual {v10, v9}, Lcom/android/launcher2/LauncherProvider;->restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 415
    new-instance v7, Landroid/content/Intent;

    const-string v13, "com.android.launcher.action.ACTION_HOME_RESTORE"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 424
    .end local v1           #app:Lcom/android/launcher2/LauncherApplication;
    .end local v4           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #provider:Lcom/android/launcher2/LauncherProvider;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 431
    .end local v6           #fileis:Ljava/io/InputStream;
    :goto_2
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    .line 432
    new-instance v11, Landroid/content/Intent;

    const-string v13, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMESCREEN"

    invoke-direct {v11, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v11, restore_homescreen:Landroid/content/Intent;
    const-string v13, "RESULT"

    invoke-virtual {v11, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 434
    const-string v13, "ERR_CODE"

    invoke-virtual {v11, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    const-string v13, "REQ_SIZE"

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-virtual {v11, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const-string v13, "SOURCE"

    move-object/from16 v0, p3

    invoke-virtual {v11, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 439
    return-void

    .line 399
    .end local v11           #restore_homescreen:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 400
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 418
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #fileis:Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 419
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v12, 0x1

    .line 420
    const/4 v3, 0x1

    .line 421
    :try_start_4
    const-string v13, "HomeScreenXmlBackup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DB Input exception = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 425
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #fileis:Ljava/io/InputStream;
    :catch_2
    move-exception v2

    .line 426
    .restart local v2       #e:Ljava/lang/Exception;
    const/4 v12, 0x1

    .line 427
    const/4 v3, 0x2

    .line 428
    const-string v13, "HomeScreenXmlBackup"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "file exception = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 6
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 445
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 446
    .local v0, digest:Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 447
    const/16 v3, 0x10

    new-array v2, v3, [B

    .line 448
    .local v2, keyBytes:[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v2

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    .line 451
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 453
    .local v1, key:Ljavax/crypto/spec/SecretKeySpec;
    return-object v1
.end method

.method private XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 49
    .parameter "mContext"
    .parameter "path"
    .parameter "source"
    .parameter "saveKey"

    .prologue
    .line 82
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .local v18, dir:Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 84
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->mkdirs()Z

    .line 86
    :cond_0
    new-instance v37, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/homescreen.exml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v37, saveFile:Ljava/io/File;
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    :try_start_0
    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :cond_1
    :goto_0
    const/16 v36, 0x0

    .line 97
    .local v36, result:I
    const/16 v21, 0x0

    .line 98
    .local v21, err_code:I
    const/16 v31, 0x0

    .line 100
    .local v31, key:Ljavax/crypto/spec/SecretKeySpec;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v47

    .line 101
    .local v47, widgets:Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 102
    .local v2, cr:Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 105
    .local v16, com:Landroid/content/ComponentName;
    :try_start_1
    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v31

    .line 111
    :goto_1
    :try_start_2
    new-instance v48, Ljava/io/StringWriter;

    invoke-direct/range {v48 .. v48}, Ljava/io/StringWriter;-><init>()V

    .line 112
    .local v48, writer:Ljava/io/StringWriter;
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, v37

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v31

    invoke-static {v3, v0}, Lcom/android/launcher2/XmlBackup;->encryptStream(Ljava/io/OutputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/OutputStream;

    move-result-object v32

    .line 115
    .local v32, newfos:Ljava/io/OutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v41

    .line 116
    .local v41, serializer:Lorg/xmlpull/v1/XmlSerializer;
    if-nez v41, :cond_2

    .line 117
    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "serializer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 120
    :cond_2
    :try_start_3
    const-string v3, "UTF-8"

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 121
    const-string v3, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 124
    const/4 v3, 0x0

    const-string v4, "PageCount"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "screencount"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v39

    .line 127
    .local v39, screenCount:I
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const/4 v3, 0x0

    const-string v4, "PageCount"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    const/4 v3, 0x0

    const-string v4, "ScreenIndex"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    const-string v3, "com.android.launcher2.prefs"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "homescreenindex"

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v40

    .line 134
    .local v40, screenIndex:I
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const/4 v3, 0x0

    const-string v4, "ScreenIndex"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, -0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 141
    .local v12, c:Landroid/database/Cursor;
    if-nez v12, :cond_3

    .line 143
    const/16 v36, 0x1

    .line 144
    const/16 v21, 0x1

    .line 145
    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "fail to open Favorites cursor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 360
    .end local v12           #c:Landroid/database/Cursor;
    .end local v39           #screenCount:I
    .end local v40           #screenIndex:I
    :goto_2
    :try_start_4
    new-instance v28, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v48 .. v48}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 361
    .local v28, in:Ljava/io/InputStream;
    new-instance v10, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v28

    invoke-direct {v10, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 363
    .local v10, bis:Ljava/io/BufferedInputStream;
    const/16 v35, 0x0

    .line 364
    .local v35, readcount:I
    const/16 v3, 0x400

    new-array v11, v3, [B

    .line 365
    .local v11, buffer:[B
    :goto_3
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v10, v11, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v35

    const/4 v3, -0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_23

    .line 366
    const/4 v3, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v11, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    .line 369
    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .end local v11           #buffer:[B
    .end local v28           #in:Ljava/io/InputStream;
    .end local v32           #newfos:Ljava/io/OutputStream;
    .end local v35           #readcount:I
    .end local v41           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v48           #writer:Ljava/io/StringWriter;
    :catch_0
    move-exception v19

    .line 370
    .local v19, e:Ljava/lang/RuntimeException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 371
    const/16 v36, 0x1

    .line 372
    const/16 v21, 0x2

    .line 373
    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "RuntimeException occured"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .end local v19           #e:Ljava/lang/RuntimeException;
    :goto_4
    new-instance v9, Landroid/content/Intent;

    const-string v3, "com.sec.android.intent.action.RESPONSE_BACKUP_HOMESCREEN"

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v9, backup_homecreen:Landroid/content/Intent;
    const-string v3, "RESULT"

    move/from16 v0, v36

    invoke-virtual {v9, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const-string v3, "ERR_CODE"

    move/from16 v0, v21

    invoke-virtual {v9, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v3, "REQ_SIZE"

    invoke-virtual/range {v37 .. v37}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v9, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v3, "SOURCE"

    move-object/from16 v0, p3

    invoke-virtual {v9, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    return-void

    .line 90
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v9           #backup_homecreen:Landroid/content/Intent;
    .end local v16           #com:Landroid/content/ComponentName;
    .end local v21           #err_code:I
    .end local v31           #key:Ljavax/crypto/spec/SecretKeySpec;
    .end local v36           #result:I
    .end local v47           #widgets:Landroid/appwidget/AppWidgetManager;
    :catch_1
    move-exception v20

    .line 92
    .local v20, e1:Ljava/io/IOException;
    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 106
    .end local v20           #e1:Ljava/io/IOException;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v16       #com:Landroid/content/ComponentName;
    .restart local v21       #err_code:I
    .restart local v31       #key:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v36       #result:I
    .restart local v47       #widgets:Landroid/appwidget/AppWidgetManager;
    :catch_2
    move-exception v19

    .line 107
    .local v19, e:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 148
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v32       #newfos:Ljava/io/OutputStream;
    .restart local v39       #screenCount:I
    .restart local v40       #screenIndex:I
    .restart local v41       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v48       #writer:Ljava/io/StringWriter;
    :cond_3
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 149
    const/4 v3, 0x0

    const-string v4, "home"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    :cond_4
    const-string v3, "_id"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 152
    .local v27, id:I
    const-string v3, "itemType"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 153
    .local v30, itemType:I
    const-string v3, "screen"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    .line 154
    .local v38, screen:Ljava/lang/String;
    const-string v3, "cellX"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 155
    .local v13, cellX:Ljava/lang/String;
    const-string v3, "cellY"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 156
    .local v14, cellY:Ljava/lang/String;
    const-string v3, "spanX"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    .line 157
    .local v42, spanX:Ljava/lang/String;
    const-string v3, "spanY"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v43

    .line 158
    .local v43, spanY:Ljava/lang/String;
    const-string v3, "intent"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 159
    .local v29, intent:Ljava/lang/String;
    const-string v3, "title"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 160
    .local v46, title:Ljava/lang/String;
    const-string v3, "appWidgetId"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result v8

    .line 162
    .local v8, appwidgetID:I
    if-eqz v29, :cond_5

    .line 163
    const/16 v28, 0x0

    .line 165
    .local v28, in:Landroid/content/Intent;
    const/4 v3, 0x0

    :try_start_6
    move-object/from16 v0, v29

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result-object v28

    .line 169
    :try_start_7
    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 171
    .end local v28           #in:Landroid/content/Intent;
    :cond_5
    const/4 v15, 0x0

    .line 172
    .local v15, className:Ljava/lang/String;
    const/16 v33, 0x0

    .line 173
    .local v33, packageName:Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 174
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 175
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v33

    .line 178
    :cond_6
    const/16 v44, 0x0

    .line 179
    .local v44, tag:Ljava/lang/String;
    sparse-switch v30, :sswitch_data_0

    .line 211
    :cond_7
    :goto_5
    if-eqz v44, :cond_11

    .line 212
    const/4 v3, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    if-eqz v15, :cond_8

    .line 215
    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    :cond_8
    if-eqz v33, :cond_9

    .line 217
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    :cond_9
    if-eqz v38, :cond_a

    .line 219
    const/4 v3, 0x0

    const-string v4, "screen"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    :cond_a
    if-eqz v46, :cond_b

    .line 221
    const/4 v3, 0x0

    const-string v4, "title"

    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    :cond_b
    if-eqz v13, :cond_c

    .line 223
    const/4 v3, 0x0

    const-string v4, "x"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :cond_c
    if-eqz v14, :cond_d

    .line 225
    const/4 v3, 0x0

    const-string v4, "y"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    :cond_d
    if-eqz v42, :cond_e

    .line 227
    const/4 v3, 0x0

    const-string v4, "spanX"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    :cond_e
    if-eqz v43, :cond_f

    .line 229
    const/4 v3, 0x0

    const-string v4, "spanY"

    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 231
    :cond_f
    const/16 v3, 0x384

    move/from16 v0, v30

    if-ne v0, v3, :cond_1a

    .line 232
    if-eqz v29, :cond_10

    .line 233
    const/16 v28, 0x0

    .line 235
    .restart local v28       #in:Landroid/content/Intent;
    const/4 v3, 0x0

    :try_start_8
    move-object/from16 v0, v29

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_8
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    move-result-object v28

    .line 239
    :try_start_9
    const-string v3, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 240
    .local v45, themeName:Ljava/lang/String;
    if-eqz v45, :cond_10

    .line 241
    const/4 v3, 0x0

    const-string v4, "themeName"

    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    .end local v28           #in:Landroid/content/Intent;
    .end local v45           #themeName:Ljava/lang/String;
    :cond_10
    :goto_6
    const/4 v3, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 289
    .end local v15           #className:Ljava/lang/String;
    .end local v33           #packageName:Ljava/lang/String;
    .end local v44           #tag:Ljava/lang/String;
    :cond_11
    :goto_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 291
    const/4 v3, 0x0

    const-string v4, "home"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    .end local v8           #appwidgetID:I
    .end local v13           #cellX:Ljava/lang/String;
    .end local v14           #cellY:Ljava/lang/String;
    .end local v27           #id:I
    .end local v29           #intent:Ljava/lang/String;
    .end local v30           #itemType:I
    .end local v38           #screen:Ljava/lang/String;
    .end local v42           #spanX:Ljava/lang/String;
    .end local v43           #spanY:Ljava/lang/String;
    .end local v46           #title:Ljava/lang/String;
    :goto_8
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, -0x65

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 303
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 304
    const/4 v3, 0x0

    const-string v4, "hotseat"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    :cond_12
    const-string v3, "itemType"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 307
    .restart local v30       #itemType:I
    const-string v3, "screen"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    .line 308
    .restart local v38       #screen:Ljava/lang/String;
    const-string v3, "intent"

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result-object v29

    .line 310
    .restart local v29       #intent:Ljava/lang/String;
    if-eqz v29, :cond_13

    .line 311
    const/16 v28, 0x0

    .line 313
    .restart local v28       #in:Landroid/content/Intent;
    const/4 v3, 0x0

    :try_start_a
    move-object/from16 v0, v29

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    move-result-object v28

    .line 317
    :try_start_b
    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 319
    .end local v28           #in:Landroid/content/Intent;
    :cond_13
    const/4 v15, 0x0

    .line 320
    .restart local v15       #className:Ljava/lang/String;
    const/16 v33, 0x0

    .line 321
    .restart local v33       #packageName:Ljava/lang/String;
    if-eqz v16, :cond_14

    .line 322
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 323
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v33

    .line 326
    :cond_14
    if-nez v30, :cond_18

    .line 327
    const/4 v3, 0x0

    const-string v4, "favorite"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    if-eqz v15, :cond_15

    .line 329
    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 330
    :cond_15
    if-eqz v33, :cond_16

    .line 331
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 332
    :cond_16
    if-eqz v38, :cond_17

    .line 333
    const/4 v3, 0x0

    const-string v4, "screen"

    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 334
    :cond_17
    const/4 v3, 0x0

    const-string v4, "favorite"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    .end local v15           #className:Ljava/lang/String;
    .end local v33           #packageName:Ljava/lang/String;
    :cond_18
    :goto_9
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_12

    .line 339
    const/4 v3, 0x0

    const-string v4, "hotseat"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 342
    .end local v29           #intent:Ljava/lang/String;
    .end local v30           #itemType:I
    .end local v38           #screen:Ljava/lang/String;
    :cond_19
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 344
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 345
    invoke-interface/range {v41 .. v41}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_2

    .line 348
    .end local v12           #c:Landroid/database/Cursor;
    .end local v39           #screenCount:I
    .end local v40           #screenIndex:I
    :catch_3
    move-exception v19

    .line 349
    .local v19, e:Ljava/lang/RuntimeException;
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 350
    const/16 v36, 0x1

    .line 351
    const/16 v21, 0x1

    .line 352
    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "RuntimeException occured"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_2

    .line 374
    .end local v19           #e:Ljava/lang/RuntimeException;
    .end local v32           #newfos:Ljava/io/OutputStream;
    .end local v41           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v48           #writer:Ljava/io/StringWriter;
    :catch_4
    move-exception v19

    .line 375
    .local v19, e:Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    const/16 v36, 0x1

    .line 377
    const/16 v21, 0x2

    .line 378
    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "File error occured"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 166
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v8       #appwidgetID:I
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v13       #cellX:Ljava/lang/String;
    .restart local v14       #cellY:Ljava/lang/String;
    .restart local v27       #id:I
    .restart local v28       #in:Landroid/content/Intent;
    .restart local v29       #intent:Ljava/lang/String;
    .restart local v30       #itemType:I
    .restart local v32       #newfos:Ljava/io/OutputStream;
    .restart local v38       #screen:Ljava/lang/String;
    .restart local v39       #screenCount:I
    .restart local v40       #screenIndex:I
    .restart local v41       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v42       #spanX:Ljava/lang/String;
    .restart local v43       #spanY:Ljava/lang/String;
    .restart local v46       #title:Ljava/lang/String;
    .restart local v48       #writer:Ljava/io/StringWriter;
    :catch_5
    move-exception v19

    .line 167
    .local v19, e:Ljava/net/URISyntaxException;
    goto/16 :goto_7

    .line 181
    .end local v19           #e:Ljava/net/URISyntaxException;
    .end local v28           #in:Landroid/content/Intent;
    .restart local v15       #className:Ljava/lang/String;
    .restart local v33       #packageName:Ljava/lang/String;
    .restart local v44       #tag:Ljava/lang/String;
    :sswitch_0
    :try_start_d
    const-string v44, "favorite"

    .line 182
    goto/16 :goto_5

    .line 184
    :sswitch_1
    const-string v44, "shortcut"

    .line 185
    goto/16 :goto_5

    .line 187
    :sswitch_2
    const-string v44, "appwidget"

    .line 188
    move-object/from16 v0, v47

    invoke-virtual {v0, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v34

    .line 189
    .local v34, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v34, :cond_7

    .line 190
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 191
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v33

    .line 192
    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v46, v0

    goto/16 :goto_5

    .line 197
    .end local v34           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_3
    const-string v44, "sactivitywidget"

    .line 198
    goto/16 :goto_5

    .line 200
    :sswitch_4
    const-string v44, "folder"

    .line 201
    goto/16 :goto_5

    .line 236
    .restart local v28       #in:Landroid/content/Intent;
    :catch_6
    move-exception v19

    .line 237
    .restart local v19       #e:Ljava/net/URISyntaxException;
    goto/16 :goto_7

    .line 244
    .end local v19           #e:Ljava/net/URISyntaxException;
    .end local v28           #in:Landroid/content/Intent;
    :cond_1a
    const/4 v3, 0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_1b

    .line 245
    const/4 v3, 0x0

    const-string v4, "uri"

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_6

    .line 353
    .end local v8           #appwidgetID:I
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #cellX:Ljava/lang/String;
    .end local v14           #cellY:Ljava/lang/String;
    .end local v15           #className:Ljava/lang/String;
    .end local v27           #id:I
    .end local v29           #intent:Ljava/lang/String;
    .end local v30           #itemType:I
    .end local v33           #packageName:Ljava/lang/String;
    .end local v38           #screen:Ljava/lang/String;
    .end local v39           #screenCount:I
    .end local v40           #screenIndex:I
    .end local v42           #spanX:Ljava/lang/String;
    .end local v43           #spanY:Ljava/lang/String;
    .end local v44           #tag:Ljava/lang/String;
    .end local v46           #title:Ljava/lang/String;
    :catch_7
    move-exception v19

    .line 354
    .local v19, e:Ljava/lang/Exception;
    :try_start_e
    const-string v3, "HomeScreenXmlBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/16 v36, 0x1

    .line 356
    const/16 v21, 0x1

    .line 357
    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "Error occured while generate XML"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_2

    .line 248
    .end local v19           #e:Ljava/lang/Exception;
    .restart local v8       #appwidgetID:I
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v13       #cellX:Ljava/lang/String;
    .restart local v14       #cellY:Ljava/lang/String;
    .restart local v15       #className:Ljava/lang/String;
    .restart local v27       #id:I
    .restart local v29       #intent:Ljava/lang/String;
    .restart local v30       #itemType:I
    .restart local v33       #packageName:Ljava/lang/String;
    .restart local v38       #screen:Ljava/lang/String;
    .restart local v39       #screenCount:I
    .restart local v40       #screenIndex:I
    .restart local v42       #spanX:Ljava/lang/String;
    .restart local v43       #spanY:Ljava/lang/String;
    .restart local v44       #tag:Ljava/lang/String;
    .restart local v46       #title:Ljava/lang/String;
    :cond_1b
    const/4 v3, 0x2

    move/from16 v0, v30

    if-ne v0, v3, :cond_10

    .line 249
    :try_start_f
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 253
    .local v22, folder:Landroid/database/Cursor;
    :goto_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 254
    const/4 v3, 0x0

    const-string v4, "favorite"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    const-string v3, "intent"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    move-result-object v24

    .line 256
    .local v24, folder_intent:Ljava/lang/String;
    const/16 v17, 0x0

    .line 257
    .local v17, comName:Landroid/content/ComponentName;
    const/16 v23, 0x0

    .local v23, folder_className:Ljava/lang/String;
    const/16 v25, 0x0

    .line 258
    .local v25, folder_packageName:Ljava/lang/String;
    if-eqz v24, :cond_1c

    .line 259
    const/16 v28, 0x0

    .line 261
    .restart local v28       #in:Landroid/content/Intent;
    const/4 v3, 0x0

    :try_start_10
    move-object/from16 v0, v24

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    move-result-object v28

    .line 265
    :try_start_11
    invoke-virtual/range {v28 .. v28}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    .line 268
    .end local v28           #in:Landroid/content/Intent;
    :cond_1c
    if-eqz v17, :cond_1d

    .line 269
    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    .line 270
    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    .line 272
    :cond_1d
    const-string v3, "screen"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    .line 275
    .local v26, folder_screen:Ljava/lang/String;
    if-eqz v23, :cond_1e

    .line 276
    const/4 v3, 0x0

    const-string v4, "className"

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    :cond_1e
    if-eqz v25, :cond_1f

    .line 278
    const/4 v3, 0x0

    const-string v4, "packageName"

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    :cond_1f
    if-eqz v26, :cond_20

    .line 280
    const/4 v3, 0x0

    const-string v4, "screen"

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-interface {v0, v3, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    :cond_20
    const/4 v3, 0x0

    const-string v4, "favorite"

    move-object/from16 v0, v41

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a

    .line 262
    .end local v26           #folder_screen:Ljava/lang/String;
    .restart local v28       #in:Landroid/content/Intent;
    :catch_8
    move-exception v19

    .line 263
    .local v19, e:Ljava/net/URISyntaxException;
    goto :goto_a

    .line 283
    .end local v17           #comName:Landroid/content/ComponentName;
    .end local v19           #e:Ljava/net/URISyntaxException;
    .end local v23           #folder_className:Ljava/lang/String;
    .end local v24           #folder_intent:Ljava/lang/String;
    .end local v25           #folder_packageName:Ljava/lang/String;
    .end local v28           #in:Landroid/content/Intent;
    :cond_21
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    .line 293
    .end local v8           #appwidgetID:I
    .end local v13           #cellX:Ljava/lang/String;
    .end local v14           #cellY:Ljava/lang/String;
    .end local v15           #className:Ljava/lang/String;
    .end local v22           #folder:Landroid/database/Cursor;
    .end local v27           #id:I
    .end local v29           #intent:Ljava/lang/String;
    .end local v30           #itemType:I
    .end local v33           #packageName:Ljava/lang/String;
    .end local v38           #screen:Ljava/lang/String;
    .end local v42           #spanX:Ljava/lang/String;
    .end local v43           #spanY:Ljava/lang/String;
    .end local v44           #tag:Ljava/lang/String;
    .end local v46           #title:Ljava/lang/String;
    :cond_22
    const/16 v36, 0x1

    .line 294
    const/16 v21, 0x3

    .line 295
    const-string v3, "HomeScreenXmlBackup"

    const-string v4, "There\'s no logs"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_8

    .line 314
    .restart local v28       #in:Landroid/content/Intent;
    .restart local v29       #intent:Ljava/lang/String;
    .restart local v30       #itemType:I
    .restart local v38       #screen:Ljava/lang/String;
    :catch_9
    move-exception v19

    .line 315
    .restart local v19       #e:Ljava/net/URISyntaxException;
    goto/16 :goto_9

    .line 368
    .end local v12           #c:Landroid/database/Cursor;
    .end local v19           #e:Ljava/net/URISyntaxException;
    .end local v29           #intent:Ljava/lang/String;
    .end local v30           #itemType:I
    .end local v38           #screen:Ljava/lang/String;
    .end local v39           #screenCount:I
    .end local v40           #screenIndex:I
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    .restart local v11       #buffer:[B
    .local v28, in:Ljava/io/InputStream;
    .restart local v35       #readcount:I
    :cond_23
    :try_start_12
    invoke-virtual/range {v32 .. v32}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    goto/16 :goto_4

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x4 -> :sswitch_2
        0x384 -> :sswitch_3
        0x385 -> :sswitch_3
    .end sparse-switch
.end method

.method public static decryptStream(Ljava/io/InputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/InputStream;
    .locals 4
    .parameter "in"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 474
    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 476
    .local v0, iv:[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 478
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 481
    .local v1, spec:Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 483
    new-instance v2, Ljavax/crypto/CipherInputStream;

    sget-object v3, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method public static encryptStream(Ljava/io/OutputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/OutputStream;
    .locals 4
    .parameter "out"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 459
    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 460
    .local v0, iv:[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 461
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 464
    .local v1, spec:Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 467
    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 469
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    sget-object v3, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "c"
    .parameter "in"

    .prologue
    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 60
    const-string v5, "SAVE_PATH"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, filepath:Ljava/lang/String;
    const-string v5, "SOURCE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, source:Ljava/lang/String;
    const-string v5, "SESSION_KEY"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, saveKey:Ljava/lang/String;
    const-string v5, "ACTION"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, reqAction:I
    const-string v5, "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "onReceive REQUEST_BACKUP_HOMESCREEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-nez v2, :cond_0

    .line 68
    invoke-direct {p0, p1, v1, v4, v3}, Lcom/android/launcher2/XmlBackup;->XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .end local v1           #filepath:Ljava/lang/String;
    .end local v2           #reqAction:I
    .end local v3           #saveKey:Ljava/lang/String;
    .end local v4           #source:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 70
    .restart local v1       #filepath:Ljava/lang/String;
    .restart local v2       #reqAction:I
    .restart local v3       #saveKey:Ljava/lang/String;
    .restart local v4       #source:Ljava/lang/String;
    :cond_1
    const-string v5, "com.sec.android.intent.action.REQUEST_RESTORE_HOMESCREEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 71
    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "onReceive REQUEST_RESTORE_HOMESCREEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez v2, :cond_0

    .line 73
    invoke-direct {p0, p1, v1, v4, v3}, Lcom/android/launcher2/XmlBackup;->RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v1           #filepath:Ljava/lang/String;
    .end local v2           #reqAction:I
    .end local v3           #saveKey:Ljava/lang/String;
    .end local v4           #source:Ljava/lang/String;
    :cond_2
    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "onReceive Action value is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
