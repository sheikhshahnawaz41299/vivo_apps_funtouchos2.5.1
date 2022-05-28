.class public Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;
.super Ljava/lang/Object;
.source "ForegroundActivityObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.ForegroundActivityObserver"

.field private static mInstance:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field mCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLastPackageName:Ljava/lang/String;

.field private mNowInMills:J

.field private mProcessObserver:Landroid/app/IProcessObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mNowInMills:J

    .line 32
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mCallbacks:Ljava/util/HashSet;

    .line 33
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mLastPackageName:Ljava/lang/String;

    .line 56
    new-instance v2, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$1;-><init>(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mContext:Landroid/content/Context;

    .line 46
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mActivityManager:Landroid/app/ActivityManager;

    .line 48
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 50
    .local v1, "iActivityManager":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "StatusBar.ForegroundActivityObserver"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mLastPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mLastPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mNowInMills:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;
    .param p1, "x1"    # J

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mNowInMills:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->getTopActivityPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mInstance:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mInstance:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    .line 39
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mInstance:Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    return-object v0
.end method

.method private getTopActivityPackageName(I)Ljava/lang/String;
    .locals 6
    .param p1, "pid"    # I

    .prologue
    .line 92
    const/4 v3, 0x0

    .line 94
    .local v3, "runningPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 95
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 96
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne p1, v4, :cond_0

    .line 97
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    goto :goto_0

    .line 101
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public registerCallback(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public unRegisterCallback(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method
