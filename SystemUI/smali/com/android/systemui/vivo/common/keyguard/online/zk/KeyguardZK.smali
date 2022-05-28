.class public Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;
.super Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;
.source "KeyguardZK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardZK"


# instance fields
.field private mCallNum:I

.field private mLockScreenInputStream:Ljava/io/FileInputStream;

.field private mLockScreenView:Landroid/view/View;

.field private mMsgNum:I

.field private mUnlockerListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

.field private mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenView:Landroid/view/View;

    .line 32
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenInputStream:Ljava/io/FileInputStream;

    .line 206
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mUnlockerListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->createMainView()V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->createCoverView()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mUnlockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->startActivity(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mCallNum:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mMsgNum:I

    return v0
.end method

.method private createMainView()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 42
    new-instance v2, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mThemeFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v2}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->create()Z

    .line 46
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mThemeFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenInputStream:Ljava/io/FileInputStream;

    .line 47
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    const-string v3, ""

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenInputStream:Ljava/io/FileInputStream;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->load(Ljava/lang/String;Ljava/io/InputStream;ZZ)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenView:Landroid/view/View;

    .line 48
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mUnlockerListener:Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;

    invoke-virtual {v2, v3}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->registUnlockerListener(Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;)V

    .line 52
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)V

    invoke-virtual {v2, v3}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->setUnlockRunnable(Ljava/lang/Runnable;)V

    .line 69
    .end local v1    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mErrorFlag:Z

    .line 62
    const-string v2, "KeyguardZK"

    const-string v3, "file not exists."

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    sput-boolean v7, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mErrorFlag:Z

    .line 66
    const-string v2, "KeyguardZK"

    const-string v3, "KeyguardZK error : "

    invoke-static {v2, v3, v0}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getKeyguardZKView(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mErrorFlag:Z

    .line 167
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "keyguardZK":Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;
    sget-boolean v1, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mErrorFlag:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 169
    const-string v1, "KeyguardZK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------getKeyguardZKView Successed view="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .end local v0    # "keyguardZK":Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;
    :goto_0
    return-object v0

    .line 172
    .restart local v0    # "keyguardZK":Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;
    :cond_0
    const-string v1, "KeyguardZK"

    const-string v2, "------getKeyguardZKView Failed"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeMainView()V
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->removeView(Landroid/view/View;)V

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->unregistUnlockerListener()V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->unLoad()Z

    .line 79
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->destory()Z

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenInputStream:Ljava/io/FileInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 84
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mLockScreenInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_2
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "KeyguardZK"

    const-string v2, "onCleanup error : "

    invoke-static {v1, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private startActivity(I)V
    .locals 3
    .param p1, "intentId"    # I

    .prologue
    .line 200
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v1, p1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 98
    :cond_0
    return v0
.end method

.method public onBouncerChanged(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onBouncerChanged(Z)V

    .line 160
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mIsOnResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->show(Z)Z

    .line 163
    :cond_0
    return-void
.end method

.method public onCleanup()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "KeyguardZK"

    const-string v1, "onCleanup"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->removeMainView()V

    .line 139
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onCleanup()V

    .line 140
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 179
    const-string v0, "KeyguardZK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------onConfigurationChanged reload views, mIsBouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mIsBouncer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->removeMainView()V

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->createMainView()V

    .line 184
    :cond_0
    return-void
.end method

.method public onHide(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    .line 127
    const-string v0, "KeyguardZK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHide bouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->onPause()V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->hide()Z

    .line 132
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onHide(Z)V

    .line 133
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->userActivity()V

    .line 104
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 146
    if-eqz p1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->show(Z)Z

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->hide()Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "KeyguardZK"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onPause()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->stop()Z

    .line 123
    :cond_0
    return-void
.end method

.method public onRefreshInfo(II)V
    .locals 3
    .param p1, "msgNum"    # I
    .param p2, "callNum"    # I

    .prologue
    .line 188
    const-string v0, "KeyguardZK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh info, msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mMsgNum:I

    .line 190
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mCallNum:I

    .line 191
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v0, p1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->onUnreadMsgChange(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v0, p2}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->onMissCallChange(I)V

    .line 193
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mIsOnResume:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    invoke-virtual {v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->play()Z

    .line 196
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "KeyguardZK"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onResume()V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->mWrapper:Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->show(Z)Z

    .line 114
    :cond_0
    return-void
.end method
