.class public Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
.super Ljava/lang/Object;
.source "KeyguardMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    }
.end annotation


# static fields
.field private static final ACTION_FAVORITE_CHANGED:Ljava/lang/String; = "com.android.music.favoritechanged"

.field private static final ACTION_MUSIC_POSITION_CHANGED:Ljava/lang/String; = "com.android.music.send_music_position"

.field private static final ACTION_SEND_ONLINE_ALBUM_URL:Ljava/lang/String; = "com.android.music.send_music_album_url"

.field private static final ACTION_SEND_ONLINE_INFOS:Ljava/lang/String; = "com.android.music.send_music_info"

.field private static final AUTO_HIDE_MUSIC_BROADCAST:Ljava/lang/String; = "com.android.systemui.keyguard.autohidemusic"

.field private static final DURATION_FAV_TOAST_TEXT:I = 0x7d0

.field private static final INTENT_MUSICSERVICE:Ljava/lang/String; = "com.android.bbkmusic.action.service.start"

.field private static final LOCAL_MUSIC_UPDATE_ALBUM_IMG:Ljava/lang/String; = "com.android.music.update.photo"

.field private static final MUSIC_CLS:Ljava/lang/String; = "com.android.bbkmusic.service.MusicService"

.field private static final MUSIC_CMDNAME:Ljava/lang/String; = "command"

.field private static final MUSIC_CMDNOOP:Ljava/lang/String; = "nooperation"

.field private static final MUSIC_CMD_DELETE:Ljava/lang/String; = "delete"

.field private static final MUSIC_CMD_FAVORITE:Ljava/lang/String; = "favorite"

.field private static final MUSIC_CMD_NEXT:Ljava/lang/String; = "next"

.field private static final MUSIC_CMD_PLAYORPAUSE:Ljava/lang/String; = "togglepause"

.field private static final MUSIC_CMD_PREVIOUS:Ljava/lang/String; = "previous"

.field private static final MUSIC_FORCESTOP:Ljava/lang/String; = "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

.field private static final MUSIC_INFORMATION_TO_LOCKSCREEN:Ljava/lang/String; = "com.android.intent.MUSIC_INFORMATION_TO_LOCKSCREEN"

.field private static final MUSIC_KILLSERVICE:Ljava/lang/String; = "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

.field private static final MUSIC_METACHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final MUSIC_NOOPERATION:Ljava/lang/String; = "com.android.music.musicservicecommand.nooperation"

.field private static final MUSIC_PKG:Ljava/lang/String; = "com.android.bbkmusic"

.field private static final MUSIC_PLAYBACKCOMPLETE:Ljava/lang/String; = "com.android.music.playbackcomplete"

.field private static final MUSIC_PLAYSTATECHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"

.field private static final MUSIC_QUEUECHANGED:Ljava/lang/String; = "com.android.music.queuechanged"

.field private static final MUSIC_WIDGETSHINGING:Ljava/lang/String; = "widget.shining"

.field private static final SWITCH_MUSIC_PANEL_DELAY:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "KeyguardMusicManager"

.field private static final sArtworkUri:Landroid/net/Uri;

.field public static final sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private static sInstance:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;


# instance fields
.field private autoHideMusicAlarmManager:Landroid/app/AlarmManager;

.field private autoHideMusicIntent:Landroid/app/PendingIntent;

.field private mAblumName:Ljava/lang/String;

