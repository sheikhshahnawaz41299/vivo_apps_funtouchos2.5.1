.class public Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
.super Landroid/widget/FrameLayout;
.source "MusicControlPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;
    }
.end annotation


# static fields
.field private static final ACTION_FAVORITE_CHANGED:Ljava/lang/String; = "com.android.music.favoritechanged"

.field private static final ACTION_MUSIC_INFO_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final ACTION_MUSIC_POSITION_CHANGED:Ljava/lang/String; = "com.android.music.send_music_position"

.field private static final ACTION_SEND_ONLINE_ALBUM_URL:Ljava/lang/String; = "com.android.music.send_music_album_url"

.field private static final ACTION_SEND_ONLINE_INFOS:Ljava/lang/String; = "com.android.music.send_music_info"

.field private static final CMDNEXT:Ljava/lang/String; = "next"

.field private static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field private static final FORCE_CLEAR_PACKAGE_DATA:Ljava/lang/String; = "android.intent.action.CLEAR_PACKAGE_DATA.com.android.bbkmusic"

.field private static final FORCE_KILL_SERVICE:Ljava/lang/String; = "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

.field private static final FORCE_STOP_MUSIC:Ljava/lang/String; = "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

.field private static final HIFI_APP_STATE_CHANGED:Ljava/lang/String; = "com.vivo.action.HIFI_APP_STATE_CHANGED"

.field private static final HIFI_BATTERY_LIMIT:F = 0.1f

.field private static final HIFI_CAN_OPEN:I = 0x1

.field private static final HIFI_HEADSET_NOT_PLUGGED:I = 0x2

.field private static final HIFI_LOW_BATTERY:I = 0x3

.field private static final HIFI_OFF:I = 0x0

.field private static final HIFI_ON:I = 0x1

.field private static final HIFI_SETTINGS_MUSIC:Ljava/lang/String; = "hifi_settings_music"

.field private static final LATEST_LOCAL_ARTIST_NAME:Ljava/lang/String; = "latest_local_artist_name"

.field private static final LATEST_LOCAL_MUSIC_NAME:Ljava/lang/String; = "latest_local_music_name"

.field private static final LOCAL_MUSIC_UPDATE_ALBUM_IMG:Ljava/lang/String; = "com.android.music.update.photo"

.field private static final META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final MSG_FORCE_STOP_MUSIC:I = 0x2

.field private static final MSG_HEADSET_PLUG:I = 0x3

.field private static final MSG_MUSIC_INFO_CHANGED:I = 0x5

.field private static final MUSIC_CLS:Ljava/lang/String; = "com.android.bbkmusic.service.MusicService"

.field private static final MUSIC_CONTROL_CMD_DELETE:Ljava/lang/String; = "delete"

.field private static final MUSIC_CONTROL_CMD_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final MUSIC_CONTROL_CMD_NAME:Ljava/lang/String; = "command"

.field private static final MUSIC_CONTROL_CMD_NEXT:Ljava/lang/String; = "next"

.field private static final MUSIC_CONTROL_CMD_NOOP:Ljava/lang/String; = "nooperation"

.field private static final MUSIC_CONTROL_CMD_PAUSE:Ljava/lang/String; = "togglepause"

.field private static final MUSIC_CONTROL_CMD_PREV:Ljava/lang/String; = "previous"

.field private static final MUSIC_INFORMATION_TO_LOCKSCREEN:Ljava/lang/String; = "com.android.intent.MUSIC_INFORMATION_TO_LOCKSCREEN"

.field private static final MUSIC_PKG:Ljava/lang/String; = "com.android.bbkmusic"

.field private static final MUSIC_SERVICE:Ljava/lang/String; = "com.android.bbkmusic.action.service.start"

.field private static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field private static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final PREV_NEXT_ACTION:Ljava/lang/String; = "com.android.bbkmusic.prev.next"

.field private static final QUEUE_CHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field private static final TAG:Ljava/lang/String;

.field private static final WIDGET_SHINGING:Ljava/lang/String; = "widget.shining"


# instance fields
.field private mArtistName:Landroid/widget/TextView;

.field private mBatteryBeyondThreshold:Z

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mFavoriteBtn:Landroid/widget/ImageButton;

.field private mFirstBoot:Z

.field private mHandler:Landroid/os/Handler;

