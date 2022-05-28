.class public Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;
.super Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;
.source "KeyguardTP.java"

# interfaces
.implements Lcom/tpad/ux/funlocker/JSCallback;
.implements Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;
.implements Lcom/tpad/ux/funlocker/RenderView$TouchListener;
.implements Lcom/tpad/ux/funlocker/ShakeListener$OnShakeListener;


# static fields
.field public static CurrAudiaoStart:I = 0x0

.field public static CurrAudioMaxNum:I = 0x0

.field private static final DEBUG:Z = true

.field private static final FORCE_UNLOCK_KEY_1:I = 0x4

.field private static final FORCE_UNLOCK_KEY_2:I = 0x1a

.field private static final TAG:Ljava/lang/String; = "KeyguardTP"

.field private static final TPADSZ_LOCK_CURR_USE:Ljava/lang/String; = "tpadsz_lock_curr_use"

.field private static final TPADSZ_LOCK_DEFAULT_FILE_PATH:Ljava/lang/String; = "/system/etc/default_ux.ux"

.field private static final TPADSZ_LOCK_FILE_PATH:Ljava/lang/String; = "tpadsz_lock_file_path"

.field private static final TPADSZ_LOCK_GRAVITY_SENSING_ON_OFF:Ljava/lang/String; = "tpadsz_lock_gravity_sensing_on_off"

.field private static final TPADSZ_LOCK_SCREEN_ON_OFF:Ljava/lang/String; = "tpadsz_lock_screen_on_off"

.field private static final TPADSZ_LOCK_SHAKE_ON_OFF:Ljava/lang/String; = "tpadsz_lock_shake_on_off"

.field private static final TPADSZ_LOCK_SOUND_ON_OFF:Ljava/lang/String; = "tpadsz_lock_sound_on_off"

.field private static TPADSZ_LOCK_USE_FILE_PATH:Ljava/lang/String;

.field private static mTPLockcreenDemonstrated:I


# instance fields
.field private final MSG_REFLESH_MSG_CALL:I

.field private issoundres:Z

.field loadAudio:Ljava/lang/Thread;

