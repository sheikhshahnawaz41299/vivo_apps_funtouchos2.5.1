.class public Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;
.super Ljava/lang/Object;
.source "AlbumDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;,
        Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;,
        Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;,
        Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x3

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AlbumDownloadManager"

.field private static mDownloadManager:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;


# instance fields
.field private mBitmapCache:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;

.field private mContext:Landroid/content/Context;

.field private mCurUri:Ljava/lang/String;

.field private mGoingOnCotrol:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;

.field private mHasWait:Z

.field private mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

.field private mRequestListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

.field private mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mDownloadManager:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mBitmapCache:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;

    .line 32
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 33
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mRequestListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    .line 34
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mCurUri:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mHasWait:Z

    .line 53
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    .line 99
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mGoingOnCotrol:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mContext:Landroid/content/Context;

    .line 40
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x3

    const/4 v3, 0x5

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mRequestListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mCurUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mCurUri:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mBitmapCache:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mHasWait:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mHasWait:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->downloadImageFromTask(Ljava/lang/String;)V

    return-void
.end method

.method private downloadImageFromTask(Ljava/lang/String;)V
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v6

    .line 131
    .local v6, "activeCount":I
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-ge v6, v1, :cond_0

    .line 132
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mHasWait:Z

    .line 133
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mGoingOnCotrol:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$GoingOnCotrol;)V

    .line 134
    .local v0, "downloadTask":Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 138
    .end local v0    # "downloadTask":Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$DownloadTask;
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mHasWait:Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mDownloadManager:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mDownloadManager:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mDownloadManager:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;

    return-object v0
.end method


# virtual methods
.method public getOnlineBitmap(Ljava/lang/String;)Z
    .locals 6
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 115
    const-string v2, "AlbumDownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOnlineBitmap uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "hasCache":Z
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mBitmapCache:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mBitmapCache:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;

    invoke-virtual {v2, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->hasCache(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mBitmapCache:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$BitmapCache;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
    .local v0, "bitmapBak":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mRequestListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    invoke-interface {v2, v5, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;->onOneBitmapFinish(ILandroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 120
    const/4 v1, 0x1

    .line 126
    .end local v0    # "bitmapBak":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return v1

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mCurUri:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->downloadImageFromTask(Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mCurUri:Ljava/lang/String;

    goto :goto_0
.end method

.method public registerDownloadListener(Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mRequestListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    .line 108
    return-void
.end method

.method public unregisterDownloadListener()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager;->mRequestListener:Lcom/android/systemui/vivo/common/keyguard/nature/utils/AlbumDownloadManager$OnDownloadListener;

    .line 112
    return-void
.end method