.field private mHeadSetPluged:Z

.field private mHiFiBtn:Landroid/widget/ImageButton;

.field private mHiFiEnabled:Z

.field private mHiFiTipToast:Landroid/widget/Toast;

.field private mIsCharging:Z

.field private mIsHigherVersion:Z

.field private mIsOnline:Z

.field private mIsRadio:Z

.field private mIsSupportHiFi:Z

.field private mLastClickTimeMillis:J

.field private mLatestLocalArtistName:Ljava/lang/String;

.field private mLatestLocalMusicName:Ljava/lang/String;

.field private mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

.field private mMusicName:Landroid/widget/TextView;

.field private mNeedCommit:Z

.field private mNextBtn:Landroid/widget/ImageButton;

.field private mPauseBtn:Landroid/widget/ImageButton;

.field private mPlayBtn:Landroid/widget/ImageButton;

.field private mPrevBtn:Landroid/widget/ImageButton;

.field private mReceivers:Landroid/content/BroadcastReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 233
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 218
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsSupportHiFi:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsCharging:Z

    .line 84
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHeadSetPluged:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mBatteryBeyondThreshold:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsRadio:Z

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLastClickTimeMillis:J

    .line 102
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsOnline:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFirstBoot:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mNeedCommit:Z

    .line 114
    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalMusicName:Ljava/lang/String;

    .line 115
    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalArtistName:Ljava/lang/String;

    .line 123
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$1;-><init>(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;-><init>(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mReceivers:Landroid/content/BroadcastReceiver;

    .line 219
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 221
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->isHigherVersion()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsHigherVersion:Z

    .line 223
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    .line 224
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isFeatureSupportHifi()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsSupportHiFi:Z

    .line 225
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->handleMusicInfoChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->handleHeadSetChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHeadSetPluged:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
    .param p1, "x1"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateButtonStateAndText(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateFavoriteState(ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateHiFiEnabledState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiEnabled:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateHiFiState(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->handleForceStopMusic()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->isWidgetHidden()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsSupportHiFi:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsCharging:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mBatteryBeyondThreshold:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->syncUpHifiState(Z)V

    return-void
.end method

.method private doDelete()V
    .locals 1

    .prologue
    .line 654
    const-string v0, "delete"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->startServiceLocked(Ljava/lang/String;)V

    .line 655
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->notifyMusicUpdateInfo()V

    .line 656
    return-void
.end method

.method private doFavorite()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->isLogin(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->performCollapse()V

    .line 672
    :cond_0
    const-string v0, "favorite"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->startServiceLocked(Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method private doNext()V
    .locals 1

    .prologue
    .line 659
    const-string v0, "next"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->startServiceLocked(Ljava/lang/String;)V

    .line 660
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->notifyMusicUpdateInfo()V

    .line 661
    return-void
.end method

.method private doPause()V
    .locals 1

    .prologue
    .line 664
    const-string v0, "togglepause"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->startServiceLocked(Ljava/lang/String;)V

    .line 665
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->notifyMusicUpdateInfo()V

    .line 666
    return-void
.end method

.method private doPrev()V
    .locals 1

    .prologue
    .line 649
    const-string v0, "previous"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->startServiceLocked(Ljava/lang/String;)V

    .line 650
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->notifyMusicUpdateInfo()V

    .line 651
    return-void
.end method

.method private enableClickAgain()Z
    .locals 7

    .prologue
    .line 573
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 574
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLastClickTimeMillis:J

    sub-long v0, v2, v4

    .line 575
    .local v0, "diff":J
    sget-object v4, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "now = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " diff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-wide/16 v4, 0x190

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 577
    const/4 v4, 0x0

    .line 580
    :goto_0
    return v4

    .line 579
    :cond_0
    iput-wide v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLastClickTimeMillis:J

    .line 580
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private generateIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 712
    const/4 v1, 0x0

    .line 713
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsHigherVersion:Z

    if-eqz v3, :cond_0

    .line 714
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.bbkmusic"

    const-string v4, "com.android.bbkmusic.service.MusicService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    .local v2, "serviceName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.bbkmusic.action.service.start"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 718
    const-string v3, "command"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    :goto_0
    return-object v1

    .line 720
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-boolean v3, v3, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isOnLine:Z

    if-eqz v3, :cond_2

    .line 721
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.bbkmusic"

    const-string v4, "com.bbk.onlinemusic.OnLineMusicPlaybackService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .restart local v2    # "serviceName":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-boolean v3, v3, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    if-eqz v3, :cond_1

    .line 725
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.delete"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_1
    const-string v3, "command"

    const-string v4, "previous"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 728
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 734
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    :cond_2
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.bbkmusic"

    const-string v4, "com.android.bbkmusic.MediaPlaybackService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .restart local v2    # "serviceName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 738
    .local v0, "action":Ljava/lang/String;
    const-string v3, "previous"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 739
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 749
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_2
    const-string v3, "app_flag"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 750
    const-string v3, "widget_flag"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 741
    :cond_4
    const-string v3, "next"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 742
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 744
    :cond_5
    const-string v3, "togglepause"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 745
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method private getHiFiOpenCondition()I
    .locals 3

    .prologue
    .line 609
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCharged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mBatteryUp10:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mBatteryBeyondThreshold:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mHeadSetPlug:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHeadSetPluged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsCharging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mBatteryBeyondThreshold:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHeadSetPluged:Z

    if-eqz v0, :cond_1

    .line 613
    const/4 v0, 0x1

    .line 617
    :goto_0
    return v0

    .line 614
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHeadSetPluged:Z

    if-nez v0, :cond_2

    .line 615
    const/4 v0, 0x2

    goto :goto_0

    .line 617
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getNativeAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 766
    if-nez p1, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-object v3

    .line 769
    :cond_1
    const-string v0, "BBKOnLineService"

    .line 770
    .local v0, "ACCOUNT_TYPE":Ljava/lang/String;
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 771
    .local v2, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 772
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 773
    const/4 v3, 0x0

    aget-object v3, v1, v3

    goto :goto_0
.end method

.method private handleForceStopMusic()V
    .locals 0

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->resetMusicInfo()V

    .line 646
    return-void
.end method

.method private handleHeadSetChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 544
    const-string v0, "state"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHeadSetPluged:Z

    .line 545
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->syncUpHifiState(Z)V

    .line 546
    return-void

    .line 544
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMusicInfoChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->isWidgetHidden()Z

    move-result v1

    if-nez v1, :cond_3

    .line 443
    const/4 v0, 0x0

    .line 445
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v1, "updatePlaylist"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 449
    :goto_0
    if-eqz v0, :cond_2

    .line 450
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const-string v2, "isRadio"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    .line 451
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const-string v2, "isFavorite"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isFavorite:Z

    .line 452
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const-string v2, "ISONLINE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isOnLine:Z

    .line 453
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const-string v2, "ISPLAYING"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isPlaying:Z

    .line 454
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const-string v2, "radio_name"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->radioName:Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const-string v2, "track"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const-string v2, "artist"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    .line 458
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 459
    sget-object v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    const-string v2, "musicName is null, get again!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const-string v2, "track"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0245

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 464
    sget-object v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    const-string v2, "artistName is null, get again!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const-string v2, "artist"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-boolean v1, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->radioName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-object v3, v3, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-object v3, v3, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->radioName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    .line 473
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateButtonStateAndText(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;)V

    .line 475
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    return-void

    .line 446
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private isHigherVersion()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 585
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 586
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 588
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.android.bbkmusic"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 590
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v6, "1."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v6, "2.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 595
    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isLogin(Landroid/content/Context;)Z
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 758
    const/4 v0, 0x0

    .line 759
    .local v0, "isLogin":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->getNativeAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 760
    const/4 v0, 0x1

    .line 762
    :cond_0
    return v0
.end method

.method private isWidgetHidden()Z
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method private notifyMusicUpdateInfo()V
    .locals 2

    .prologue
    .line 704
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsHigherVersion:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsOnline:Z

    if-eqz v1, :cond_0

    .line 705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.request_music_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, "onlineIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 709
    .end local v0    # "onlineIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 399
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 400
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v2, "next"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v2, "previous"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v2, "com.android.bbkmusic.prev.next"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v2, "APPWIDGET_UPDATENEEDCLEAR"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v2, "widget.shining"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v2, "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 410
    const-string v2, "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v2, "android.intent.action.CLEAR_PACKAGE_DATA.com.android.bbkmusic"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 412
    const-string v2, "com.android.music.send_music_info"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 413
    const-string v2, "com.android.music.update.photo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    const-string v2, "com.android.music.send_music_album_url"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v2, "com.android.music.send_music_position"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v2, "com.android.intent.MUSIC_INFORMATION_TO_LOCKSCREEN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    const-string v2, "com.android.music.favoritechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mReceivers:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 422
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mReceivers:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsSupportHiFi:Z

    if-eqz v2, :cond_0

    .line 429
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 430
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    const-string v2, "com.vivo.action.HIFI_APP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mReceivers:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 435
    :cond_0
    return-void
.end method

.method private resetHiFiState()V
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateHiFiEnabledState()V

    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateHiFiState(Z)V

    .line 331
    return-void
.end method

.method private resetMusicInfo()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 676
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    .line 677
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isFavorite:Z

    .line 678
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isOnLine:Z

    .line 679
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isPlaying:Z

    .line 680
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->radioName:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalMusicName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalMusicName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    .line 687
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalArtistName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalArtistName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    .line 693
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateButtonStateAndText(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;)V

    .line 694
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "latest_local_music_name"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0245

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    goto :goto_0

    .line 690
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "latest_local_artist_name"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0244

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    goto :goto_1
.end method

.method private sendBroadcastForHiFi()V
    .locals 2

    .prologue
    .line 640
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.action.HIFI_APP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 642
    return-void
.end method

.method private setHiFiEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 629
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->getHiFiOpenCondition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 637
    :goto_0
    return-void

    .line 631
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiEnabled:Z

    .line 632
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    const-string v2, "hifi_settings_music"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 634
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHiFiEnabled, mHiFiEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->sendBroadcastForHiFi()V

    goto :goto_0

    .line 632
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "toast"    # I

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFirstBoot:Z

    if-eqz v0, :cond_1

    .line 312
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFirstBoot:Z

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isUpSlided()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiTipToast:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiTipToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 322
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiTipToast:Landroid/widget/Toast;

    .line 324
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiTipToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startServiceLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 697
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->generateIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 698
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 699
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 701
    :cond_0
    return-void
.end method

.method private syncUpHifiState(Z)V
    .locals 3
    .param p1, "toastOut"    # Z

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->getHiFiOpenCondition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 373
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiEnabled:Z

    if-eqz v0, :cond_0

    .line 374
    if-eqz p1, :cond_1

    .line 375
    const v0, 0x7f0e0241

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->showToast(I)V

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0205d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 381
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiEnabled:Z

    if-eqz v0, :cond_2

    .line 382
    if-eqz p1, :cond_2

    .line 383
    const v0, 0x7f0e0243

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->showToast(I)V

    .line 390
    :cond_2
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private toggleHiFiState()V
    .locals 2

    .prologue
    .line 362
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiEnabled:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 363
    .local v0, "toggled":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateHiFiState(Z)V

    .line 365
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->setHiFiEnabled(Z)V

    .line 366
    return-void

    .line 362
    .end local v0    # "toggled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mReceivers:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    return-void
.end method

.method private updateButtonStateAndText(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;)V
    .locals 4
    .param p1, "musicInfo"    # Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 478
    if-eqz p1, :cond_7

    .line 479
    iget-boolean v0, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isPlaying:Z

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 492
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mArtistName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mNeedCommit:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isOnLine:Z

    if-eqz v0, :cond_3

    .line 496
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    const-string v1, "commit"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "latest_local_music_name"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalMusicName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 498
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "latest_local_artist_name"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalArtistName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 499
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 500
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mNeedCommit:Z

    .line 512
    :cond_1
    :goto_1
    iget-boolean v0, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    if-eqz v0, :cond_6

    .line 513
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPrevBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0205e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 518
    :goto_2
    iget-boolean v0, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    iget-boolean v1, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isFavorite:Z

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->updateFavoriteState(ZZ)V

    .line 520
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "musicName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", artistName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radioName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->radioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isOnLine = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isOnLine:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPlaying = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFavorite = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isFavorite:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_3
    return-void

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 501
    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isOnLine:Z

    if-nez v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalMusicName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    if-eq v0, v1, :cond_4

    .line 503
    iget-object v0, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalMusicName:Ljava/lang/String;

    .line 505
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalArtistName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    if-eq v0, v1, :cond_5

    .line 506
    iget-object v0, p1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mLatestLocalArtistName:Ljava/lang/String;

    .line 508
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mNeedCommit:Z

    goto/16 :goto_1

    .line 515
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPrevBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0205dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 524
    :cond_7
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    const-string v1, "updateButtonStateAndText error,something maybe wrong."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private updateFavoriteState(ZZ)V
    .locals 3
    .param p1, "isRadioOn"    # Z
    .param p2, "isFavorite"    # Z

    .prologue
    .line 529
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFavoriteState, isRadioOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFavorite = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    if-eqz p1, :cond_1

    .line 531
    if-eqz p2, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFavoriteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0205e4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 536
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFavoriteBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 541
    :goto_1
    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFavoriteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0205e1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPrevBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0205dd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 539
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFavoriteBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateHiFiEnabledState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 622
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    const-string v4, "hifi_settings_music"

    invoke-static {v3, v4, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 624
    .local v0, "hiFiState":I
    if-ne v0, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiEnabled:Z

    .line 625
    sget-object v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHiFiEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    return-void

    :cond_0
    move v1, v2

    .line 624
    goto :goto_0
.end method

.method private updateHiFiState(Z)V
    .locals 4
    .param p1, "open"    # Z

    .prologue
    .line 336
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsSupportHiFi:Z

    if-nez v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->getHiFiOpenCondition()I

    move-result v0

    .line 339
    .local v0, "condition":I
    sget-object v1, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "condition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    if-eqz p1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0205d3

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 344
    const v1, 0x7f0e0241

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->showToast(I)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiBtn:Landroid/widget/ImageButton;

    const v2, 0x7f0205d2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 347
    const v1, 0x7f0e0242

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->showToast(I)V

    goto :goto_0

    .line 351
    :pswitch_1
    const v1, 0x7f0e023f

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->showToast(I)V

    goto :goto_0

    .line 354
    :pswitch_2
    const v1, 0x7f0e0240

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->showToast(I)V

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 241
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 242
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->registerReceivers()V

    .line 246
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsSupportHiFi:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hifi_settings_music"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$3;-><init>(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 257
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPlayBtn:Landroid/widget/ImageButton;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPauseBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 555
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->doPause()V

    .line 570
    :cond_1
    :goto_0
    return-void

    .line 556
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPrevBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicInfo:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    if-nez v0, :cond_3

    .line 558
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->doPrev()V

    goto :goto_0

    .line 560
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->doDelete()V

    goto :goto_0

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mNextBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    .line 563
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->doNext()V

    goto :goto_0

    .line 564
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_6

    .line 565
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->enableClickAgain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->toggleHiFiState()V

    goto :goto_0

    .line 567
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFavoriteBtn:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->doFavorite()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 262
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->unregisterReceivers()V

    .line 265
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 269
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 270
    sget-object v3, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->TAG:Ljava/lang/String;

    const-string v4, "onFinishInflate"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 272
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040087

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 275
    .local v2, "musicLayout":Landroid/widget/RelativeLayout;
    const v3, 0x7f110276

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPrevBtn:Landroid/widget/ImageButton;

    .line 277
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPrevBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    const v3, 0x7f110277

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mNextBtn:Landroid/widget/ImageButton;

    .line 280
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v3, 0x7f110274

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPlayBtn:Landroid/widget/ImageButton;

    .line 283
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v3, 0x7f110275

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPauseBtn:Landroid/widget/ImageButton;

    .line 286
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v3, 0x7f110272

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFavoriteBtn:Landroid/widget/ImageButton;

    .line 289
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mFavoriteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v3, 0x7f110273

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiBtn:Landroid/widget/ImageButton;

    .line 293
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mIsSupportHiFi:Z

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->resetHiFiState()V

    .line 300
    :goto_0
    const v3, 0x7f110279

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mMusicName:Landroid/widget/TextView;

    .line 301
    const v3, 0x7f110278

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mArtistName:Landroid/widget/TextView;

    .line 303
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 305
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->resetMusicInfo()V

    .line 308
    return-void

    .line 297
    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mHiFiBtn:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUpslideHelper(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 0
    .param p1, "upSlideHelper"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 237
    return-void
.end method
