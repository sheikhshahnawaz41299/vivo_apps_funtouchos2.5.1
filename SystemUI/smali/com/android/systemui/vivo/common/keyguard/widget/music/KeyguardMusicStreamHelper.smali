.class public Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;
.super Ljava/lang/Object;
.source "KeyguardMusicStreamHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;,
        Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;
    }
.end annotation


# static fields
.field private static final MSG_ASYNC_UPDATE_VOLUME:I = 0x3

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_UPDATE_SUMMARIES:I = 0x1

.field private static final MSG_VOLUME_CHANGED:I = 0x2

.field private static final SCALE_MAX_SEEK_BAR_PROGRESS:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAsyncHandler:Landroid/os/Handler;

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDefaulUri:Landroid/net/Uri;

.field private mFingerDown:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSilent:Z

.field private mKeyDown:Z

.field private mMusicStreamMaxVolume:I

.field private volatile mMusicStreamProgress:I

.field private mNeedNewRing:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mReflectSeekBar:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStreamType:I

.field private mTypeCurrentSample:I

.field private mUpdateVolumeThread:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mTypeCurrentSample:I

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mReflectSeekBar:Ljava/lang/Class;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mNeedNewRing:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mFingerDown:Z

    .line 40
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mKeyDown:Z

    .line 45
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mStreamType:I

    .line 50
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mHandler:Landroid/os/Handler;

    .line 204
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mContext:Landroid/content/Context;

    .line 68
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->setStreamType(I)V

    .line 71
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;

    const-string v1, "keyguard_update_volume"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mUpdateVolumeThread:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mUpdateVolumeThread:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;->start()V

    .line 73
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mUpdateVolumeThread:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mUpdateVolumeThread:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAsyncHandler:Landroid/os/Handler;

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->registerMusicBroadcast()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mStreamType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->setProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->hanldeSetProgress(I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->setVolumne(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mFingerDown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mFingerDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mKeyDown:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mNeedNewRing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private disableClick()V
    .locals 7

    .prologue
    .line 121
    :try_start_0
    const-string v2, "android.widget.SeekBar"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mReflectSeekBar:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mReflectSeekBar:Ljava/lang/Class;

    const-string v3, "setNonClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 127
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 129
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private hanldeSetProgress(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 145
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set progress , volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    mul-int/lit8 p1, p1, 0x14

    .line 147
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 148
    return-void
.end method

.method private registerMusicBroadcast()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    return-void
.end method

.method private setProgress()V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 137
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 138
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mHandler:Landroid/os/Handler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    return-void
.end method

.method private setVolumne(I)V
    .locals 5
    .param p1, "progress"    # I

    .prologue
    const/4 v4, 0x3

    .line 154
    div-int/lit8 p1, p1, 0x14

    .line 155
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mMusicStreamProgress:I

    if-eq v1, p1, :cond_0

    .line 156
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set volume , progress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mMusicStreamProgress:I

    .line 159
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 161
    .local v0, "message":Landroid/os/Message;
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mMusicStreamProgress:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 162
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mStreamType:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 163
    iput v4, v0, Landroid/os/Message;->what:I

    .line 164
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public leave()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mUpdateVolumeThread:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;->quit()Z

    .line 117
    return-void
.end method

.method public resetProgress()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mMusicStreamMaxVolume:I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mMusicStreamMaxVolume:I

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->setProgress()V

    .line 112
    :cond_0
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mSeekBar:Landroid/widget/SeekBar;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$OnMusicSeekbarChangeListener;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mMusicStreamMaxVolume:I

    .line 101
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mMusicStreamMaxVolume:I

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->setProgress()V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->disableClick()V

    .line 104
    return-void
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mStreamType:I

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->resetProgress()V

    .line 95
    return-void
.end method

.method public stopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 236
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mIsSilent:Z

    .line 237
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->TAG:Ljava/lang/String;

    const-string v1, "stopSample"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mRingtone:Landroid/media/Ringtone;

    .line 241
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->mNeedNewRing:Z

    .line 243
    :cond_0
    return-void
.end method
