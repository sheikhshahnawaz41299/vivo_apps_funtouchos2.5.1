.class public Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;
.super Ljava/lang/Object;
.source "ResourceSettingsManager.java"


# static fields
.field private static final MSG_RELEASE_BITMAP:I = 0x0

.field private static final MSG_WRITE_SETTINGS_DB:I = 0xa

.field private static final MSG_WRITE_USER_TIP:I = 0x64

.field private static sInstance:Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResourceHandler:Landroid/os/Handler;

.field private mResourceHandlerThread:Landroid/os/HandlerThread;

.field private mSettingsHandler:Landroid/os/Handler;

.field private mSettingsHandlerThread:Landroid/os/HandlerThread;

.field private mUserTipHandler:Landroid/os/Handler;

.field private mUserTipHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->sInstance:Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mContext:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mResourceHandlerThread:Landroid/os/HandlerThread;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mResourceHandler:Landroid/os/Handler;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mSettingsHandlerThread:Landroid/os/HandlerThread;

    .line 27
    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mSettingsHandler:Landroid/os/Handler;

    .line 30
    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mUserTipHandlerThread:Landroid/os/HandlerThread;

    .line 31
    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mUserTipHandler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mContext:Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->initResourceHandlerThread()V

    .line 39
    return-void
.end method

.method public static getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->sInstance:Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->sInstance:Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    .line 100
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->sInstance:Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    return-object v0
.end method

.method private initResourceHandlerThread()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResourceSettingsManager:ReleaseResourceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mResourceHandlerThread:Landroid/os/HandlerThread;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mResourceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$3;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mResourceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$3;-><init>(Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mResourceHandler:Landroid/os/Handler;

    .line 90
    return-void
.end method

.method private initSettingsHandlerThread()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResourceSettingsManager:WriteSettingsDbThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mSettingsHandlerThread:Landroid/os/HandlerThread;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mSettingsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    new-instance v0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$2;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mSettingsHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$2;-><init>(Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mSettingsHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method private initUserTipHandlerThread()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ResourceSettingsManager:UserTipThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mUserTipHandlerThread:Landroid/os/HandlerThread;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mUserTipHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 44
    new-instance v0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$1;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mUserTipHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager$1;-><init>(Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mUserTipHandler:Landroid/os/Handler;

    .line 54
    return-void
.end method


# virtual methods
.method public releaseBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 111
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 112
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mResourceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public releaseBitmap(Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "delay"    # I

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 121
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->mResourceHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 124
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
