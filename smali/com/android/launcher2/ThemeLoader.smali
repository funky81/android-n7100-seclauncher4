.class public Lcom/android/launcher2/ThemeLoader;
.super Ljava/lang/Object;
.source "ThemeLoader.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUGGABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "ThemeLoader"

.field private static final THIRD_APP_SCALE_RATE:F = 0.75f

.field private static THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

.field private static final mAppIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPaint:Landroid/graphics/Paint;

.field private static final mSamsungWidgetPreviewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mWidgetPreviewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIconHeight:I

.field private static sIconWidth:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsUseDefaultTheme:Z

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 38
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/ThemeLoader;->DEBUGGABLE:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    .line 52
    sput v1, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    .line 53
    sput v1, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v5, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    .line 61
    iput-object p1, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    .line 62
    new-instance v3, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v3, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    .line 64
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "current_sec_theme_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, themePackageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    :cond_0
    iput-boolean v5, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    .line 88
    :goto_0
    return-void

    .line 69
    :cond_1
    iput-boolean v6, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 72
    .local v1, resources:Landroid/content/res/Resources;
    const v3, 0x7f0c003e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    sput v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sput v3, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    .line 74
    const-string v3, "ic_01_3rd_party_icon"

    invoke-virtual {p0, v3}, Lcom/android/launcher2/ThemeLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 75
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 76
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    .line 79
    :cond_2
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    sput-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    .line 80
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 82
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 84
    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initAppIconMap()V

    .line 85
    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initWidgetPreviewMap()V

    .line 86
    invoke-direct {p0}, Lcom/android/launcher2/ThemeLoader;->initSamsungWidgetPreviewMap()V

    goto :goto_0
.end method