.field lock:[B

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallNum:I

.field private mForceUnlockKey1Down:Z

.field private mForceUnlockKey2Down:Z

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMsgNum:I

.field private mPrivousAction:I

.field private mRenderView:Lcom/tpad/ux/funlocker/RenderView;

.field private mRenderViewLoaded:Z

.field private mShakeListener:Lcom/tpad/ux/funlocker/ShakeListener;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mVibrator:Landroid/os/Vibrator;

.field private silentSetting:Z

.field soundhandler:Landroid/os/Handler;

.field private streamVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const-string v0, "ux_fm_v1.0.0"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->TPADSZ_LOCK_USE_FILE_PATH:Ljava/lang/String;

    .line 124
    const/4 v0, 0x6

    sput v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    .line 125
    sput v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudiaoStart:I

    .line 126
    sput v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTPLockcreenDemonstrated:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey1Down:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey2Down:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->issoundres:Z

    .line 85
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mCallNum:I

    .line 86
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMsgNum:I

    .line 87
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    .line 91
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->lock:[B

    .line 94
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->silentSetting:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderViewLoaded:Z

    .line 96
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->MSG_REFLESH_MSG_CALL:I

    .line 129
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimerTask:Ljava/util/TimerTask;

    .line 141
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->loadAudio:Ljava/lang/Thread;

    .line 160
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->soundhandler:Landroid/os/Handler;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->TPADSZ_LOCK_USE_FILE_PATH:Ljava/lang/String;

    .line 179
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TPADSZ_LOCK_USE_FILE_PATH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->TPADSZ_LOCK_USE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mVibrator:Landroid/os/Vibrator;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mAudioManager:Landroid/media/AudioManager;

    .line 182
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->setViews()V

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->createCoverView()V

    .line 184
    return-void
.end method

.method public static SplitRetMp3(Ljava/lang/String;)I
    .locals 5
    .param p0, "ret"    # Ljava/lang/String;

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 555
    .local v1, "numI":I
    const-string v2, "KeyguardTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "soundpool ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v2, "playvoice"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 557
    .local v0, "num":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 558
    const-string v2, "KeyguardTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "soundpool numI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    return v1
.end method

.method public static SplitRetOgg(Ljava/lang/String;)I
    .locals 5
    .param p0, "ret"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xc

    .line 539
    const/4 v1, 0x0

    .line 540
    .local v1, "numI":I
    const-string v2, "playvoice"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 541
    .local v0, "num":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 543
    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    if-gt v1, v4, :cond_1

    .line 544
    sget v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    sub-int/2addr v1, v2

    .line 548
    :cond_0
    :goto_0
    sget v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    sub-int/2addr v2, v1

    add-int/lit8 v1, v2, 0x1

    .line 550
    return v1

    .line 545
    :cond_1
    if-le v1, v4, :cond_0

    .line 546
    add-int/lit8 v1, v1, -0xc

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMsgNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mCallNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Lcom/tpad/ux/funlocker/RenderView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->timerClock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->isPlayeOgg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getOggVoiceFile()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->issoundres:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->issoundres:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getMp3VoiceFile()V

    return-void
.end method

.method private createRenderView(Ljava/lang/String;)V
    .locals 13
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    if-eqz v0, :cond_0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    sget-object v1, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_STOP:Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-virtual {v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->setRenderState(Lcom/tpad/ux/funlocker/RenderCondition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->removeView(Landroid/view/View;)V

    .line 246
    :cond_0
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createRenderView name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getBytesFromUX(Ljava/lang/String;)[B

    move-result-object v7

    .line 249
    .local v7, "bytes":[B
    if-nez v7, :cond_1

    .line 250
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mErrorFlag:Z

    .line 356
    :goto_1
    return-void

    .line 240
    .end local v7    # "bytes":[B
    :catch_0
    move-exception v8

    .line 241
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 254
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "bytes":[B
    :cond_1
    new-instance v0, Lcom/tpad/ux/funlocker/RenderView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/tpad/ux/funlocker/ActionType;->FLAG_ACTION_OTHERS:Lcom/tpad/ux/funlocker/ActionType;

    invoke-direct {v0, v1, v7, p0, v2}, Lcom/tpad/ux/funlocker/RenderView;-><init>(Landroid/content/Context;[BLcom/tpad/ux/funlocker/JSCallback;Lcom/tpad/ux/funlocker/ActionType;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    .line 257
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v0, p0}, Lcom/tpad/ux/funlocker/RenderView;->setEngineCallBack(Lcom/tpad/ux/funlocker/RenderView$EngineCallBack;)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v0, p0}, Lcom/tpad/ux/funlocker/RenderView;->setTouchListener(Lcom/tpad/ux/funlocker/RenderView$TouchListener;)V

    .line 260
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/RenderView;->startEngine()V

    .line 261
    invoke-static {}, Lcom/tpad/ux/funlocker/RenderView;->ischeckMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getModeData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->setModeData(Ljava/lang/String;)V

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tpad/ux/funlocker/RenderView;->setNotifyLanguage(I)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 281
    .local v12, "uxid":I
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uxid uxid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTPLockcreenDemonstrated:I

    if-eq v12, v0, :cond_7

    .line 283
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTPLockcreenDemonstrated:I

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->isPlayeOgg()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 317
    const/4 v0, 0x6

    sput v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    .line 318
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LockScreenTPDataCount"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 320
    .local v6, "DataCountValue":I
    if-eqz v6, :cond_5

    .line 321
    const/4 v0, 0x1

    if-ne v6, v0, :cond_b

    .line 322
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudiaoStart:I

    .line 327
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/RenderView;->getUXEngine()Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->getStartRet()I

    move-result v0

    const-string v1, "NotifySetCount"

    invoke-static {v0, v1, v6}, Lcom/tpad/ux/funlocker/ExternalUtils;->InvokeJS(ILjava/lang/String;I)I

    .line 329
    const/4 v0, 0x1

    if-ne v6, v0, :cond_d

    .line 330
    const/4 v6, 0x2

    .line 336
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LockScreenTPDataCount"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getOggVoiceFile()V

    .line 340
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->issoundres:Z

    if-eqz v0, :cond_6

    .line 341
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->loadPlaySoundOggRes()V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->issoundres:Z

    .line 352
    .end local v6    # "DataCountValue":I
    :cond_6
    :goto_5
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x1

    invoke-direct {v9, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 354
    .local v9, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v9}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderViewLoaded:Z

    goto/16 :goto_1

    .line 286
    .end local v9    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    :try_start_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getRecordValue()Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "save":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/RenderView;->getUXEngine()Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 289
    const-string v11, "1 0 0;0 0 0"

    .line 290
    .local v11, "savedString":Ljava/lang/String;
    const-string v0, ""

    if-eq v10, v0, :cond_8

    .line 291
    const-string v0, "1 0 0;"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 292
    move-object v10, v11

    .line 308
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v0, v10}, Lcom/tpad/ux/funlocker/RenderView;->restoreValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 310
    .end local v10    # "save":Ljava/lang/String;
    .end local v11    # "savedString":Ljava/lang/String;
    .end local v12    # "uxid":I
    :catch_1
    move-exception v8

    .line 311
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mErrorFlag:Z

    goto/16 :goto_1

    .line 295
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "save":Ljava/lang/String;
    .restart local v12    # "uxid":I
    :cond_9
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/RenderView;->getUXEngine()Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 296
    const-string v11, "1;0 0 0"

    .line 297
    .restart local v11    # "savedString":Ljava/lang/String;
    const-string v0, ""

    if-eq v10, v0, :cond_8

    .line 298
    const-string v0, "1;"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 299
    move-object v10, v11

    goto :goto_6

    .line 303
    .end local v11    # "savedString":Ljava/lang/String;
    :cond_a
    const-string v11, "1;0 0 0"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 304
    .restart local v11    # "savedString":Ljava/lang/String;
    move-object v10, v11

    goto :goto_6

    .line 323
    .end local v10    # "save":Ljava/lang/String;
    .end local v11    # "savedString":Ljava/lang/String;
    .restart local v6    # "DataCountValue":I
    :cond_b
    const/4 v0, 0x2

    if-ne v6, v0, :cond_c

    .line 324
    const/4 v0, 0x6

    sput v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudiaoStart:I

    goto/16 :goto_3

    .line 325
    :cond_c
    const/4 v0, 0x3

    if-ne v6, v0, :cond_3

    .line 326
    const/16 v0, 0xc

    sput v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudiaoStart:I

    goto/16 :goto_3

    .line 331
    :cond_d
    const/4 v0, 0x2

    if-ne v6, v0, :cond_e

    .line 332
    const/4 v6, 0x3

    goto/16 :goto_4

    .line 333
    :cond_e
    const/4 v0, 0x3

    if-ne v6, v0, :cond_4

    .line 334
    const/4 v6, 0x1

    goto/16 :goto_4

    .line 345
    .end local v6    # "DataCountValue":I
    :cond_f
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getMp3VoiceFile()V

    .line 347
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->issoundres:Z

    if-eqz v0, :cond_6

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->loadPlaySoundMp3Res()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->issoundres:Z

    goto/16 :goto_5
.end method

.method private getBytesFromUX(Ljava/lang/String;)[B
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 925
    .local v3, "in":Ljava/io/InputStream;
    if-eqz p1, :cond_1

    :try_start_0
    const-string v6, ""

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 926
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_theme_id_3"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 929
    .local v5, "uxID":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 930
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sput v6, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTPLockcreenDemonstrated:I

    .line 931
    const-string v6, "KeyguardTP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBytesFromUX mTPLockcreenDemonstrated = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTPLockcreenDemonstrated:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 936
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 937
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    move-object v3, v4

    .line 946
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "uxID":Ljava/lang/String;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 947
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 949
    :cond_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 958
    :cond_3
    if-eqz v3, :cond_4

    .line 959
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 966
    :cond_4
    :goto_1
    return-object v0

    .line 939
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "uxID":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v6, "KeyguardTP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBytesFromUX file error, return null, name= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file.exists()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file.length()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " file.canRead()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 953
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "uxID":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 954
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "KeyguardTP"

    const-string v7, "getBytesFromUX exception return null."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 958
    if-eqz v3, :cond_4

    .line 959
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 961
    :catch_1
    move-exception v1

    .line 962
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 961
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 962
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 957
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 958
    if-eqz v3, :cond_6

    .line 959
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 963
    :cond_6
    :goto_2
    throw v6

    .line 961
    :catch_3
    move-exception v1

    .line 962
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getCurrentTime()Ljava/lang/String;
    .locals 10

    .prologue
    .line 369
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 370
    .local v5, "rightNow":Ljava/util/Calendar;
    const/16 v8, 0xb

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 371
    .local v2, "hour":I
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 372
    .local v3, "min":I
    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 373
    .local v6, "sec":I
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 374
    .local v7, "year":I
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v4, v8, 0x1

    .line 375
    .local v4, "month":I
    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 376
    .local v1, "day":I
    const/4 v8, 0x7

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .line 377
    .local v0, "date":I
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->isBudSet()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 378
    add-int/lit16 v7, v7, 0x21f

    .line 380
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private getGravitySensingIsCheck()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 610
    const/4 v2, 0x1

    .line 611
    .local v2, "retischeck":Z
    const/4 v0, 0x1

    .line 612
    .local v0, "enabled":I
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 613
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v3, "tpadsz_lock_gravity_sensing_on_off"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 615
    if-ne v0, v4, :cond_0

    .line 616
    const/4 v2, 0x1

    .line 620
    :goto_0
    return v2

    .line 618
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getKeyguardTPView(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1078
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mErrorFlag:Z

    .line 1079
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;-><init>(Landroid/content/Context;)V

    .line 1080
    .local v0, "view":Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;
    sget-boolean v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mErrorFlag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1081
    const-string v1, "KeyguardTP"

    const-string v2, "mErrorFlag == true, return null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v0, 0x0

    .line 1084
    .end local v0    # "view":Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;
    :cond_0
    return-object v0
.end method

.method private getModeData()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x1e0

    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/tpad/ux/funlocker/Utils;->GetScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 872
    .local v1, "width":I
    if-ge v1, v3, :cond_1

    .line 873
    const-string v0, "1"

    .line 877
    :cond_0
    :goto_0
    return-object v0

    .line 874
    :cond_1
    if-lt v1, v3, :cond_0

    .line 875
    const-string v0, "0"

    goto :goto_0
.end method

.method private getMp3VoiceFile()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 990
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    const-string v12, "audio"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 992
    .local v8, "mgr":Landroid/media/AudioManager;
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->streamVolume:I

    .line 994
    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    if-eqz v11, :cond_0

    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "Ux_buffer":[B
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView;->getUXObject()Lcom/tpad/ux/funlocker/UXObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/UXObject;->getUx_buffer()[B

    move-result-object v11

    if-nez v11, :cond_1

    .line 997
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView;->getUXObject()Lcom/tpad/ux/funlocker/UXObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/UXObject;->getUx_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getUxBuff(Ljava/lang/String;)[B

    move-result-object v0

    .line 1002
    :goto_0
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_1
    const/16 v11, 0xb

    if-ge v7, v11, :cond_0

    .line 1003
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "info/voice"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".mp3"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1004
    .local v3, "filename":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView;->getUXEngine()Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->getStartRet()I

    move-result v11

    invoke-static {v11, v0, v3}, Lcom/tpad/ux/funlocker/ExternalUtils;->GetUXFileDataFromBuffer(I[BLjava/lang/String;)[B

    move-result-object v1

    .line 1007
    .local v1, "a":[B
    array-length v11, v1

    if-gt v11, v13, :cond_2

    .line 1039
    .end local v0    # "Ux_buffer":[B
    .end local v1    # "a":[B
    .end local v3    # "filename":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_0
    :goto_2
    return-void

    .line 1000
    .restart local v0    # "Ux_buffer":[B
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView;->getUXObject()Lcom/tpad/ux/funlocker/UXObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/UXObject;->getUx_buffer()[B

    move-result-object v0

    goto :goto_0

    .line 1010
    .restart local v1    # "a":[B
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->issoundres:Z

    .line 1011
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->TPADSZ_LOCK_USE_FILE_PATH:Ljava/lang/String;

    .line 1012
    .local v4, "filepath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1013
    .local v9, "out":Ljava/io/OutputStream;
    sput v7, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1015
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1016
    .local v6, "filevoicePath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1017
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 1018
    :cond_3
    new-instance v6, Ljava/io/File;

    .end local v6    # "filevoicePath":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/voice"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1019
    .restart local v6    # "filevoicePath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 1020
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 1021
    :cond_4
    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/voice/playvoice"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".mp3"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v5, "filevoice":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1024
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1025
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 1026
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/voice/playvoice"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".mp3"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1028
    .end local v9    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    const/4 v11, 0x0

    :try_start_2
    array-length v12, v1

    invoke-virtual {v10, v1, v11, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 1029
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v10

    .line 1002
    .end local v5    # "filevoice":Ljava/io/File;
    .end local v6    # "filevoicePath":Ljava/io/File;
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1030
    :catch_0
    move-exception v2

    .line 1031
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 1036
    .end local v0    # "Ux_buffer":[B
    .end local v1    # "a":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 1037
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1030
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "Ux_buffer":[B
    .restart local v1    # "a":[B
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "filepath":Ljava/lang/String;
    .restart local v5    # "filevoice":Ljava/io/File;
    .restart local v6    # "filevoicePath":Ljava/io/File;
    .restart local v7    # "i":I
    .restart local v10    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method private getOggVoiceFile()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 459
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    const-string v12, "audio"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 461
    .local v8, "mgr":Landroid/media/AudioManager;
    const/4 v11, 0x3

    invoke-virtual {v8, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->streamVolume:I

    .line 463
    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    if-eqz v11, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "Ux_buffer":[B
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView;->getUXObject()Lcom/tpad/ux/funlocker/UXObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/UXObject;->getUx_buffer()[B

    move-result-object v11

    if-nez v11, :cond_1

    .line 466
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView;->getUXObject()Lcom/tpad/ux/funlocker/UXObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/UXObject;->getUx_Path()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getUxBuff(Ljava/lang/String;)[B

    move-result-object v0

    .line 471
    :goto_0
    sget v11, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    sget v12, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudiaoStart:I

    add-int v7, v11, v12

    .local v7, "i":I
    :goto_1
    sget v11, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudiaoStart:I

    if-le v7, v11, :cond_0

    .line 473
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "info/voice"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".ogg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "filename":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView;->getUXEngine()Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->getStartRet()I

    move-result v11

    invoke-static {v11, v0, v3}, Lcom/tpad/ux/funlocker/ExternalUtils;->GetUXFileDataFromBuffer(I[BLjava/lang/String;)[B

    move-result-object v1

    .line 477
    .local v1, "a":[B
    array-length v11, v1

    if-gt v11, v13, :cond_2

    .line 508
    .end local v0    # "Ux_buffer":[B
    .end local v1    # "a":[B
    .end local v3    # "filename":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_0
    :goto_2
    return-void

    .line 469
    .restart local v0    # "Ux_buffer":[B
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/RenderView;->getUXObject()Lcom/tpad/ux/funlocker/UXObject;

    move-result-object v11

    invoke-virtual {v11}, Lcom/tpad/ux/funlocker/UXObject;->getUx_buffer()[B

    move-result-object v0

    goto :goto_0

    .line 480
    .restart local v1    # "a":[B
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v7    # "i":I
    :cond_2
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->issoundres:Z

    .line 481
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->TPADSZ_LOCK_USE_FILE_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 482
    .local v4, "filepath":Ljava/lang/String;
    const/4 v9, 0x0

    .line 484
    .local v9, "out":Ljava/io/OutputStream;
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    .local v6, "filevoicePath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_3

    .line 486
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 487
    :cond_3
    new-instance v6, Ljava/io/File;

    .end local v6    # "filevoicePath":Ljava/io/File;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/voice"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 488
    .restart local v6    # "filevoicePath":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 489
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 490
    :cond_4
    new-instance v5, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/voice/playvoice"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".ogg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .local v5, "filevoice":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 493
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 494
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 495
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/voice/playvoice"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".ogg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 497
    .end local v9    # "out":Ljava/io/OutputStream;
    .local v10, "out":Ljava/io/OutputStream;
    const/4 v11, 0x0

    :try_start_2
    array-length v12, v1

    invoke-virtual {v10, v1, v11, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 498
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v9, v10

    .line 471
    .end local v5    # "filevoice":Ljava/io/File;
    .end local v6    # "filevoicePath":Ljava/io/File;
    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 499
    :catch_0
    move-exception v2

    .line 500
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 505
    .end local v0    # "Ux_buffer":[B
    .end local v1    # "a":[B
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "filepath":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v9    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 506
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 499
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "Ux_buffer":[B
    .restart local v1    # "a":[B
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "filepath":Ljava/lang/String;
    .restart local v5    # "filevoice":Ljava/io/File;
    .restart local v6    # "filevoicePath":Ljava/io/File;
    .restart local v7    # "i":I
    .restart local v10    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    move-object v9, v10

    .end local v10    # "out":Ljava/io/OutputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    goto :goto_4
.end method

.method private getPreferUxPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, "uxPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 361
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "tpadsz_lock_file_path"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    if-nez v1, :cond_0

    .line 363
    const-string v1, "/system/etc/default_ux.ux"

    .line 365
    :cond_0
    return-object v1
.end method

.method private getRecordValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v2, "tpadsz_lock_curr_use"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 402
    const-string v1, ""

    .line 404
    :cond_0
    return-object v1
.end method

.method private getShakeIsCheck()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 563
    const/4 v3, 0x1

    .line 564
    .local v3, "retischeck":Z
    const/4 v1, 0x1

    .line 565
    .local v1, "enabled":I
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 566
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v6, "tpadsz_lock_shake_on_off"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 568
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 569
    .local v0, "callVibrateSetting":I
    if-nez v0, :cond_0

    move v4, v5

    .line 571
    .local v4, "vibrateSetting":Z
    :cond_0
    if-eqz v4, :cond_1

    .line 573
    const/4 v1, 0x0

    .line 576
    :cond_1
    if-ne v1, v5, :cond_2

    .line 577
    const/4 v3, 0x1

    .line 581
    :goto_0
    const-string v5, "KeyguardTP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retischeck = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vibrateSetting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return v3

    .line 579
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getSoundIsCheck()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 587
    const/4 v2, 0x1

    .line 588
    .local v2, "retischeck":Z
    const/4 v0, 0x1

    .line 589
    .local v0, "enabled":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 590
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "tpadsz_lock_sound_on_off"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 592
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 593
    .local v3, "ringerMode":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->silentSetting:Z

    .line 595
    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->silentSetting:Z

    if-eqz v4, :cond_0

    .line 596
    const/4 v0, 0x0

    .line 599
    :cond_0
    const-string v4, "KeyguardTP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSoundIsCheck silentSetting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->silentSetting:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-ne v0, v5, :cond_2

    .line 602
    const/4 v2, 0x1

    .line 606
    :goto_1
    return v2

    .line 593
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 604
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static isCheckTpadszLockScree(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 624
    const/4 v5, 0x0

    .line 625
    .local v5, "retabled":Z
    const/4 v1, 0x0

    .line 626
    .local v1, "enabled":I
    const/4 v3, 0x0

    .line 627
    .local v3, "file_path":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tpadsz_lock_screen_on_off"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 629
    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 630
    const/4 v5, 0x1

    .line 631
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tpadsz_lock_file_path"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 633
    if-eqz v3, :cond_0

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 634
    :cond_0
    const-string v3, "/system/etc/default_ux.ux"

    .line 636
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v4, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .local v4, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    :goto_0
    const-string v6, "KeyguardTP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCheckTpadszLockScree"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return v5

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "/system/etc/default_ux.ux"

    .line 641
    :try_start_1
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v4, v3, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .restart local v4    # "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 643
    .end local v4    # "raf":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v2

    .line 645
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "KeyguardTP"

    const-string v7, "retabled = false1111"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v5, 0x0

    goto :goto_0

    .line 652
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    const-string v6, "KeyguardTP"

    const-string v7, "retabled = false22222"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isPlayeOgg()Z
    .locals 3

    .prologue
    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, "ret":Z
    sget v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTPLockcreenDemonstrated:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 984
    const/4 v0, 0x1

    .line 986
    :cond_0
    return v0
.end method

.method private playVoice(Ljava/lang/String;I)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 421
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 423
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 425
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 426
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 428
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :cond_1
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyguardTP"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pokeWakelock()V
    .locals 0

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->userActivity()V

    .line 234
    return-void
.end method

.method private refreshInfo()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 978
    return-void
.end method

.method private setViews()V
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderViewLoaded:Z

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "KeyguardTP"

    const-string v1, "setViews had loaded return"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mVibrator:Landroid/os/Vibrator;

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimer:Ljava/util/Timer;

    .line 198
    :cond_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimer:Ljava/util/Timer;

    .line 200
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 202
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimerTask:Ljava/util/TimerTask;

    .line 215
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->lock:[B

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mThemePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->createRenderView(Ljava/lang/String;)V

    .line 217
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startActivity(I)V
    .locals 3
    .param p1, "intentId"    # I

    .prologue
    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :goto_0
    return-void

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private timerClock()V
    .locals 4

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->lock:[B

    monitor-enter v2

    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 412
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tpad/ux/funlocker/RenderView;->updateTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 418
    return-void

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 417
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public JS_PlayMedia(Ljava/lang/String;I)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getSoundIsCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->playVoice(Ljava/lang/String;I)V

    .line 749
    :cond_0
    return-void
.end method

.method public JS_SavedValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 753
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 754
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "tpadsz_lock_curr_use"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 755
    return-void
.end method

.method public JS_StartCommonFunc(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0xa

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 767
    const-string v2, "deblock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 768
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mUnlockHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 769
    :cond_1
    const-string v2, "camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CAMERA_BUTTON"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 771
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 772
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mUnlockHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 773
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v2, "phonebook"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 774
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .restart local v0    # "intent":Landroid/content/Intent;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 776
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 777
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 778
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v2, "calllog"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 779
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mCallNum:I

    if-lez v2, :cond_4

    .line 780
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->startActivity(I)V

    goto :goto_0

    .line 782
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->startActivity(I)V

    goto :goto_0

    .line 784
    :cond_5
    const-string v2, "message"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 785
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMsgNum:I

    if-lez v2, :cond_6

    .line 786
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->startActivity(I)V

    goto :goto_0

    .line 788
    :cond_6
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->startActivity(I)V

    goto :goto_0

    .line 790
    :cond_7
    const-string v2, "shake"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 791
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getShakeIsCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 792
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    .line 793
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 796
    :cond_8
    const-string v2, "playvoice"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 797
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getSoundIsCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->isPlayeOgg()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 799
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->SplitRetOgg(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->playAudioFile(ILandroid/media/SoundPool;)V

    goto/16 :goto_0

    .line 801
    :cond_9
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->SplitRetMp3(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->playAudioFile(ILandroid/media/SoundPool;)V

    goto/16 :goto_0

    .line 804
    :cond_a
    const-string v2, "setDataCount"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 805
    if-nez p1, :cond_b

    .line 807
    .local v1, "ret":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "LockScreenTPDataCount"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 809
    const-string v2, "KeyguardTP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UXLaunch -- setDataCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 805
    .end local v1    # "ret":Ljava/lang/String;
    :cond_b
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public JS_StartThirdApp(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 816
    return-void
.end method

.method public LoadLocalAllAudioFile(Ljava/lang/String;I)Landroid/media/SoundPool;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "num"    # I

    .prologue
    const/4 v3, 0x1

    .line 511
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Landroid/media/SoundPool;

    sget v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    .line 514
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new SoundPool CurrAudioMaxNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$6;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result p2

    .line 525
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadLocalAllAudioFile sound id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public callback(Lcom/tpad/ux/funlocker/RenderView$UXEngine;)V
    .locals 1
    .param p1, "uxEngine"    # Lcom/tpad/ux/funlocker/RenderView$UXEngine;

    .prologue
    .line 822
    invoke-virtual {p1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->getStartRet()I

    move-result v0

    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->unlock()V

    .line 826
    :cond_0
    invoke-virtual {p1}, Lcom/tpad/ux/funlocker/RenderView$UXEngine;->getRenderRet()I

    move-result v0

    if-gez v0, :cond_1

    .line 828
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->unlock()V

    .line 830
    :cond_1
    return-void
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 713
    const-string v1, "KeyguardTP"

    const-string v2, "cleanUp"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 717
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mVibrator:Landroid/os/Vibrator;

    .line 720
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 722
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mTimer:Ljava/util/Timer;

    .line 724
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->lock:[B

    monitor-enter v2

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 727
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    sget-object v3, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_STOP:Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-virtual {v1, v3}, Lcom/tpad/ux/funlocker/RenderView;->setRenderState(Lcom/tpad/ux/funlocker/RenderCondition;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 731
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->removeView(Landroid/view/View;)V

    .line 732
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    .line 733
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderViewLoaded:Z

    .line 735
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 736
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->isPlayeOgg()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 737
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->releaseOggSoundPool()V

    .line 741
    :goto_1
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 735
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 739
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->releaseMp3SoundPool()V

    goto :goto_1
.end method

.method public getUxBuff(Ljava/lang/String;)[B
    .locals 5
    .param p1, "uxfile"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 853
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 866
    :goto_0
    return-object v0

    .line 855
    :cond_0
    const/4 v1, 0x0

    .line 856
    .local v1, "fin":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 858
    .local v0, "buffer":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 859
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v4

    new-array v0, v4, [B

    .line 860
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 861
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 863
    :catch_0
    move-exception v4

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    :goto_1
    move-object v0, v3

    .line 866
    goto :goto_0

    .line 864
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v1    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v1, v2

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "fin":Ljava/io/FileInputStream;
    goto :goto_1

    .line 863
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public isBudSet()Z
    .locals 4

    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "use_thai_calendar"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "budSet":Ljava/lang/String;
    const-string v1, "KeyguardTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isbudSet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    const/4 v1, 0x1

    .line 392
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadPlaySoundMp3Res()V
    .locals 3

    .prologue
    .line 1042
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    sget v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    if-gt v0, v1, :cond_0

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->TPADSZ_LOCK_USE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/voice/playvoice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->LoadLocalAllAudioFile(Ljava/lang/String;I)Landroid/media/SoundPool;

    .line 1042
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1046
    :cond_0
    return-void
.end method

.method public loadPlaySoundOggRes()V
    .locals 3

    .prologue
    .line 531
    sget v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    sget v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudiaoStart:I

    add-int v0, v1, v2

    .local v0, "j":I
    :goto_0
    sget v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudiaoStart:I

    if-le v0, v1, :cond_0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->TPADSZ_LOCK_USE_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/voice/playvoice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->LoadLocalAllAudioFile(Ljava/lang/String;I)Landroid/media/SoundPool;

    .line 531
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 536
    :cond_0
    return-void
.end method

.method public onBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    .line 1089
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onBouncerChanged(Z)V

    .line 1090
    if-nez p1, :cond_0

    .line 1091
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mIsOnResume:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    if-eqz v1, :cond_0

    .line 1093
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v1}, Lcom/tpad/ux/funlocker/RenderView;->resetView()V

    .line 1094
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    sget-object v2, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_START:Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-virtual {v1, v2}, Lcom/tpad/ux/funlocker/RenderView;->setRenderState(Lcom/tpad/ux/funlocker/RenderCondition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCleanup()V
    .locals 2

    .prologue
    .line 1071
    const-string v0, "KeyguardTP"

    const-string v1, "onCleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onCleanup()V

    .line 1073
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->cleanUp()V

    .line 1074
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1063
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onDetachedFromWindow()V

    .line 1064
    const-string v0, "KeyguardTP"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return-void
.end method

.method public onHide(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->onPause()V

    .line 699
    if-nez p1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mCoverView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 702
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v6, 0xa

    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 896
    const-string v1, "KeyguardTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->pokeWakelock()V

    .line 899
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey1Down:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_2

    .line 900
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey1Down:Z

    .line 901
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mUnlockHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 906
    :cond_0
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 918
    invoke-super {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_1
    return v0

    .line 902
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey2Down:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 903
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey2Down:Z

    .line 904
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mUnlockHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 908
    :sswitch_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey1Down:Z

    .line 909
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 913
    :sswitch_1
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey2Down:Z

    .line 914
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 906
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 882
    sparse-switch p1, :sswitch_data_0

    .line 890
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 884
    :sswitch_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey1Down:Z

    goto :goto_0

    .line 887
    :sswitch_1
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mForceUnlockKey2Down:Z

    goto :goto_0

    .line 882
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method protected onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 223
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged showing= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-nez p1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->cleanUp()V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->setViews()V

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->refreshInfo()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 681
    const-string v1, "KeyguardTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============onPause========== mRenderView ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onPause()V

    .line 684
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    if-eqz v1, :cond_0

    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    sget-object v2, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_PAUSE:Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-virtual {v1, v2}, Lcom/tpad/ux/funlocker/RenderView;->setRenderState(Lcom/tpad/ux/funlocker/RenderCondition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onRefreshInfo(II)V
    .locals 3
    .param p1, "msgNum"    # I
    .param p2, "callNum"    # I

    .prologue
    .line 970
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshInfo, msgNum= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callNum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mCallNum:I

    .line 972
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMsgNum:I

    .line 973
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->refreshInfo()V

    .line 974
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 662
    const-string v1, "KeyguardTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============onResume========== mRenderView ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->onResume()V

    .line 665
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    if-eqz v1, :cond_0

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mMsgNum:I

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mCallNum:I

    invoke-virtual {v1, v2, v3}, Lcom/tpad/ux/funlocker/RenderView;->setCountOfCallAndSms(II)V

    .line 668
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v1}, Lcom/tpad/ux/funlocker/RenderView;->resetView()V

    .line 669
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    sget-object v2, Lcom/tpad/ux/funlocker/RenderCondition;->RENDER_START:Lcom/tpad/ux/funlocker/RenderCondition;

    invoke-virtual {v1, v2}, Lcom/tpad/ux/funlocker/RenderView;->setRenderState(Lcom/tpad/ux/funlocker/RenderCondition;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 674
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->setViews()V

    .line 675
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->refreshInfo()V

    goto :goto_0
.end method

.method public onShake(III)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "shake"    # I

    .prologue
    .line 843
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->getGravitySensingIsCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mRenderView:Lcom/tpad/ux/funlocker/RenderView;

    invoke-virtual {v1, p1, p2, p3}, Lcom/tpad/ux/funlocker/RenderView;->shakeView(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 847
    :catch_0
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 2

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->timerClock()V

    .line 708
    const-string v0, "KeyguardTP"

    const-string v1, "onTimeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 836
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 837
    .local v0, "action":I
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->pokeWakelock()V

    .line 838
    return-void
.end method

.method public playAudioFile(ILandroid/media/SoundPool;)V
    .locals 8
    .param p1, "soundID"    # I
    .param p2, "soundpool"    # Landroid/media/SoundPool;

    .prologue
    const/4 v4, 0x0

    .line 436
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAudioFile soundID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    if-eqz p2, :cond_0

    .line 438
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAudioFile streamVolume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->streamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->streamVolume:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->streamVolume:I

    int-to-float v3, v0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p2

    move v1, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .line 440
    .local v7, "result":I
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAudioFile result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v7    # "result":I
    :goto_0
    return-void

    .line 442
    :cond_0
    const-string v0, "KeyguardTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "soundpool soundID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseMp3SoundPool()V
    .locals 4

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    .line 1050
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 1051
    const/4 v1, -0x1

    sget v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    if-eq v1, v2, :cond_0

    .line 1052
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    if-gt v0, v1, :cond_0

    .line 1053
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    .line 1052
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1055
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    .line 1057
    :cond_1
    const-string v1, "KeyguardTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoundPool is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    return-void
.end method

.method public releaseOggSoundPool()V
    .locals 4

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 449
    const/4 v1, -0x1

    sget v2, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    if-eq v1, v2, :cond_0

    .line 450
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->CurrAudioMaxNum:I

    if-gt v0, v1, :cond_0

    .line 451
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->unload(I)Z

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    .end local v0    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    .line 455
    :cond_1
    const-string v1, "KeyguardTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSoundPool is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    return-void
.end method
