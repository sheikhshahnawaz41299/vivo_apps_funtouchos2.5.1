.class public Lcom/vivo/settings/BBKSoundStreamManager;
.super Ljava/lang/Object;
.source "BBKSoundStreamManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/BBKSoundStreamManager$MyListener;
    }
.end annotation


# static fields
.field private static final ALARM_VOLUME_VALUE:Ljava/lang/String; = "alarm_v"

.field private static final MUSIC_VOLUME_VALUE:Ljava/lang/String; = "music_v"

.field private static final RING_VOLUME_VALUE:Ljava/lang/String; = "ring_v"

.field private static final TAG:Ljava/lang/String; = "BBKSoundStreamManager"


# instance fields
.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDefaulUri:Landroid/net/Uri;

.field private mFilter:Landroid/content/IntentFilter;

.field private mFingerDown:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSilent:Z

.field private mKeyDown:Z

.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vivo/settings/BBKSoundStreamManager$MyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMaps:Ljava/util/HashMap;
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

.field private mNeedNewRing:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Landroid/media/Ringtone;

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private mSoundSeekPrefs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/vivo/settings/preference/SeekBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeCurrentSample:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mSoundSeekPrefs:Landroid/util/SparseArray;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mListeners:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mMaps:Ljava/util/HashMap;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mTypeCurrentSample:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mNeedNewRing:Z

    .line 45
    iput-boolean v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFingerDown:Z

    .line 46
    iput-boolean v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mKeyDown:Z

    .line 48
    new-instance v0, Lcom/vivo/settings/BBKSoundStreamManager$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/BBKSoundStreamManager$1;-><init>(Lcom/vivo/settings/BBKSoundStreamManager;)V

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/vivo/settings/BBKSoundStreamManager$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/BBKSoundStreamManager$2;-><init>(Lcom/vivo/settings/BBKSoundStreamManager;)V

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 88
    new-instance v0, Lcom/vivo/settings/BBKSoundStreamManager$3;

    invoke-direct {v0, p0}, Lcom/vivo/settings/BBKSoundStreamManager$3;-><init>(Lcom/vivo/settings/BBKSoundStreamManager;)V

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iput-object p1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/vivo/settings/SimUtils;

    invoke-direct {v0, p1}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/BBKSoundStreamManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/BBKSoundStreamManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/BBKSoundStreamManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mMaps:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/BBKSoundStreamManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/BBKSoundStreamManager;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/vivo/settings/BBKSoundStreamManager;->sample(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/BBKSoundStreamManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/BBKSoundStreamManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/BBKSoundStreamManager;

    .prologue
    .line 24
    iget v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mTypeCurrentSample:I

    return v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/BBKSoundStreamManager;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/BBKSoundStreamManager;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/vivo/settings/BBKSoundStreamManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/BBKSoundStreamManager;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFingerDown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vivo/settings/BBKSoundStreamManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/BBKSoundStreamManager;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mKeyDown:Z

    return v0
.end method

.method static synthetic access$802(Lcom/vivo/settings/BBKSoundStreamManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/BBKSoundStreamManager;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mNeedNewRing:Z

    return p1
.end method

.method private getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    if-nez v0, :cond_0

    .line 268
    packed-switch p1, :pswitch_data_0

    .line 286
    :goto_0
    const-string v0, "BBKSoundStreamManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Ringtone with type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mDefaulUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mDefaulUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    return-object v0

    .line 270
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mDefaulUri:Landroid/net/Uri;

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mDefaulUri:Landroid/net/Uri;

    invoke-static {v0, v2, v1}, Lcom/vivo/settings/SoundSettings;->getUriFile(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mDefaulUri:Landroid/net/Uri;

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mDefaulUri:Landroid/net/Uri;

    goto :goto_1

    .line 278
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mDefaulUri:Landroid/net/Uri;

    goto :goto_0

    .line 281
    :pswitch_2
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mDefaulUri:Landroid/net/Uri;

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private postSetVolume(II)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "type"    # I

    .prologue
    .line 197
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 198
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 199
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 200
    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 202
    return-void
.end method

.method private sample(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 237
    const-string v5, "BBKSoundStreamManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " on sample type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v5}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mTypeCurrentSample:I

    if-ne v5, p1, :cond_1

    .line 239
    const-string v3, "BBKSoundStreamManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is playing return"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const-string v5, "BBKSoundStreamManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNeedNewRing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mNeedNewRing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget v5, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mTypeCurrentSample:I

    if-ne v5, p1, :cond_2

    iget-boolean v5, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mNeedNewRing:Z

    if-eqz v5, :cond_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/BBKSoundStreamManager;->stopSample()V

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "isGranted":Z
    invoke-direct {p0, p1}, Lcom/vivo/settings/BBKSoundStreamManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v2

    .line 249
    .local v2, "ringTone":Landroid/media/Ringtone;
    iget-object v5, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v6, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, p1, v7}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v5

    if-ne v5, v3, :cond_6

    move v1, v3

    .line 251
    :goto_1
    iget-boolean v5, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFingerDown:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mKeyDown:Z

    if-eqz v5, :cond_4

    :cond_3
    move v4, v3

    :cond_4
    invoke-virtual {v2, v4}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 252
    invoke-virtual {v2, p1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 253
    if-eqz v1, :cond_0

    .line 255
    :try_start_0
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V

    .line 256
    iput p1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mTypeCurrentSample:I

    .line 257
    iget-boolean v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mKeyDown:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFingerDown:Z

    if-eqz v3, :cond_0

    .line 258
    :cond_5
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mNeedNewRing:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v3, "BBKSoundStreamManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri null === "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_6
    move v1, v4

    .line 249
    goto :goto_1
.end method


# virtual methods
.method public changeVolumeBy(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "amount"    # I

    .prologue
    .line 293
    const-string v2, "BBKSoundStreamManager"

    const-string v3, "change volume by"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mSoundSeekPrefs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/preference/SeekBarPreference;

    .line 295
    .local v1, "pref":Lcom/vivo/settings/preference/SeekBarPreference;
    if-nez v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    invoke-virtual {v1}, Lcom/vivo/settings/preference/SeekBarPreference;->getProgress()I

    move-result v2

    add-int v0, v2, p2

    .line 299
    .local v0, "newProgress":I
    if-ltz v0, :cond_0

    invoke-virtual {v1}, Lcom/vivo/settings/preference/SeekBarPreference;->getMax()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 300
    invoke-virtual {v1, v0}, Lcom/vivo/settings/preference/SeekBarPreference;->setProgress(I)V

    .line 301
    invoke-virtual {p0, v0, p1}, Lcom/vivo/settings/BBKSoundStreamManager;->setSound(II)V

    goto :goto_0
.end method

.method public noticeKeyStatus(Z)V
    .locals 2
    .param p1, "isDown"    # Z

    .prologue
    .line 306
    iput-boolean p1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mKeyDown:Z

    .line 307
    iget-boolean v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFingerDown:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mKeyDown:Z

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mNeedNewRing:Z

    .line 309
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 313
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 5

    .prologue
    .line 178
    const-string v3, "BBKSoundStreamManager"

    const-string v4, "pause"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/vivo/settings/BBKSoundStreamManager;->stop()V

    .line 180
    iget-object v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    iget-object v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 182
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 185
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v3, "ring_v"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 187
    const-string v3, "10233"

    invoke-static {v3, v2}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 188
    :cond_1
    const-string v3, "music_v"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    const-string v3, "10231"

    invoke-static {v3, v2}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 190
    :cond_2
    const-string v3, "alarm_v"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    const-string v3, "10232"

    invoke-static {v3, v2}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 194
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method public registerBBKSounds(Lcom/vivo/settings/preference/SeekBarPreference;I)V
    .locals 2
    .param p1, "pref"    # Lcom/vivo/settings/preference/SeekBarPreference;
    .param p2, "type"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mSoundSeekPrefs:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mListeners:Landroid/util/SparseArray;

    new-instance v1, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/vivo/settings/BBKSoundStreamManager$MyListener;-><init>(Lcom/vivo/settings/BBKSoundStreamManager;Lcom/vivo/settings/preference/SeekBarPreference;I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/preference/SeekBarPreference;->setMax(I)V

    .line 107
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 111
    invoke-virtual {p0}, Lcom/vivo/settings/BBKSoundStreamManager;->updateProgress()V

    .line 112
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFilter:Landroid/content/IntentFilter;

    .line 114
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public setSound(II)V
    .locals 8
    .param p1, "progress"    # I
    .param p2, "type"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    const-string v4, "BBKSoundStreamManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " set sound progress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    packed-switch p2, :pswitch_data_0

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    if-nez p1, :cond_4

    .line 209
    iget-object v4, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 210
    .local v0, "callVibrateSetting":I
    if-eqz v0, :cond_2

    move v1, v2

    .line 211
    .local v1, "vibrateSetting":Z
    :goto_1
    iget-object v5, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_3

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 213
    iget-object v4, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    if-eqz v1, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    iput-boolean v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mIsSilent:Z

    .line 216
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v2}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mTypeCurrentSample:I

    if-ne v2, v7, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/vivo/settings/BBKSoundStreamManager;->stopSample()V

    goto :goto_0

    .end local v1    # "vibrateSetting":Z
    :cond_2
    move v1, v3

    .line 210
    goto :goto_1

    .restart local v1    # "vibrateSetting":Z
    :cond_3
    move v4, v3

    .line 211
    goto :goto_2

    .line 219
    .end local v0    # "callVibrateSetting":I
    .end local v1    # "vibrateSetting":Z
    :cond_4
    if-lez p1, :cond_0

    .line 220
    iget-boolean v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mIsSilent:Z

    if-eqz v2, :cond_5

    .line 221
    iput-boolean v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mIsSilent:Z

    .line 222
    iget-object v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 224
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/BBKSoundStreamManager;->postSetVolume(II)V

    goto :goto_0

    .line 229
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/vivo/settings/BBKSoundStreamManager;->postSetVolume(II)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 172
    const-string v0, "BBKSoundStreamManager"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 174
    invoke-virtual {p0}, Lcom/vivo/settings/BBKSoundStreamManager;->stopSample()V

    .line 175
    return-void
.end method

.method public stopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 162
    iput-boolean v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mIsSilent:Z

    .line 163
    const-string v0, "BBKSoundStreamManager"

    const-string v1, "stopSample"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mRingtone:Landroid/media/Ringtone;

    .line 167
    iput-boolean v2, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mNeedNewRing:Z

    .line 169
    :cond_0
    return-void
.end method

.method public updateProgress()V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mSoundSeekPrefs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mSoundSeekPrefs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/BBKSoundStreamManager;->updateProgress(I)V

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return-void
.end method

.method public updateProgress(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 322
    iget-object v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mSoundSeekPrefs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/preference/SeekBarPreference;

    .line 323
    .local v0, "pref":Lcom/vivo/settings/preference/SeekBarPreference;
    if-eqz v0, :cond_1

    .line 324
    iget-object v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 325
    .local v2, "progress":I
    invoke-virtual {v0}, Lcom/vivo/settings/preference/SeekBarPreference;->getProgress()I

    move-result v1

    .line 326
    .local v1, "prefProgress":I
    const-string v3, "BBKSoundStreamManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prefProgress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    if-eq v1, v2, :cond_0

    .line 329
    invoke-virtual {v0, v2}, Lcom/vivo/settings/preference/SeekBarPreference;->setProgress(I)V

    .line 332
    :cond_0
    if-nez v2, :cond_1

    iget v3, p0, Lcom/vivo/settings/BBKSoundStreamManager;->mTypeCurrentSample:I

    if-ne v3, p1, :cond_1

    .line 333
    invoke-virtual {p0}, Lcom/vivo/settings/BBKSoundStreamManager;->stopSample()V

    .line 336
    .end local v1    # "prefProgress":I
    .end local v2    # "progress":I
    :cond_1
    return-void
.end method
