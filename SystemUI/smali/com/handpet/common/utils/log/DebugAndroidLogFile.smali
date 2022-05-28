.class Lcom/handpet/common/utils/log/DebugAndroidLogFile;
.super Ljava/lang/Object;
.source "DebugAndroidLogFile.java"


# static fields
.field private static instance:Lcom/handpet/common/utils/log/DebugAndroidLogFile;


# instance fields
.field private fos:Ljava/io/FileOutputStream;

.field private mHandler:Landroid/os/Handler;

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->instance:Lcom/handpet/common/utils/log/DebugAndroidLogFile;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object v1, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->fos:Ljava/io/FileOutputStream;

    .line 30
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DebugAndroidLogFile"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->thread:Landroid/os/HandlerThread;

    .line 31
    iget-object v1, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 32
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->mHandler:Landroid/os/Handler;

    .line 34
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/oppo_zhuti_log.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->fos:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/handpet/common/utils/log/DebugAndroidLogFile;)Ljava/io/FileOutputStream;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->fos:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public static getInstance()Lcom/handpet/common/utils/log/DebugAndroidLogFile;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->instance:Lcom/handpet/common/utils/log/DebugAndroidLogFile;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;

    invoke-direct {v0}, Lcom/handpet/common/utils/log/DebugAndroidLogFile;-><init>()V

    sput-object v0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->instance:Lcom/handpet/common/utils/log/DebugAndroidLogFile;

    .line 27
    :cond_0
    sget-object v0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->instance:Lcom/handpet/common/utils/log/DebugAndroidLogFile;

    return-object v0
.end method


# virtual methods
.method public postLogMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/handpet/common/utils/log/DebugAndroidLogFile;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/handpet/common/utils/log/DebugAndroidLogFile$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/handpet/common/utils/log/DebugAndroidLogFile$1;-><init>(Lcom/handpet/common/utils/log/DebugAndroidLogFile;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    return-void
.end method