.method private initAppIconMap()V
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.servicecentre.ServiceCentreActivity"

    const-string v2, "ic_02_servicecenter_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.groupcast.start.StartActivity"

    const-string v2, "ic_04_group_play_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.bst.ncr.CardListActivity"

    const-string v2, "ic_05_business_card_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.moreservices.moreservices"

    const-string v2, "ic_06_more_service_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.bst.sync.ui.SyncActivity"

    const-string v2, "ic_07_back_up_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.gallery3d.app.Gallery"

    const-string v2, "ic_08_gallery_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.translator.MainActivity"

    const-string v2, "ic_09_s_translator_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.helphub.HelpHubActivity"

    const-string v2, "ic_10_help_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.clockpackage.ClockPackage"

    const-string v2, "ic_11_clock_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.settings.Settings"

    const-string v2, "ic_12_setting_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.vlingo.midas.gui.ConversationActivity"

    const-string v2, "ic_13_s_voice_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.snote.control.ui.filemanager.MainHomeActivity"

    const-string v2, "ic_14_s_note_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.music.MusicActionTabActivity"

    const-string v2, "ic_15_music_player_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_16_music_hub_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_17_video_hub_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.everglades.video.VideoMain"

    const-string v2, "ic_18_video_player_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.episodes.ui.timeline.TimelineActivity"

    const-string v2, "ic_19_story_album_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.providers.downloads.ui.DownloadList"

    const-string v2, "ic_20_download_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.contacts.RecntcallEntryActivity"

    const-string v2, "ic_21_call_log_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.voicenote.main.VNMainActivity"

    const-string v2, "ic_22_voice_recoder_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.myfiles.MainActivity"

    const-string v2, "ic_23_myfile_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, ""

    const-string v2, "ic_24_fm_radio_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.email.activity.Welcome"

    const-string v2, "ic_25_email_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.searchbox.SearchActivity"

    const-string v2, "ic_26_search_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.autonavi.xmgd.navigator.keyboard.Start"

    const-string v2, "ic_27_navigation_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.ocr.OCR"

    const-string v2, "ic_28_optical_reader_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.popupcalculator.Calculator"

    const-string v2, "ic_29_calculator_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.q1_penmemo.MemoListActivity"

    const-string v2, "ic_30_s_memo_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.calendar.AllInOneActivity"

    const-string v2, "ic_31_calender_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.Camera"

    const-string v2, "ic_32_camera_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.firewall.VIPMainActivity"

    const-string v2, "ic_34_vipmode_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.security.mms.ui.PasswordActivity"

    const-string v2, "ic_35_security_mail_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    const-string v2, "ic_36_phone_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.contacts.activities.PeopleActivity"

    const-string v2, "ic_37_contact_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.android.mms.ui.ConversationComposer"

    const-string v2, "ic_38_message_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    const-string v2, "ic_39_internet_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.sbrowser.OfflinePageActivity"

    const-string v2, "ic_39_internet_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.themechooser.ThemeListActivity"

    const-string v2, "ic_41_theme_icon"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method private initSamsungWidgetPreviewMap()V
    .locals 3

    .prologue
    .line 242
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 244
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget/Today_mini"

    const-string v2, "widget_preview_minitoday"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget/Month"

    const-string v2, "widget_preview_month"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method private initWidgetPreviewMap()V
    .locals 3

    .prologue
    .line 195
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 197
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.alarmwidget"

    const-string v2, "widget_alarm_preview_01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.dualclockdigital"

    const-string v2, "dual_cn_1_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    const-string v2, "single_a_cn_4x1_24"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.digitalclock2x1"

    const-string v2, "single_a_cn_2x1_12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.music"

    const-string v2, "home_musicplayer_preview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.videoplayer"

    const-string v2, "videoplayer_preview"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.analogclocksimple"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.widgetapp.analogclockunique"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "drawableId"

    .prologue
    .line 299
    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    .line 300
    const/4 v0, 0x0

    .line 309
    :goto_0
    return-object v0

    .line 302
    :cond_0
    const/4 v0, 0x0

    .line 304
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitmap( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getColor(Ljava/lang/String;)I
    .locals 5
    .parameter "colorId"

    .prologue
    .line 313
    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 322
    :goto_0
    return v0

    .line 316
    :cond_0
    const/4 v0, 0x0

    .line 318
    .local v0, color:I
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemColor(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getColor( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "drawableId"

    .prologue
    .line 285
    iget-boolean v2, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v2, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 295
    :goto_0
    return-object v0

    .line 288
    :cond_0
    const/4 v0, 0x0

    .line 290
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "ThemeLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "textId"

    .prologue
    .line 326
    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_0

    .line 327
    const/4 v2, 0x0

    .line 335
    :goto_0
    return-object v2

    .line 329
    :cond_0
    const/4 v2, 0x0

    .line 331
    .local v2, text:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v1

    .line 333
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getText( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isUseDefaultTheme()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    return v0
.end method

.method public load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmap"

    .prologue
    const/high16 v6, 0x3f40

    const/4 v5, 0x0

    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 158
    :cond_0
    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 159
    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 161
    .local v1, canvas:Landroid/graphics/Canvas;
    sget-object v2, Lcom/android/launcher2/ThemeLoader;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 162
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 163
    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 164
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 165
    sget v2, Lcom/android/launcher2/ThemeLoader;->sIconWidth:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/android/launcher2/ThemeLoader;->sIconHeight:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 166
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_1
    move-object v0, p1

    .line 170
    goto :goto_0
.end method

.method public loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "appName"

    .prologue
    .line 134
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    .line 135
    :cond_0
    const/4 v3, 0x0

    .line 151
    :cond_1
    :goto_0
    return-object v3

    .line 137
    :cond_2
    const/4 v3, 0x0

    .line 138
    .local v3, newIcon:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 140
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mAppIconMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, iconId:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    :goto_1
    if-eqz v1, :cond_1

    .line 148
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadAppIconBitmap( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "drawableId"

    .prologue
    .line 175
    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_1

    .line 176
    const/4 v2, 0x0

    .line 191
    :cond_0
    :goto_0
    return-object v2

    .line 178
    :cond_1
    const/4 v2, 0x0

    .line 179
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 182
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 187
    :goto_1
    if-eqz v0, :cond_0

    .line 188
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadIconDrawable( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public loadSamsungWidgetPreviewBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "widgetPackageName"
    .parameter "widgetThemeName"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    .line 268
    :cond_0
    const/4 v0, 0x0

    .line 281
    :cond_1
    :goto_0
    return-object v0

    .line 270
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, componentName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 273
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    .local v2, drawableId:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v3

    .line 278
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSamsungWidgetPreviewBitmap( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadSamsungWidgetPreviewDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "widgetPackageName"
    .parameter "widgetThemeName"

    .prologue
    .line 249
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v4, :cond_2

    .line 250
    :cond_0
    const/4 v1, 0x0

    .line 263
    :cond_1
    :goto_0
    return-object v1

    .line 252
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, componentName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 255
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    sget-object v4, Lcom/android/launcher2/ThemeLoader;->mSamsungWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .local v2, drawableId:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v4, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 259
    :catch_0
    move-exception v3

    .line 260
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ThemeLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadSamsungWidgetPreviewDrawable( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) failed! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadWidgetPreviewBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "widgetPackageName"

    .prologue
    .line 225
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_2

    .line 226
    :cond_0
    const/4 v0, 0x0

    .line 238
    :cond_1
    :goto_0
    return-object v0

    .line 228
    :cond_2
    const/4 v0, 0x0

    .line 230
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 231
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    .local v1, drawableId:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadWidgetPreviewBitmap( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public loadWidgetPreviewDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "widgetPackageName"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/ThemeLoader;->mIsUseDefaultTheme:Z

    if-eqz v3, :cond_2

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 221
    :cond_1
    :goto_0
    return-object v0

    .line 211
    :cond_2
    const/4 v0, 0x0

    .line 213
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 214
    sget-object v3, Lcom/android/launcher2/ThemeLoader;->mWidgetPreviewMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    .local v1, drawableId:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/ThemeLoader;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "ThemeLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadWidgetPreviewImageDrawable( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) failed! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
