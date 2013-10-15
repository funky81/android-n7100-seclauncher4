.class public Lcom/android/launcher2/ShadowGen;
.super Ljava/lang/Object;
.source "ShadowGen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ShadowGen$1;,
        Lcom/android/launcher2/ShadowGen$GenThread;,
        Lcom/android/launcher2/ShadowGen$QueuedBitmap;,
        Lcom/android/launcher2/ShadowGen$CallbackEntry;,
        Lcom/android/launcher2/ShadowGen$GeneratedCallback;
    }
.end annotation


# static fields
.field private static fovydiff:F

.field private static iconSize:I

.field private static sInstance:Lcom/android/launcher2/ShadowGen;


# instance fields
.field private mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/launcher2/ShadowGen$QueuedBitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, -0x1

    sput v0, Lcom/android/launcher2/ShadowGen;->iconSize:I

    .line 110
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/ShadowGen;->fovydiff:F

    .line 112
    new-instance v0, Lcom/android/launcher2/ShadowGen;

    invoke-direct {v0}, Lcom/android/launcher2/ShadowGen;-><init>()V

    sput-object v0, Lcom/android/launcher2/ShadowGen;->sInstance:Lcom/android/launcher2/ShadowGen;

    .line 199
    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    .line 206
    return-void
.end method

.method static synthetic access$200()F
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/android/launcher2/ShadowGen;->fovydiff:F

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/android/launcher2/ShadowGen;->iconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher2/ShadowGen;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/launcher2/ShadowGen;->sInstance:Lcom/android/launcher2/ShadowGen;

    return-object v0
.end method

.method public static native nCompositeLayer(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Z
.end method

.method public static native nExtractLayers([Landroid/graphics/Bitmap;I)Z
.end method

.method private start()V
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/android/launcher2/ShadowGen$GenThread;

    invoke-direct {v0, p0}, Lcom/android/launcher2/ShadowGen$GenThread;-><init>(Lcom/android/launcher2/ShadowGen;)V

    iput-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    .line 192
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->setDaemon(Z)V

    .line 193
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->setPriority(I)V

    .line 194
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    const-string v1, "ShadowGen"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->setName(Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    invoke-virtual {v0}, Lcom/android/launcher2/ShadowGen$GenThread;->start()V

    .line 196
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;Landroid/content/res/Resources;)V
    .locals 5
    .parameter "source"
    .parameter "callback"
    .parameter "handler"
    .parameter "res"

    .prologue
    const/4 v4, 0x0

    .line 130
    if-nez p3, :cond_0

    .line 131
    new-instance p3, Landroid/os/Handler;

    .end local p3
    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    .line 133
    .restart local p3
    :cond_0
    sget v2, Lcom/android/launcher2/ShadowGen;->iconSize:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 134
    const v2, 0x7f0c003e

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/ShadowGen;->iconSize:I

    .line 136
    :cond_1
    sget v2, Lcom/android/launcher2/ShadowGen;->fovydiff:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 137
    const v2, 0x7f0a0014

    invoke-virtual {p4, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/android/launcher2/ShadowGen;->fovydiff:F

    .line 139
    :cond_2
    new-instance v1, Lcom/android/launcher2/ShadowGen$QueuedBitmap;

    invoke-direct {v1, v4}, Lcom/android/launcher2/ShadowGen$QueuedBitmap;-><init>(Lcom/android/launcher2/ShadowGen$1;)V

    .line 140
    .local v1, qb:Lcom/android/launcher2/ShadowGen$QueuedBitmap;
    invoke-virtual {v1, p1}, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    new-instance v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;

    invoke-direct {v0, v4}, Lcom/android/launcher2/ShadowGen$CallbackEntry;-><init>(Lcom/android/launcher2/ShadowGen$1;)V

    .line 142
    .local v0, ce:Lcom/android/launcher2/ShadowGen$CallbackEntry;
    iput-object p2, v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->callback:Lcom/android/launcher2/ShadowGen$GeneratedCallback;

    .line 143
    iput-object p3, v0, Lcom/android/launcher2/ShadowGen$CallbackEntry;->handler:Landroid/os/Handler;

    .line 144
    iget-object v2, v1, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    monitor-enter v3

    .line 147
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 150
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v2, p0, Lcom/android/launcher2/ShadowGen;->mGenThread:Lcom/android/launcher2/ShadowGen$GenThread;

    if-nez v2, :cond_3

    .line 152
    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen;->start()V

    .line 154
    :cond_3
    return-void

    .line 150
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