.field private mAlbumNamelist:[Ljava/lang/String;

.field private mAlbumlist:[J

.field private mArtistName:Ljava/lang/String;

.field private mArtistlist:[Ljava/lang/String;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentPlayTime:J

.field private mDuration:J

.field private mHandler:Landroid/os/Handler;

.field private mIsFavoriteRadio:Z

.field private mIsHigherVerson:Z

.field private mIsOnline:Z

.field private mIsPlaying:Z

.field private mIsPrepared:Z

.field private mIsPrivate:Z

.field private mIsRadioOn:Z

.field private mLastClickFavBtnTimeMillis:J

.field private mLastPosition:I

.field private mMaxAblumWidth:I

.field private mPlayList:[J

.field private mPlayListLength:I

.field private mPosition:I

.field private mRadioName:Ljava/lang/String;

.field private mReceivers:Landroid/content/BroadcastReceiver;

.field private mRegisterReceiver:Z

.field private mTimeOfGetCurentPlayTime:J

.field private mTouchOnlineCache:Z

.field private mTrackId:J

.field private mTrackName:Ljava/lang/String;

.field private mTracklist:[Ljava/lang/String;

.field public mUpdateMusic:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sArtworkUri:Landroid/net/Uri;

    .line 78
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 80
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 81
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 82
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastClickFavBtnTimeMillis:J

    .line 89
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mRegisterReceiver:Z

    .line 90
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsHigherVerson:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsRadioOn:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsFavoriteRadio:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    .line 97
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPrepared:Z

    .line 98
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAlbumlist:[J

    .line 99
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTracklist:[Ljava/lang/String;

    .line 100
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mArtistlist:[Ljava/lang/String;

    .line 101
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAlbumNamelist:[Ljava/lang/String;

    .line 102
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    .line 103
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    .line 104
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastPosition:I

    .line 105
    iput-wide v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTrackId:J

    .line 107
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPlaying:Z

    .line 108
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPrivate:Z

    .line 109
    iput-wide v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mDuration:J

    .line 110
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayListLength:I

    .line 111
    iput-wide v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCurrentPlayTime:J

    .line 112
    iput-wide v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTimeOfGetCurentPlayTime:J

    .line 113
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mUpdateMusic:Z

    .line 114
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTrackName:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTouchOnlineCache:Z

    .line 116
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mReceivers:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->isHigherVerson()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsHigherVerson:Z

    .line 124
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mMaxAblumWidth:I

    .line 125
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->registerReceivers(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->updateMusicInforAndState(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleQueueChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPrivate:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPrivate:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTrackName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTrackId:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleInforToLockscreen()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleMediaEject()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleMediaMounted()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleLocalAlbumeChanged()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsRadioOn:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsRadioOn:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsFavoriteRadio:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsFavoriteRadio:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleFavoriteStateChanged()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleHideMusicView()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAblumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startAutoHideMusic()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleStopOrKill()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # [B

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleOnlineAlbumChange([B)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # J

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mDuration:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastPosition:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastPosition:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handlePositonChange(II)V

    return-void
.end method

.method private cancelAutoHhideMusic()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->autoHideMusicAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->autoHideMusicAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->autoHideMusicIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 826
    :cond_0
    return-void
.end method

.method private computeSampleSize()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 381
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 382
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mMaxAblumWidth:I

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 390
    :goto_0
    return-void

    .line 385
    :cond_0
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mMaxAblumWidth:I

    div-int/2addr v1, v2

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mMaxAblumWidth:I

    div-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 386
    .local v0, "tempSampleSize":I
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 387
    const-string v1, "KeyguardMusicManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sBitmapOptions.inSampleSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tempSampleSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sBitmapOptions.outHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generateIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 736
    const/4 v1, 0x0

    .line 737
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsHigherVerson:Z

    if-eqz v3, :cond_0

    .line 738
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.bbkmusic"

    const-string v4, "com.android.bbkmusic.service.MusicService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    .local v2, "serviceName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.bbkmusic.action.service.start"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 742
    const-string v3, "command"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    :goto_0
    return-object v1

    .line 744
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    if-eqz v3, :cond_1

    .line 745
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.bbkmusic"

    const-string v4, "com.bbk.onlinemusic.OnLineMusicPlaybackService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    .restart local v2    # "serviceName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "previous"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 753
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.bbkmusic"

    const-string v4, "com.android.bbkmusic.MediaPlaybackService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .restart local v2    # "serviceName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 757
    .local v0, "action":Ljava/lang/String;
    const-string v3, "previous"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 758
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.previous"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 768
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    const-string v3, "app_flag"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 769
    const-string v3, "widget_flag"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 770
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 760
    :cond_3
    const-string v3, "previous"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 761
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.next"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 763
    :cond_4
    const-string v3, "togglepause"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 764
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v3, "com.android.music.musicservicecommand.togglepause"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    if-nez v0, :cond_1

    .line 130
    const-class v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 134
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :cond_1
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getLocalAlbumFromFile(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "songId"    # J

    .prologue
    const/4 v6, 0x0

    .line 426
    const/4 v5, 0x0

    .line 427
    .local v5, "uri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "content://media/external/audio/media/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/albumart"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 429
    if-eqz v5, :cond_0

    .line 430
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 431
    .local v3, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_0

    .line 432
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 433
    .local v1, "fd":Ljava/io/FileDescriptor;
    sget-object v7, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 434
    const/4 v7, 0x0

    sget-object v8, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v7, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 435
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->computeSampleSize()V

    .line 436
    sget-object v7, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 438
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 439
    .local v4, "pfdFinal":Landroid/os/ParcelFileDescriptor;
    if-eqz v4, :cond_0

    .line 440
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 441
    .local v2, "fdFinal":Ljava/io/FileDescriptor;
    const/4 v7, 0x0

    sget-object v8, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v7, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 448
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "fdFinal":Ljava/io/FileDescriptor;
    .end local v3    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "pfdFinal":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    return-object v6

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "KeyguardMusicManager"

    const-string v8, "getLocalAlbumFromFile failed"

    invoke-static {v7, v8, v0}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getLocalAlbumFromUri(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "albumId"    # J

    .prologue
    const/4 v3, 0x0

    .line 393
    const/4 v2, 0x0

    .line 394
    .local v2, "uri":Landroid/net/Uri;
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-lez v4, :cond_0

    .line 395
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sArtworkUri:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 397
    :cond_0
    if-eqz v2, :cond_2

    .line 398
    const/4 v1, 0x0

    .line 400
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 401
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 402
    const/4 v4, 0x0

    sget-object v5, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->computeSampleSize()V

    .line 404
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 405
    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 409
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 410
    const/4 v4, 0x0

    sget-object v5, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 415
    if-eqz v1, :cond_2

    .line 416
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 422
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_2
    :goto_0
    return-object v3

    .line 411
    .restart local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 412
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "KeyguardMusicManager"

    const-string v5, "getLocalAlbumFromUri failed"

    invoke-static {v4, v5, v0}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    if-eqz v1, :cond_2

    .line 416
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 418
    :catch_1
    move-exception v4

    goto :goto_0

    .line 414
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 415
    if-eqz v1, :cond_3

    .line 416
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 419
    :cond_3
    :goto_1
    throw v3

    .line 418
    :catch_2
    move-exception v4

    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private getNativeAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 796
    if-nez p1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-object v3

    .line 799
    :cond_1
    const-string v0, "BBKOnLineService"

    .line 800
    .local v0, "ACCOUNT_TYPE":Ljava/lang/String;
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 801
    .local v2, "am":Landroid/accounts/AccountManager;
    invoke-virtual {v2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 802
    .local v1, "accounts":[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 803
    const/4 v3, 0x0

    aget-object v3, v1, v3

    goto :goto_0
.end method

.method private handleFavoriteStateChanged()V
    .locals 5

    .prologue
    .line 644
    const-string v2, "KeyguardMusicManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFavoriteState, isRadioOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsRadioOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isFavorite = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsFavoriteRadio:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 646
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 647
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 648
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onFavoriteStateChanged()V

    .line 645
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleHideMusicView()V
    .locals 3

    .prologue
    .line 566
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 567
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 568
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 569
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onHideMusicView()V

    .line 566
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 572
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleInforAndStateChange()V
    .locals 3

    .prologue
    .line 529
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 530
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 531
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 532
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicInfoAndStateChanged()V

    .line 529
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 535
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleInforToLockscreen()V
    .locals 5

    .prologue
    .line 598
    const-string v2, "KeyguardMusicManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleInforToLockscreen mCallbacks.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 601
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 602
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicInfoToLockscreen()V

    .line 599
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleLocalAlbumeChanged()V
    .locals 3

    .prologue
    .line 626
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 627
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 628
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 629
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicLocalAlbumeChanged()V

    .line 626
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleMediaEject()V
    .locals 3

    .prologue
    .line 608
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 609
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 610
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 611
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicMediaEject()V

    .line 608
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 614
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleMediaMounted()V
    .locals 3

    .prologue
    .line 617
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 618
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 619
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 620
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicMediaMounted()V

    .line 617
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleOnlineAlbumChange([B)V
    .locals 3
    .param p1, "albumBytes"    # [B

    .prologue
    .line 556
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 557
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 558
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 559
    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicOnlineAlbumChanged([B)V

    .line 556
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->saveOnlineAlbum([B)V

    .line 563
    return-void
.end method

.method private handlePositonChange(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "lastPosition"    # I

    .prologue
    .line 520
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 521
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 522
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 523
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicPositonChanged(II)V

    .line 520
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleQueueChange()V
    .locals 3

    .prologue
    .line 538
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 539
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 540
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 541
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicQueueChanged()V

    .line 538
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 544
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleStopOrKill()V
    .locals 3

    .prologue
    .line 547
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 549
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 550
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicStopOrKill()V

    .line 547
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private handleTimeChanged()V
    .locals 3

    .prologue
    .line 635
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 636
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 637
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    if-eqz v0, :cond_0

    .line 638
    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;->onMusicTimeChanged()V

    .line 635
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;
    :cond_1
    return-void
.end method

.method private isHigherVerson()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 654
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 655
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 657
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v5, "com.android.bbkmusic"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 658
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

    .line 667
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 662
    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyMusicUpdateInfo()V
    .locals 2

    .prologue
    .line 777
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsHigherVerson:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    if-eqz v1, :cond_0

    .line 778
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.request_music_info"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .local v0, "onlineIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 781
    .end local v0    # "onlineIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private registerReceivers(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mRegisterReceiver:Z

    if-nez v2, :cond_0

    .line 158
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mRegisterReceiver:Z

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.music.playbackcomplete"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v2, "next"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "previous"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v2, "widget.shining"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v2, "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v2, "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "com.android.music.send_music_info"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "com.android.music.update.photo"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v2, "com.android.music.send_music_album_url"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "com.android.music.send_music_position"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v2, "com.android.intent.MUSIC_INFORMATION_TO_LOCKSCREEN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v2, "com.android.music.favoritechanged"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v2, "com.android.systemui.keyguard.autohidemusic"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mReceivers:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 180
    .local v1, "fl":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mReceivers:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "fl":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private saveOnlineAlbum([B)V
    .locals 1
    .param p1, "albumBytes"    # [B

    .prologue
    .line 575
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;[B)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;->start()V

    .line 590
    return-void
.end method

.method private startAutoHideMusic()V
    .locals 8

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->autoHideMusicAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    .line 811
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->autoHideMusicAlarmManager:Landroid/app/AlarmManager;

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->autoHideMusicIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    .line 814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.keyguard.autohidemusic"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->autoHideMusicIntent:Landroid/app/PendingIntent;

    .line 818
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "KeyguardMusicManager"

    const-string v2, "startAutoHideMusic"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->autoHideMusicAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->autoHideMusicIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 820
    return-void
.end method

.method private startServiceLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->generateIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 731
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 732
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 734
    :cond_0
    return-void
.end method

.method private unRegisterReceivers(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mRegisterReceiver:Z

    .line 190
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mReceivers:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 192
    :cond_0
    return-void
.end method

.method private updateMusicInforAndState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 464
    if-eqz p1, :cond_4

    .line 465
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPlaying:Z

    .line 466
    .local v0, "oldPlayStatus":Z
    const-string v1, "isRadio"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsRadioOn:Z

    .line 467
    const-string v1, "isFavorite"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsFavoriteRadio:Z

    .line 468
    const-string v1, "radio_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mRadioName:Ljava/lang/String;

    .line 469
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mArtistName:Ljava/lang/String;

    .line 470
    const-string v1, "ISONLINE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    .line 471
    const-string v1, "ALBUMLIST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAlbumlist:[J

    .line 472
    const-string v1, "TRACKLIST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTracklist:[Ljava/lang/String;

    .line 473
    const-string v1, "ARTISTLIST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mArtistlist:[Ljava/lang/String;

    .line 474
    const-string v1, "ALBUMNAMELIST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAlbumNamelist:[Ljava/lang/String;

    .line 475
    const-string v1, "PLAYLIST"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    .line 476
    const-string v1, "POSITION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    .line 477
    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTrackId:J

    .line 478
    const-string v1, "album"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAblumName:Ljava/lang/String;

    .line 479
    const-string v1, "ISPLAYING"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPlaying:Z

    .line 480
    const-string v1, "DURATION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mDuration:J

    .line 481
    const-string v1, "private_music"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPrivate:Z

    .line 482
    const-string v1, "CURRENT_POS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->setCurrentPlayTime(J)V

    .line 484
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mUpdateMusic:Z

    .line 486
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsRadioOn:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mRadioName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mArtistName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mRadioName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mArtistName:Ljava/lang/String;

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    array-length v1, v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayListLength:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastPosition:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    if-ne v1, v2, :cond_1

    .line 493
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    array-length v1, v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayListLength:I

    .line 494
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastPosition:I

    .line 497
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    if-gez v1, :cond_2

    .line 498
    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAlbumlist:[J

    .line 499
    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTracklist:[Ljava/lang/String;

    .line 500
    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mArtistlist:[Ljava/lang/String;

    .line 501
    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    .line 504
    :cond_2
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastPosition:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    if-eq v1, v2, :cond_3

    .line 505
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastPosition:I

    .line 506
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastPosition:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handlePositonChange(II)V

    .line 508
    :cond_3
    const-string v1, "KeyguardMusicManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsRadioOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsRadioOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsFavoriteRadio = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsFavoriteRadio:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsOnline = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsPlaying = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPlaying:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsPrivate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPrivate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAblumName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAblumName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->handleInforAndStateChange()V

    .line 511
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPlaying:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 512
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startAutoHideMusic()V

    .line 517
    .end local v0    # "oldPlayStatus":Z
    :cond_4
    :goto_0
    return-void

    .line 513
    .restart local v0    # "oldPlayStatus":Z
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPlaying:Z

    if-eqz v1, :cond_4

    .line 514
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->cancelAutoHhideMusic()V

    goto :goto_0
.end method


# virtual methods
.method public getAlbumId()J
    .locals 4

    .prologue
    .line 294
    const-wide/16 v0, -0x1

    .line 295
    .local v0, "albumid":J
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAlbumlist:[J

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAlbumlist:[J

    array-length v2, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAlbumlist:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    if-ltz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAlbumlist:[J

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    aget-wide v0, v2, v3

    .line 298
    :cond_0
    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapFromRes(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCacheOnlineAlbum()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTouchOnlineCache:Z

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    const-string v4, "custom_settings"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 367
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "online_music_album_name"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "ablumName":Ljava/lang/String;
    const-string v3, "KeyguardMusicManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCacheOnlineAlbum ablumName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAblumName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAblumName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mAblumName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    const-string v2, "/data/bbkcore/lock_screen_nature/online_music_album"

    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->sBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 373
    .end local v0    # "ablumName":Ljava/lang/String;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-object v2
.end method

.method public getCurrentPlayTime()J
    .locals 8

    .prologue
    .line 285
    iget-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCurrentPlayTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTimeOfGetCurentPlayTime:J

    sub-long/2addr v4, v6

    add-long v0, v2, v4

    .line 286
    .local v0, "time":J
    return-wide v0
.end method

.method public getDefaultAlbum()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const v2, 0x7f0202a6

    .line 352
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getCacheOnlineAlbum()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    .local v0, "album":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 358
    .end local v0    # "album":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "album":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 281
    iget-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mDuration:J

    return-wide v0
.end method

.method public getErrorState()Ljava/lang/String;
    .locals 7

    .prologue
    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, "errorState":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    const-string v6, "storage"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 313
    .local v2, "sm":Landroid/os/storage/StorageManager;
    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->getInstance(Ljava/lang/Object;)Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;

    move-result-object v3

    .line 314
    .local v3, "smw":Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;
    sget-object v5, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;->UStorage:Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;

    invoke-virtual {v3, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->getDiskPath(Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper$StorageType;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "phoneDirPath":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, "status":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 318
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e019c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "errorState":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 320
    .restart local v0    # "errorState":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getIsFavorite()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsFavoriteRadio:Z

    return v0
.end method

.method public getIsOnline()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    return v0
.end method

.method public getIsPlaying()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPlaying:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPrivate:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsPrivate()Z
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsPrivate:Z

    return v0
.end method

.method public getIsRadioMode()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsRadioOn:Z

    return v0
.end method

.method public getLocalAlbum(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "songId"    # J
    .param p4, "albumId"    # J

    .prologue
    .line 452
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getLocalAlbumFromUri(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 453
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 454
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getLocalAlbumFromFile(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 456
    :cond_0
    if-nez v0, :cond_1

    .line 457
    const v1, 0x7f0202a6

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getBitmapFromRes(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 460
    :cond_1
    return-object v0
.end method

.method public getOnlineAlbum([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "albumBytes"    # [B

    .prologue
    .line 593
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getDefaultAlbum()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackId()J
    .locals 4

    .prologue
    .line 302
    const-wide/16 v0, -0x1

    .line 303
    .local v0, "songid":J
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    array-length v2, v2

    if-lez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    if-ltz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPlayList:[J

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    aget-wide v0, v2, v3

    .line 306
    :cond_0
    return-wide v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "trackName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0197

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "defaultName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getErrorState()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsOnline:Z

    if-eqz v2, :cond_1

    .line 328
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTracklist:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTracklist:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTracklist:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    if-ltz v2, :cond_3

    .line 329
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTracklist:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mPosition:I

    aget-object v1, v2, v3

    .line 335
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 336
    move-object v1, v0

    .line 339
    :cond_2
    return-object v1

    .line 330
    :cond_3
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTrackName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 331
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTrackName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isLogin(Landroid/content/Context;)Z
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "isLogin":Z
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getNativeAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 790
    const/4 v0, 0x1

    .line 792
    :cond_0
    return v0
.end method

.method public musicDoFavorite()V
    .locals 7

    .prologue
    .line 717
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 718
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->isLogin(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 719
    const-string v4, "favorite"

    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startServiceLocked(Ljava/lang/String;)V

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-wide v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastClickFavBtnTimeMillis:J

    sub-long v0, v2, v4

    .line 722
    .local v0, "diff":J
    const-wide/16 v4, 0x7d0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 723
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    const v6, 0x7f0e01a9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 724
    iput-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mLastClickFavBtnTimeMillis:J

    goto :goto_0
.end method

.method public musicDoNext()V
    .locals 1

    .prologue
    .line 712
    const-string v0, "next"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startServiceLocked(Ljava/lang/String;)V

    .line 713
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->notifyMusicUpdateInfo()V

    .line 714
    return-void
.end method

.method public musicDoPrevOrDelete()V
    .locals 2

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsRadioMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "delete"

    .line 707
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startServiceLocked(Ljava/lang/String;)V

    .line 708
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->notifyMusicUpdateInfo()V

    .line 709
    return-void

    .line 706
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string v0, "previous"

    goto :goto_0
.end method

.method public musicPlayOrPause()V
    .locals 1

    .prologue
    .line 701
    const-string v0, "togglepause"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startServiceLocked(Ljava/lang/String;)V

    .line 702
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->notifyMusicUpdateInfo()V

    .line 703
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .prologue
    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 146
    :goto_1
    return-void

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public removeCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 276
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mCurrentPlayTime:J

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTimeOfGetCurentPlayTime:J

    .line 278
    return-void
.end method

.method public setOnlineAlbumTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mTouchOnlineCache:Z

    .line 378
    return-void
.end method

.method public startMusicService()V
    .locals 4

    .prologue
    .line 683
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mIsHigherVerson:Z

    if-eqz v2, :cond_0

    .line 684
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.bbkmusic"

    const-string v3, "com.android.bbkmusic.service.MusicService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .local v1, "serviceName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.bbkmusic.action.service.start"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 686
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 687
    const-string v2, "command"

    const-string v3, "nooperation"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 698
    :goto_0
    return-void

    .line 690
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "serviceName":Landroid/content/ComponentName;
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.bbkmusic"

    const-string v3, "com.android.bbkmusic.MediaPlaybackService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .restart local v1    # "serviceName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand.nooperation"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 694
    const-string v2, "app_flag"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 695
    const-string v2, "widget_flag"

    const/16 v3, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
