.class public Lcom/android/launcher2/FolderIconHelper;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderIconHelper$AppIconData;,
        Lcom/android/launcher2/FolderIconHelper$LocFolder;
    }
.end annotation


# static fields
.field private static CENTER_ALIGN_VAL:I

.field private static DEBUG:Z

.field private static FOLDER_ANIMATION_SCALE:I

.field private static final FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

.field private static final FOLDER_ICON_PAINT:Landroid/graphics/Paint;

.field private static RIGHT_ALIGN_VAL:I

.field private static mTmpCord:[F

.field private static sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

.field private static sDebugColors:[I

.field private static sDirections_land:[[[I

.field private static sDirections_port:[[[I

.field private static sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

.field private static sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 31
    const/high16 v0, -0x8000

    sput v0, Lcom/android/launcher2/FolderIconHelper;->CENTER_ALIGN_VAL:I

    .line 32
    const/high16 v0, -0x8000

    sput v0, Lcom/android/launcher2/FolderIconHelper;->RIGHT_ALIGN_VAL:I

    .line 33
    const/high16 v0, -0x8000

    sput v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    .line 43
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    .line 45
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 47
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 48
    new-array v0, v5, [F

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->mTmpCord:[F

    .line 110
    sput-boolean v6, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    .line 111
    new-array v0, v9, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sDebugColors:[I

    .line 233
    const/4 v0, 0x7

    new-array v0, v0, [[[I

    new-array v1, v7, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v9, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_10

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_11

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_12

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_13

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_14

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_16

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_17

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_18

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_19

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_1a

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_1b

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_1c

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sDirections_port:[[[I

    .line 243
    const/4 v0, 0x7

    new-array v0, v0, [[[I

    new-array v1, v7, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1d

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1e

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_1f

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_20

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_21

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_22

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v9, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_23

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_24

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_25

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_26

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_27

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_28

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_29

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_2a

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_2b

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_2c

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_2d

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_2e

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_2f

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_30

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_31

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_32

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_33

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_34

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_35

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_36

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_37

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_38

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sDirections_land:[[[I

    return-void

    .line 111
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
    .end array-data

    .line 233
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfdt 0xfft 0xfft 0xfft
    .end array-data

    :array_f
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
    .end array-data

    :array_10
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfdt 0xfft 0xfft 0xfft
    .end array-data

    :array_14
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
    .end array-data

    :array_15
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfat 0xfft 0xfft 0xfft
    .end array-data

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0xfet 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0xfdt 0xfft 0xfft 0xfft
    .end array-data

    :array_1a
    .array-data 0x4
        0xfbt 0xfft 0xfft 0xfft
        0xfdt 0xfft 0xfft 0xfft
    .end array-data

    :array_1b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfat 0xfft 0xfft 0xfft
    .end array-data

    :array_1c
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0xfat 0xfft 0xfft 0xfft
    .end array-data

    .line 243
    :array_1d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_1e
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0xfct 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_23
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_25
    .array-data 0x4
        0xfct 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_26
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_27
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_28
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_29
    .array-data 0x4
        0xfct 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2a
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_2b
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_2c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2d
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2e
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2f
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_30
    .array-data 0x4
        0xf7t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_31
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_32
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_33
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_34
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_35
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0xf7t 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_37
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfet 0xfft 0xfft 0xfft
    .end array-data

    :array_38
    .array-data 0x4
        0xfdt 0xfft 0xfft 0xfft
        0xfet 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/launcher2/FolderIconHelper;->CENTER_ALIGN_VAL:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/android/launcher2/FolderIconHelper;->RIGHT_ALIGN_VAL:I

    return v0
.end method

.method static createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "folderIcon"
    .parameter "info"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "folderIcon"
    .parameter "info"
    .parameter "hiddenItem"

    .prologue
    .line 67
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->sort()V

    .line 68
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    .line 73
    .local v1, childCount:I
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, tempBitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 80
    iget-object v2, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 81
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconHelper$AppIconData;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    iput-object v3, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 84
    :cond_0
    invoke-static {p1, v1}, Lcom/android/launcher2/FolderIconHelper;->drawIcons(Lcom/android/launcher2/FolderItem;I)V

    .line 86
    if-eqz v2, :cond_1

    .line 87
    iput-object v2, p2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 89
    :cond_1
    return-object v0
.end method

.method static createFolderIconWithPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "folderIcon"
    .parameter "info"

    .prologue
    const/4 v6, 0x0

    .line 93
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    .line 94
    .local v1, childCount:I
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, b:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    if-nez v1, :cond_0

    .line 99
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 103
    :goto_0
    invoke-static {p0, p1}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 104
    .local v2, miniIcons:Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v2, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    return-object v0

    .line 101
    .end local v2           #miniIcons:Landroid/graphics/Bitmap;
    :cond_0
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static drawIcons(Lcom/android/launcher2/FolderItem;I)V
    .locals 9
    .parameter "folderItem"
    .parameter "childCount"

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 114
    if-nez p1, :cond_1

    .line 147
    :cond_0
    return-void

    .line 116
    :cond_1
    if-le p1, v0, :cond_2

    move p1, v0

    .line 117
    :cond_2
    add-int/lit8 v6, p1, -0x1

    .line 119
    .local v6, configIndex:I
    sget-boolean v0, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 120
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    const v2, 0x4400ff00

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    #getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->FOLDER_ICON_RECT:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$000(Lcom/android/launcher2/FolderIconHelper$AppIconData;)Landroid/graphics/Rect;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 124
    :cond_3
    add-int/lit8 v8, p1, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_0

    .line 127
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_5

    .line 128
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mIconMenuPositions:[[[F

    aget-object v0, v0, v6

    aget-object v7, v0, v8

    .line 132
    .local v7, cord:[F
    :goto_1
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 133
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    aget v2, v7, v2

    const/4 v3, 0x1

    aget v3, v7, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget v2, v2, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget v3, v3, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 137
    int-to-float v0, v8

    const v2, 0x3dcccccd

    mul-float/2addr v0, v2

    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper;->setDarkenPaintMultiplier(F)V

    .line 138
    sget-boolean v0, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 139
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sDebugColors:[I

    aget v2, v2, v8

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget v2, v2, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I

    int-to-float v3, v2

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget v2, v2, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SIZE:I

    int-to-float v4, v2

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    :cond_4
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-interface {p0, v8}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 143
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 124
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 130
    .end local v7           #cord:[F
    :cond_5
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    aget-object v0, v0, v6

    aget-object v7, v0, v8

    .restart local v7       #cord:[F
    goto :goto_1
.end method

.method public static getAppIconScaleFactor()F
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget v0, v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->APP_ICON_SCALE_FACTOR:F

    return v0
.end method

.method public static getAppIconXYCord(IIZ)[F
    .locals 7
    .parameter "iconIndex"
    .parameter "iconCount"
    .parameter "isHover"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x3

    .line 173
    const/4 v1, 0x0

    .line 174
    .local v1, configIndex:I
    if-eqz p2, :cond_4

    .line 175
    const/4 v5, 0x7

    if-le p1, v5, :cond_3

    move v1, v3

    .line 180
    :goto_0
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 183
    :cond_0
    const/4 v2, 0x0

    .line 184
    .local v2, posIndex:I
    if-eqz p2, :cond_7

    .line 186
    if-le p0, v3, :cond_6

    move v2, v3

    .line 194
    :goto_1
    if-gez v2, :cond_1

    const/4 v2, 0x0

    .line 197
    :cond_1
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 198
    const/4 v1, 0x0

    .line 199
    const/4 v2, 0x0

    .line 203
    :cond_2
    :try_start_0
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    aget-object v3, v3, v1

    aget-object v3, v3, v2

    sput-object v3, Lcom/android/launcher2/FolderIconHelper;->mTmpCord:[F
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_2
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->mTmpCord:[F

    return-object v3

    .line 175
    .end local v2           #posIndex:I
    :cond_3
    add-int/lit8 v1, p1, -0x1

    goto :goto_0

    .line 177
    :cond_4
    const/4 v5, 0x4

    if-le p1, v5, :cond_5

    move v1, v4

    :goto_3
    goto :goto_0

    :cond_5
    add-int/lit8 v1, p1, -0x1

    goto :goto_3

    .restart local v2       #posIndex:I
    :cond_6
    move v2, p0

    .line 186
    goto :goto_1

    .line 190
    :cond_7
    if-le p0, v4, :cond_8

    move v2, v4

    :goto_4
    goto :goto_1

    :cond_8
    move v2, p0

    goto :goto_4

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, ae:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mIconPositions:[[[F

    aget-object v3, v3, v6

    aget-object v3, v3, v6

    sput-object v3, Lcom/android/launcher2/FolderIconHelper;->mTmpCord:[F

    goto :goto_2
.end method

.method public static getHoverOffset(Landroid/content/res/Resources;IILcom/android/launcher2/FolderIconHelper$LocFolder;)[I
    .locals 7
    .parameter "r"
    .parameter "i"
    .parameter "count"
    .parameter "location"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 255
    const v2, 0x7f0a002e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    .line 257
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_0

    .line 258
    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sDirections_port:[[[I

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    aget-object v1, v2, p1

    .line 266
    .local v1, s:[I
    :goto_0
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    if-ne p3, v2, :cond_1

    .line 267
    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x12

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v4

    .line 275
    .local v0, ret:[I
    :goto_1
    return-object v0

    .line 262
    .end local v0           #ret:[I
    .end local v1           #s:[I
    :cond_0
    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sDirections_land:[[[I

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    aget-object v1, v2, p1

    .restart local v1       #s:[I
    goto :goto_0

    .line 268
    :cond_1
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    if-ne p3, v2, :cond_2

    .line 269
    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x12

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v4

    .restart local v0       #ret:[I
    goto :goto_1

    .line 270
    .end local v0           #ret:[I
    :cond_2
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->TOP_FOLDER_INHOME:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    if-ne p3, v2, :cond_3

    .line 271
    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    const v3, 0x7f0c001f

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v4

    .restart local v0       #ret:[I
    goto :goto_1

    .line 273
    .end local v0           #ret:[I
    :cond_3
    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v4

    .restart local v0       #ret:[I
    goto :goto_1
.end method

.method public static getNormalFolderBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 283
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->NORMAL_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getOpenFolderBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 287
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getOpenFolderHighlightBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->OPEN_FOLDER_BITMAP_HIGHLIGHT:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static initFolderResources(Landroid/content/res/Resources;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 213
    sget v0, Lcom/android/launcher2/FolderIconHelper;->CENTER_ALIGN_VAL:I

    const/high16 v1, -0x8000

    if-ne v0, v1, :cond_0

    .line 214
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/launcher2/FolderIconHelper;->CENTER_ALIGN_VAL:I

    .line 215
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/launcher2/FolderIconHelper;->RIGHT_ALIGN_VAL:I

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 220
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    .line 223
    :cond_1
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_2
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    if-nez v0, :cond_3

    .line 226
    new-instance v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    .line 228
    :cond_3
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    goto :goto_0
.end method

.method private static setDarkenPaintMultiplier(F)V
    .locals 1
    .parameter "mult"

    .prologue
    .line 157
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-static {p0, v0}, Lcom/android/launcher2/AppIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 158
    return-void
.end method
