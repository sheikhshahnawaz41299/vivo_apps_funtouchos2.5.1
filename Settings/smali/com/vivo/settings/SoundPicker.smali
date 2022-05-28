.class public Lcom/vivo/settings/SoundPicker;
.super Lcom/vivo/app/VivoBaseListActivity;
.source "SoundPicker.java"

# interfaces
.implements Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;


# static fields
.field private static final EDIT_ALARM:I = 0x2

.field private static final EDIT_MESSAGE:I = 0x1

.field private static final EDIT_NOTIFICATION:I = 0x3

.field private static final EDIT_RING:I = 0x0

.field public static final INTERNAL_PICK:Ljava/lang/String; = "internalPick"

.field public static final IS_EDIT:Ljava/lang/String; = "is_edit"

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final RECORDING_CHINESE_PATH:Ljava/lang/String;

.field private static RECORDING_CHINESE_PATH1:Ljava/lang/String; = null

.field private static RECORDING_CHINESE_PATH2:Ljava/lang/String; = null

.field private static final RECORDING_CHINESE_PATH3:Ljava/lang/String;

.field public static final REQUEST_EDIT_LIST:I = 0xb0862

.field public static final REQUEST_EDIT_RING:I = 0xb0863

.field public static final REQUEST_RINGTON:I = 0xb085f

.field public static final REQUEST_RINGTON_EXTERNAL:I = 0xb0860

.field public static final REQUEST_RINGTON_FINISH:I = 0xb0861

.field public static final RESULT_FINISH:I = 0xb0a63

.field public static final RING_TYPE:Ljava/lang/String; = "ring_type"

.field private static final TAG:Ljava/lang/String; = "SoundPicker"

.field public static final WITH_EDIT:Ljava/lang/String; = "with_edit"

.field public static final WITH_HEAD:Ljava/lang/String; = "with_head"


# instance fields
.field private DURATION_INDEX:I

.field private PATH_INDEX:I

.field private TITLE_INDEX:I

.field private isMessageAudio:Z

.field private isMessageSet:Z

.field private mAdapter:Lcom/vivo/settings/RingtonAdapter;

.field private mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentCursor:Landroid/database/Cursor;

.field private mCurrentUri:Landroid/net/Uri;

.field private mCursor:Landroid/database/Cursor;

.field private mDetailRingType:I

.field private mEmptyView:Landroid/widget/TextView;

.field private mIndexSlip:Lcom/vivo/settings/IndexSlipView;

.field private mIsAbcEnable:Z

.field private mIsEditType:Z

.field private mIsInternal:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOneScreenRingtons:I

.field private mOtherCount:I

.field private mPreRingtone:Landroid/media/Ringtone;

.field private mProgressView:Landroid/view/View;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingSetted:Z

.field private mRingtonType:I

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSelectUri:Landroid/net/Uri;

.field private mToast:Landroid/widget/Toast;

.field private mWithEdit:Z

.field private mWithHead:Z

.field private mWithSilent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x6

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_data"

    aput-object v2, v0, v1

    const-string v1, "duration"

    aput-object v1, v0, v5

    const/4 v1, 0x5

    const-string v2, "title_key"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/SoundPicker;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/sdcard0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/SoundPicker;->RECORDING_CHINESE_PATH:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/emulated/0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/SoundPicker;->RECORDING_CHINESE_PATH1:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/sdcard1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/SoundPicker;->RECORDING_CHINESE_PATH2:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/storage/sdcard0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-array v2, v4, [B

    fill-array-data v2, :array_3

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    new-array v2, v5, [B

    fill-array-data v2, :array_4

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/settings/SoundPicker;->RECORDING_CHINESE_PATH3:Ljava/lang/String;

    return-void

    .line 61
    nop

    :array_0
    .array-data 1
        0x52t
        0x65t
        0x63t
        0x6ft
        0x72t
        0x64t
    .end array-data

    .line 64
    nop

    :array_1
    .array-data 1
        0x52t
        0x65t
        0x63t
        0x6ft
        0x72t
        0x64t
    .end array-data

    .line 67
    nop

    :array_2
    .array-data 1
        0x52t
        0x65t
        0x63t
        0x6ft
        0x72t
        0x64t
    .end array-data

    .line 70
    nop

    :array_3
    .array-data 1
        0x52t
        0x65t
        0x63t
        0x6ft
        0x72t
        0x64t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x43t
        0x61t
        0x6ct
        0x6ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseListActivity;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    .line 75
    iput-boolean v1, p0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    .line 76
    iput-boolean v1, p0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    .line 77
    iput-boolean v1, p0, Lcom/vivo/settings/SoundPicker;->mWithSilent:Z

    .line 78
    iput-boolean v1, p0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    .line 79
    iput v1, p0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    .line 80
    iput v3, p0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    .line 81
    iput v3, p0, Lcom/vivo/settings/SoundPicker;->mDetailRingType:I

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lcom/vivo/settings/SoundPicker;->mOneScreenRingtons:I

    .line 83
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 85
    iput v1, p0, Lcom/vivo/settings/SoundPicker;->TITLE_INDEX:I

    .line 86
    iput v1, p0, Lcom/vivo/settings/SoundPicker;->PATH_INDEX:I

    .line 87
    iput v1, p0, Lcom/vivo/settings/SoundPicker;->DURATION_INDEX:I

    .line 89
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    .line 91
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    .line 93
    iput-boolean v1, p0, Lcom/vivo/settings/SoundPicker;->mRingSetted:Z

    .line 94
    iput-boolean v1, p0, Lcom/vivo/settings/SoundPicker;->mIsAbcEnable:Z

    .line 95
    iput-boolean v1, p0, Lcom/vivo/settings/SoundPicker;->isMessageAudio:Z

    .line 96
    iput-boolean v1, p0, Lcom/vivo/settings/SoundPicker;->isMessageSet:Z

    .line 99
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mSelectUri:Landroid/net/Uri;

    .line 101
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    .line 103
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    .line 105
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    .line 106
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mAudioManager:Landroid/media/AudioManager;

    .line 107
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mEmptyView:Landroid/widget/TextView;

    .line 111
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mProgressView:Landroid/view/View;

    .line 112
    new-instance v0, Lcom/vivo/settings/SoundPicker$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/SoundPicker$1;-><init>(Lcom/vivo/settings/SoundPicker;)V

    iput-object v0, p0, Lcom/vivo/settings/SoundPicker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 570
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mToast:Landroid/widget/Toast;

    .line 720
    new-instance v0, Lcom/vivo/settings/SoundPicker$4;

    invoke-direct {v0, p0}, Lcom/vivo/settings/SoundPicker$4;-><init>(Lcom/vivo/settings/SoundPicker;)V

    iput-object v0, p0, Lcom/vivo/settings/SoundPicker;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 866
    new-instance v0, Lcom/vivo/settings/SoundPicker$5;

    invoke-direct {v0, p0}, Lcom/vivo/settings/SoundPicker$5;-><init>(Lcom/vivo/settings/SoundPicker;)V

    iput-object v0, p0, Lcom/vivo/settings/SoundPicker;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/SoundPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mRingSetted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/vivo/settings/SoundPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/vivo/settings/SoundPicker;->mRingSetted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vivo/settings/SoundPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/vivo/settings/SoundPicker;I)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/vivo/settings/SoundPicker;->getRingtonUri(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vivo/settings/SoundPicker;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/vivo/settings/SoundPicker;Landroid/media/Ringtone;)Landroid/media/Ringtone;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;
    .param p1, "x1"    # Landroid/media/Ringtone;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/vivo/settings/SoundPicker;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vivo/settings/SoundPicker;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vivo/settings/SoundPicker;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/vivo/settings/SoundPicker;->showIndicator(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/settings/SoundPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->withCountChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/SoundPicker;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/SoundPicker;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/SoundPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    return v0
.end method

.method static synthetic access$600(Lcom/vivo/settings/SoundPicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->isMessageAudio:Z

    return v0
.end method

.method static synthetic access$700(Lcom/vivo/settings/SoundPicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->setRinton()V

    return-void
.end method

.method static synthetic access$800(Lcom/vivo/settings/SoundPicker;)Lcom/vivo/settings/RingtonAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/vivo/settings/SoundPicker;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/SoundPicker;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/vivo/settings/SoundPicker;->mSelectUri:Landroid/net/Uri;

    return-object p1
.end method

.method private dealWithSD()Z
    .locals 3

    .prologue
    .line 575
    invoke-static {}, Lcom/android/settings/AppFeature;->getStorageManagerWrapper()Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    :cond_0
    const/4 v2, 0x1

    .line 586
    :goto_0
    return v2

    .line 579
    :cond_1
    const/4 v1, 0x0

    .line 580
    .local v1, "toast":I
    const-string v2, "shared"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    const v1, 0x7f0b0924

    .line 585
    :goto_1
    invoke-direct {p0, v1}, Lcom/vivo/settings/SoundPicker;->showToast(I)V

    .line 586
    const/4 v2, 0x0

    goto :goto_0

    .line 583
    :cond_2
    const v1, 0x7f0b0886

    goto :goto_1
.end method

.method private editRing()V
    .locals 4

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->dealWithSD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 902
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/settings/SoundPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 903
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b097f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const-string v1, "android.intent.extra.ringtone.TYPE"

    iget v2, p0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const-string v1, "ring_type"

    iget v2, p0, Lcom/vivo/settings/SoundPicker;->mDetailRingType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 906
    const-string v1, "internalPick"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 907
    const-string v1, "is_edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 908
    const v1, 0xb0862

    invoke-virtual {p0, v0, v1}, Lcom/vivo/settings/SoundPicker;->startActivityForResult(Landroid/content/Intent;I)V

    .line 910
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getInternalRingtonesCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 846
    :try_start_0
    const-class v2, Landroid/media/RingtoneManager;

    const-string v3, "getInternalRingtones"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 847
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 848
    iget-object v2, p0, Lcom/vivo/settings/SoundPicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SoundPicker"

    const-string v3, "getInternalRingtonesCursor"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRingType(I)I
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 913
    const/4 v0, 0x0

    .line 914
    .local v0, "realtype":I
    packed-switch p1, :pswitch_data_0

    .line 930
    :goto_0
    :pswitch_0
    return v0

    .line 916
    :pswitch_1
    const/4 v0, 0x2

    .line 917
    goto :goto_0

    .line 919
    :pswitch_2
    const/4 v0, 0x3

    .line 920
    goto :goto_0

    .line 923
    :pswitch_3
    const/4 v0, 0x1

    .line 924
    goto :goto_0

    .line 927
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRingtonUri(I)Landroid/net/Uri;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 705
    iget-object v2, p0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v2, p1}, Lcom/vivo/settings/RingtonAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 706
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-object v1

    .line 709
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    if-ne v0, v2, :cond_2

    .line 710
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    goto :goto_0

    .line 712
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private getTopBottomView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 490
    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040096

    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 492
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 493
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {}, Lcom/android/settings/AppFeature;->getPixelPerDip()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 494
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 495
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 496
    return-object v1
.end method

.method public static isAudioUri(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 856
    if-nez p0, :cond_1

    .line 863
    :cond_0
    :goto_0
    return v1

    .line 859
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "str":Ljava/lang/String;
    const-string v2, "content://media/internal/audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://media/external/audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFromSIM2(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 934
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 935
    :cond_0
    const/4 v0, 0x1

    .line 937
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v8, 0x0

    .line 818
    if-nez p0, :cond_0

    .line 841
    :goto_0
    return v8

    .line 821
    :cond_0
    const/4 v8, 0x0

    .line 822
    .local v8, "result":Z
    const/4 v6, 0x0

    .line 824
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "volume"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 831
    :goto_1
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 832
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 833
    const-string v0, "external"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 836
    :cond_1
    if-eqz v6, :cond_2

    .line 837
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 840
    :cond_2
    const-string v0, "SoundPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaScannerScanning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 827
    :catch_0
    move-exception v7

    .line 828
    .local v7, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v7}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1

    .line 836
    .end local v7    # "e":Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 837
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private playRing(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 677
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 679
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    .line 681
    :cond_0
    invoke-direct {p0, p1}, Lcom/vivo/settings/SoundPicker;->getRingtonUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 682
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 702
    :cond_1
    :goto_0
    return-void

    .line 686
    :cond_2
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    .line 687
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/vivo/settings/SoundPicker;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 693
    iget v1, p0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    if-ne v1, v4, :cond_3

    .line 694
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 700
    :goto_1
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 695
    :cond_3
    iget v1, p0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    if-ne v1, v5, :cond_4

    .line 696
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1, v5}, Landroid/media/Ringtone;->setStreamType(I)V

    goto :goto_1

    .line 698
    :cond_4
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    goto :goto_1
.end method

.method private setRinton()V
    .locals 3

    .prologue
    .line 669
    iget-boolean v1, p0, Lcom/vivo/settings/SoundPicker;->mRingSetted:Z

    if-eqz v1, :cond_0

    .line 670
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 671
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    iget-object v2, p0, Lcom/vivo/settings/SoundPicker;->mSelectUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 672
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/vivo/settings/SoundPicker;->setResult(ILandroid/content/Intent;)V

    .line 674
    .end local v0    # "data":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showIndicator(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 891
    const-string v0, "SoundPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call showIndicator "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mIsAbcEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    if-nez v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    if-eqz v0, :cond_0

    .line 894
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vivo/settings/IndexSlipView;->setVisibility(I)V

    .line 895
    const-string v0, "SoundPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsInternal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIsAbcEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/SoundPicker;->mIsAbcEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mIsEditType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_0
    return-void

    .line 894
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 1
    .param p1, "msgId"    # I

    .prologue
    .line 590
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/SoundPicker;->mToast:Landroid/widget/Toast;

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 596
    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method private withCountChange()V
    .locals 10

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 767
    const-string v5, "SoundPicker"

    const-string v9, "withCountChange"

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-boolean v5, p0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    if-eqz v5, :cond_1

    .line 785
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v5, p0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v5}, Lcom/vivo/settings/RingtonAdapter;->getCount()I

    move-result v1

    .line 772
    .local v1, "count":I
    iget v5, p0, Lcom/vivo/settings/SoundPicker;->mOneScreenRingtons:I

    if-le v1, v5, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/vivo/settings/SoundPicker;->mIsAbcEnable:Z

    .line 773
    if-lez v1, :cond_3

    :goto_2
    invoke-virtual {p0, v6}, Lcom/vivo/settings/SoundPicker;->setTitleRightButtonEnable(Z)V

    .line 775
    :try_start_0
    const-class v5, Landroid/widget/AbsListView;

    const-string v6, "getIsHoldingMode"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 776
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 777
    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 778
    .local v4, "result":Ljava/lang/Object;
    const-string v6, "SoundPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v4

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    check-cast v4, Ljava/lang/Boolean;

    .end local v4    # "result":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 780
    iget-object v6, p0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    iget v5, p0, Lcom/vivo/settings/SoundPicker;->mOneScreenRingtons:I

    if-le v1, v5, :cond_4

    move v5, v7

    :goto_3
    invoke-virtual {v6, v5}, Lcom/vivo/settings/IndexSlipView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 783
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    iget v6, p0, Lcom/vivo/settings/SoundPicker;->mOneScreenRingtons:I

    if-le v1, v6, :cond_5

    :goto_4
    invoke-virtual {v5, v7}, Lcom/vivo/settings/IndexSlipView;->setVisibility(I)V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    move v5, v7

    .line 772
    goto :goto_1

    :cond_3
    move v6, v7

    .line 773
    goto :goto_2

    .restart local v3    # "m":Ljava/lang/reflect/Method;
    :cond_4
    move v5, v8

    .line 780
    goto :goto_3

    .end local v3    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_5
    move v7, v8

    .line 783
    goto :goto_4
.end method


# virtual methods
.method public findFristLetter_ex(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 630
    const/4 v7, 0x0

    .line 631
    .local v7, "mIndex_count":I
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 632
    .local v9, "trackList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 633
    .local v10, "where":Ljava/lang/StringBuilder;
    const-string v0, "title != \'\'"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const-string v5, "local_key,title_pinyin_key  COLLATE LOCALIZED,title_key COLLATE LOCALIZED"

    .line 638
    .local v5, "mSortOrder":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 658
    :goto_0
    return-object v4

    .line 641
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/settings/VMusicStore;->MUSIC_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/settings/VMusicStore;->TRACK_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 642
    .local v6, "loadCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_3

    .line 643
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 644
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 645
    :cond_1
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 646
    const/16 v0, 0xd

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 647
    .local v8, "tmpLetter":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 648
    const-string v8, "#"

    .line 650
    :cond_2
    invoke-virtual {v9, v8}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    const-string v0, "lp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#####============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 657
    .end local v8    # "tmpLetter":Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    .line 658
    goto :goto_0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 10
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, -0x1

    .line 738
    if-eqz p1, :cond_0

    iget-object v7, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    if-nez v7, :cond_2

    :cond_0
    move v3, v6

    .line 763
    :cond_1
    :goto_0
    return v3

    .line 740
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    .line 741
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 743
    .local v2, "cursorCount":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-nez v7, :cond_3

    move v3, v6

    .line 744
    goto :goto_0

    .line 747
    :cond_3
    const/4 v0, 0x0

    .line 748
    .local v0, "currentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 749
    .local v4, "previousUriString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_6

    .line 750
    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 752
    :cond_4
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 755
    :cond_5
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 759
    const/4 v7, 0x1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->move(I)Z

    .line 760
    move-object v4, v5

    .line 749
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5    # "uriString":Ljava/lang/String;
    :cond_6
    move v3, v6

    .line 763
    goto :goto_0
.end method

.method protected locateRingtone(Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 466
    const/4 v0, -0x1

    .line 467
    .local v0, "index":I
    const/4 v1, -0x1

    .line 468
    .local v1, "real_index":I
    const-string v3, "#"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2

    .line 473
    iget-object v3, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 474
    :goto_1
    iget-object v3, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_2

    .line 475
    iget-object v3, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 476
    .local v2, "title":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 477
    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 478
    move v1, v0

    .line 484
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 485
    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    .line 481
    .restart local v2    # "title":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v3, 0xb0a63

    const/4 v2, -0x1

    .line 789
    const-string v0, "SoundPicker"

    const-string v1, "SoundPicker.onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const v0, 0xb0860

    if-ne p1, v0, :cond_0

    if-ne p2, v2, :cond_0

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mRingSetted:Z

    .line 792
    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/vivo/settings/SoundPicker;->mSelectUri:Landroid/net/Uri;

    .line 793
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->setRinton()V

    .line 794
    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->finish()V

    .line 796
    :cond_0
    const v0, 0xb0863

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 797
    invoke-virtual {p0, v3}, Lcom/vivo/settings/SoundPicker;->setResult(I)V

    .line 798
    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->finish()V

    .line 800
    :cond_1
    if-ne p2, v3, :cond_2

    .line 801
    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->finish()V

    .line 803
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    invoke-super/range {p0 .. p1}, Lcom/vivo/app/VivoBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    const-string v2, "SoundPicker"

    const-string v3, "SoundPicker start onCreate..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const v2, 0x7f04006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->setContentView(I)V

    .line 155
    const v2, 0x7f0e0111

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mEmptyView:Landroid/widget/TextView;

    .line 160
    const v2, 0x7f0e0146

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/IndexSlipView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/settings/IndexSlipView;->init(Landroid/widget/ListView;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->findFristLetter_ex(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v19

    .line 164
    .local v19, "link":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const v2, 0x7f0e0145

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mProgressView:Landroid/view/View;

    .line 167
    new-instance v2, Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAudioManager:Landroid/media/AudioManager;

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mOneScreenRingtons:I

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 172
    .local v17, "intent":Landroid/content/Intent;
    const-string v2, "internalPick"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    .line 173
    const-string v2, "android.intent.extra.ringtone.TITLE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 174
    .local v21, "title":Ljava/lang/String;
    if-nez v21, :cond_0

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 177
    :cond_0
    const-string v2, "SoundPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity Title :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vivo/settings/SoundPicker;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    .line 180
    const-string v2, "ring_type"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mDetailRingType:I

    .line 181
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 182
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mDetailRingType:I

    .line 184
    :cond_1
    const-string v2, "is_edit"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    .line 185
    const-string v2, "is_message_flag"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->isMessageSet:Z

    .line 186
    const-string v2, "message_audio"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->isMessageAudio:Z

    .line 187
    const-string v2, "with_head"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    .line 188
    const-string v2, "with_edit"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    .line 189
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->isMessageAudio:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->isMessageSet:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 190
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    .line 196
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v2, :cond_4

    .line 197
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    .line 200
    :cond_4
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithSilent:Z

    .line 202
    const-string v2, "SoundPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWithHead="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mWithEdit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " withSilent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/settings/SoundPicker;->mWithSilent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtoneManager:Landroid/media/RingtoneManager;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    invoke-virtual {v2, v3}, Landroid/media/RingtoneManager;->setType(I)V

    .line 208
    :cond_5
    const-string v2, "SoundPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRingtonType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 214
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->setVolumeControlStream(I)V

    .line 217
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-eqz v2, :cond_b

    .line 218
    invoke-direct/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getInternalRingtonesCursor()Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    .line 247
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_f

    .line 248
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-eqz v2, :cond_e

    .line 249
    const-string v2, "SoundPicker"

    const-string v3, "maybe google changed its codes"

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getInternalRingtonesCursor()Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->finish()V

    .line 259
    :goto_2
    const-string v2, "EngineerMode"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    .line 261
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    .line 265
    :goto_3
    const-string v2, "SoundPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/vivo/settings/SoundPicker;->isAudioUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 268
    const-string v2, "SoundPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a regular uri, change to null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    .line 272
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/vivo/settings/SoundSettings;->getCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    .line 273
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_9

    .line 275
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/vivo/settings/SoundSettings;->getCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    .line 278
    :cond_9
    const/16 v20, -0x1

    .line 279
    .local v20, "pos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v20

    .line 285
    const-string v3, "SoundPicker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsInternal="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mWithHead="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mCurrentCursor==null?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance v18, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 288
    .local v18, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v2, "android.intent.action.MEDIA_SHARED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v2, "file"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/vivo/settings/SoundPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v2, :cond_a

    .line 293
    new-instance v18, Landroid/content/IntentFilter;

    .end local v18    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 294
    .restart local v18    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/vivo/settings/SoundPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    :cond_a
    new-instance v18, Landroid/content/IntentFilter;

    .end local v18    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "intent.action.super_power_save"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 298
    .restart local v18    # "intentFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/vivo/settings/SoundPicker;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_12

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->finish()V

    .line 442
    :goto_5
    return-void

    .line 220
    .end local v18    # "intentFilter":Landroid/content/IntentFilter;
    .end local v20    # "pos":I
    :cond_b
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v23, "where":Ljava/lang/StringBuilder;
    const-string v2, "title != \'\'"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    .line 223
    const/16 v2, 0x1e

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, " AND ( NOT ( ("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, " like \'"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/vivo/settings/SoundPicker;->RECORDING_CHINESE_PATH:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "%\'"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, " OR "

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, " like \'"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/vivo/settings/SoundPicker;->RECORDING_CHINESE_PATH1:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "%\'"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, " OR "

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, " like \'"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    sget-object v4, Lcom/vivo/settings/SoundPicker;->RECORDING_CHINESE_PATH2:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "%\'"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, " OR "

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, " like \'"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    sget-object v4, Lcom/vivo/settings/SoundPicker;->RECORDING_CHINESE_PATH3:Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "%\'"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, ") AND ( "

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, " like \'%.ogg\'"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, " OR "

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, " like \'%.3gpp\'"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, " OR "

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, " like \'%.amr\'"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, ") ) )"

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/vivo/settings/VivoUtils;->stringBuilderAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 234
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    if-eqz v2, :cond_d

    .line 235
    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AND ("

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, " like \'%.mp3\'"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, " OR "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "_data"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, " like \'%.wav\'"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, ") AND ("

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, " > 5000"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ")"

    aput-object v4, v2, v3

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Lcom/vivo/settings/VivoUtils;->stringBuilderAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 242
    :cond_d
    const-string v7, "local_key,title_pinyin_key  COLLATE LOCALIZED,title_key COLLATE LOCALIZED"

    .line 243
    .local v7, "mSortOrder":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/vivo/settings/SoundPicker;->MEDIA_COLUMNS:[Ljava/lang/String;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    goto/16 :goto_0

    .line 251
    .end local v7    # "mSortOrder":Ljava/lang/String;
    .end local v23    # "where":Ljava/lang/StringBuilder;
    :cond_e
    const-string v2, "SoundPicker"

    const-string v3, "maybe database is not opened yet, check log above"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const v2, 0x7f0b0924

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vivo/settings/SoundPicker;->showToast(I)V

    goto/16 :goto_1

    .line 257
    :cond_f
    const-string v2, "SoundPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 263
    :cond_10
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    goto/16 :goto_3

    .line 285
    .restart local v20    # "pos":I
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 304
    .restart local v18    # "intentFilter":Landroid/content/IntentFilter;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-eqz v2, :cond_1f

    .line 305
    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_1e

    .line 306
    new-instance v8, Lcom/vivo/settings/RingtonAdapter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/vivo/settings/SoundPicker;->mWithSilent:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    move/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v16}, Lcom/vivo/settings/RingtonAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZZZLandroid/database/Cursor;ZZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    .line 321
    :cond_13
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v2}, Lcom/vivo/settings/RingtonAdapter;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/SoundPicker;->mOneScreenRingtons:I

    if-le v2, v3, :cond_21

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsAbcEnable:Z

    .line 322
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    .line 323
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    if-eqz v2, :cond_22

    const/4 v2, 0x1

    :goto_8
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    .line 324
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    :goto_9
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    .line 325
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    :goto_a
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    .line 326
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithSilent:Z

    if-eqz v2, :cond_25

    const/4 v2, 0x1

    :goto_b
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    .line 327
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-eqz v2, :cond_14

    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_14

    .line 328
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    .line 330
    :cond_14
    const-string v2, "SoundPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOtherCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-eqz v2, :cond_2a

    .line 332
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithSilent:Z

    if-eqz v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    if-nez v2, :cond_28

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    if-eqz v3, :cond_27

    const/4 v3, 0x1

    :goto_d
    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Lcom/vivo/settings/RingtonAdapter;->setFixCheckedPos(I)V

    .line 343
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v2, :cond_16

    .line 344
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getTopBottomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 347
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getTopBottomView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/SoundPicker;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/SoundPicker;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v3}, Lcom/vivo/settings/RingtonAdapter;->getCount()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lcom/vivo/settings/IndexSlipView;->changeIndexKeys(Ljava/util/LinkedHashMap;I)V

    .line 352
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    if-eqz v2, :cond_17

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f0b0980

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 355
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v2, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsAbcEnable:Z

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    if-nez v2, :cond_2b

    .line 383
    const-string v2, "SoundPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsInternal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsAbcEnable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/settings/SoundPicker;->mIsAbcEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsEditType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/settings/IndexSlipView;->setVisibility(I)V

    .line 388
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/settings/SoundPicker;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mProgressView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/vivo/settings/RingtonAdapter;->setRingtonCountChangeListener(Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mEmptyView:Landroid/widget/TextView;

    const v3, 0x7f0b08c3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 393
    :cond_18
    const-string v22, ""

    .line 394
    .local v22, "titleLeftButtonText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    if-eqz v2, :cond_2c

    .line 395
    :cond_19
    const/high16 v2, 0x30e0000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 396
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->setTitleLeftButtonIcon(I)V

    .line 401
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->showTitleLeftButton()V

    .line 402
    new-instance v2, Lcom/vivo/settings/SoundPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/settings/SoundPicker$2;-><init>(Lcom/vivo/settings/SoundPicker;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v2, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    if-eqz v2, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->isMessageAudio:Z

    if-eqz v2, :cond_1c

    .line 412
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->showTitleRightButton()V

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b08d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->setTitleRightButtonText(Ljava/lang/CharSequence;)V

    .line 414
    new-instance v2, Lcom/vivo/settings/SoundPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/vivo/settings/SoundPicker$3;-><init>(Lcom/vivo/settings/SoundPicker;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->setTitleRightButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v2}, Lcom/vivo/settings/RingtonAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2d

    const/4 v2, 0x1

    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->setTitleRightButtonEnable(Z)V

    .line 432
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->isMessageAudio:Z

    if-eqz v2, :cond_2e

    .line 433
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 437
    :goto_12
    const-string v2, "EngineerMode"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 438
    const-string v2, "SoundPicker"

    const-string v3, "isEngineerMode? true checkedPos="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v2}, Lcom/vivo/settings/RingtonAdapter;->getCheckedPos()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vivo/settings/SoundPicker;->playRing(I)V

    .line 441
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/vivo/settings/RingtonAdapter;->setRingtonCountChangeListener(Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;)V

    goto/16 :goto_5

    .line 309
    .end local v22    # "titleLeftButtonText":Ljava/lang/String;
    :cond_1e
    new-instance v8, Lcom/vivo/settings/RingtonAdapter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/vivo/settings/SoundPicker;->mWithSilent:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    move/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v16}, Lcom/vivo/settings/RingtonAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZZZLandroid/database/Cursor;ZZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    goto/16 :goto_6

    .line 313
    :cond_1f
    new-instance v8, Lcom/vivo/settings/RingtonAdapter;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    move/from16 v16, v0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v16}, Lcom/vivo/settings/RingtonAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZZZLandroid/database/Cursor;ZZ)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->TITLE_INDEX:I

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->PATH_INDEX:I

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    const-string v3, "duration"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vivo/settings/SoundPicker;->DURATION_INDEX:I

    .line 317
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->TITLE_INDEX:I

    if-ltz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->PATH_INDEX:I

    if-ltz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/vivo/settings/SoundPicker;->DURATION_INDEX:I

    if-gez v2, :cond_13

    .line 318
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->finish()V

    goto/16 :goto_6

    .line 321
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 323
    :cond_22
    const/4 v2, 0x0

    goto/16 :goto_8

    .line 324
    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 325
    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 326
    :cond_25
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 333
    :cond_26
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_d

    .line 334
    :cond_28
    const/4 v2, -0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_29

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    add-int v3, v3, v20

    invoke-virtual {v2, v3}, Lcom/vivo/settings/RingtonAdapter;->setFixCheckedPos(I)V

    goto/16 :goto_e

    .line 337
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vivo/settings/RingtonAdapter;->setFixCheckedPos(I)V

    goto/16 :goto_e

    .line 340
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/vivo/settings/RingtonAdapter;->setCheckedPos(I)V

    goto/16 :goto_e

    .line 386
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/vivo/settings/IndexSlipView;->setVisibility(I)V

    goto/16 :goto_f

    .line 398
    .restart local v22    # "titleLeftButtonText":Ljava/lang/String;
    :cond_2c
    const v2, 0x7f0b00cb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/vivo/settings/SoundPicker;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 399
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vivo/settings/SoundPicker;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    .line 430
    :cond_2d
    const/4 v2, 0x0

    goto/16 :goto_11

    .line 435
    :cond_2e
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundPicker;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v2}, Lcom/vivo/settings/RingtonAdapter;->getCheckedPos()I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    :goto_13
    add-int/2addr v4, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-eqz v2, :cond_30

    const/4 v2, 0x0

    :goto_14
    add-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_12

    :cond_2f
    const/4 v2, 0x0

    goto :goto_13

    :cond_30
    const/4 v2, 0x1

    goto :goto_14
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 613
    const-string v0, "SoundPicker"

    const-string v1, "SoundPicker.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mCurrentCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    .line 621
    iput-object v2, p0, Lcom/vivo/settings/SoundPicker;->mAudioManager:Landroid/media/AudioManager;

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/RingtonAdapter;->setRingtonCountChangeListener(Lcom/vivo/settings/RingtonAdapter$RingtonCountChangeListener;)V

    .line 624
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/SoundPicker;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 625
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mIndexSlip:Lcom/vivo/settings/IndexSlipView;

    invoke-virtual {v0}, Lcom/vivo/settings/IndexSlipView;->destroy()V

    .line 626
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onDestroy()V

    .line 627
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 455
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 457
    :cond_0
    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->isMessageAudio:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-eqz v0, :cond_1

    .line 458
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->setRinton()V

    .line 460
    :cond_1
    const-string v0, "SoundPicker"

    const-string v1, "on key down keycode_bakc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/vivo/app/VivoBaseListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v7, 0x1

    .line 501
    const-string v4, "SoundPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onListItemClick : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-nez p3, :cond_1

    .line 503
    const-string v4, "SoundPicker"

    const-string v5, "ignore position 0"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    if-ne p3, v7, :cond_2

    iget-boolean v4, p0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    if-eqz v4, :cond_2

    .line 507
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->dealWithSD()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/vivo/settings/SoundPicker;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 509
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.ringtone.TYPE"

    iget v5, p0, Lcom/vivo/settings/SoundPicker;->mRingtonType:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 510
    const-string v4, "internalPick"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    iget-object v5, p0, Lcom/vivo/settings/SoundPicker;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 512
    const-string v4, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/vivo/settings/SoundPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b08d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const v4, 0xb0860

    invoke-virtual {p0, v2, v4}, Lcom/vivo/settings/SoundPicker;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 518
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    .line 519
    .local v3, "realPos":I
    iget-boolean v4, p0, Lcom/vivo/settings/SoundPicker;->mWithHead:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v4, :cond_4

    .line 520
    :cond_3
    add-int/lit8 v3, p3, -0x1

    .line 524
    :goto_1
    iget-boolean v4, p0, Lcom/vivo/settings/SoundPicker;->mWithSilent:Z

    if-eqz v4, :cond_5

    .line 525
    iget-boolean v4, p0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    add-int/lit8 v4, v4, -0x3

    if-ne v3, v4, :cond_6

    .line 526
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->editRing()V

    goto :goto_0

    .line 522
    :cond_4
    move v3, p3

    goto :goto_1

    .line 530
    :cond_5
    iget-boolean v4, p0, Lcom/vivo/settings/SoundPicker;->mWithEdit:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/vivo/settings/SoundPicker;->mOtherCount:I

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_6

    .line 531
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->editRing()V

    goto :goto_0

    .line 535
    :cond_6
    iget-object v4, p0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v4, v3}, Lcom/vivo/settings/RingtonAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    .line 536
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_0

    .line 539
    :cond_7
    iget-boolean v4, p0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    if-nez v4, :cond_8

    .line 540
    invoke-direct {p0, v3}, Lcom/vivo/settings/SoundPicker;->playRing(I)V

    .line 541
    iget-object v4, p0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v4, v3}, Lcom/vivo/settings/RingtonAdapter;->setCheckedPos(I)V

    .line 542
    invoke-direct {p0, v3}, Lcom/vivo/settings/SoundPicker;->getRingtonUri(I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/settings/SoundPicker;->mSelectUri:Landroid/net/Uri;

    .line 543
    iput-boolean v7, p0, Lcom/vivo/settings/SoundPicker;->mRingSetted:Z

    .line 544
    iget-object v4, p0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    invoke-virtual {v4}, Lcom/vivo/settings/RingtonAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 546
    :cond_8
    if-eqz v0, :cond_0

    .line 550
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    iget v5, p0, Lcom/vivo/settings/SoundPicker;->PATH_INDEX:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 552
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "com.ringclip"

    const-string v5, "com.ringclip.RingdroidEditActivity"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    const-string v4, "RING_TYPES"

    iget v5, p0, Lcom/vivo/settings/SoundPicker;->mDetailRingType:I

    invoke-direct {p0, v5}, Lcom/vivo/settings/SoundPicker;->getRingType(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    const-string v4, "SIM_TYPES"

    iget v5, p0, Lcom/vivo/settings/SoundPicker;->mDetailRingType:I

    invoke-direct {p0, v5}, Lcom/vivo/settings/SoundPicker;->isFromSIM2(I)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    const-string v4, "SONG_DURATION"

    iget v5, p0, Lcom/vivo/settings/SoundPicker;->DURATION_INDEX:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 559
    const-string v4, "SONG_TITLE"

    iget v5, p0, Lcom/vivo/settings/SoundPicker;->TITLE_INDEX:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v4, "SoundPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stratEditRingActivity: path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/settings/SoundPicker;->PATH_INDEX:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  ringType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/settings/SoundPicker;->mDetailRingType:I

    invoke-direct {p0, v6}, Lcom/vivo/settings/SoundPicker;->getRingType(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isFromSIM2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/settings/SoundPicker;->mDetailRingType:I

    invoke-direct {p0, v6}, Lcom/vivo/settings/SoundPicker;->isFromSIM2(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/settings/SoundPicker;->DURATION_INDEX:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/vivo/settings/SoundPicker;->TITLE_INDEX:I

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const v4, 0xb0863

    invoke-virtual {p0, v2, v4}, Lcom/vivo/settings/SoundPicker;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 564
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SoundPicker"

    const-string v5, "Couldn\'t start editor"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 600
    const-string v0, "SoundPicker"

    const-string v1, "SoundPicker.onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/SoundPicker;->mPreRingtone:Landroid/media/Ringtone;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 608
    :cond_1
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onPause()V

    .line 609
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 446
    invoke-super {p0}, Lcom/vivo/app/VivoBaseListActivity;->onResume()V

    .line 447
    const-string v0, "SoundPicker"

    const-string v1, "SoundPicker.onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mIsInternal:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/vivo/settings/SoundPicker;->mIsEditType:Z

    if-nez v0, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->withCountChange()V

    .line 451
    :cond_0
    return-void
.end method

.method public onRingtonCountChange(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 807
    const-string v0, "SoundPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rington count changed with count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-direct {p0}, Lcom/vivo/settings/SoundPicker;->withCountChange()V

    .line 809
    return-void
.end method

.method public onTotalCountChange()V
    .locals 2

    .prologue
    .line 813
    const-string v0, "SoundPicker"

    const-string v1, "onTotalCountChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v0, p0, Lcom/vivo/settings/SoundPicker;->mAdapter:Lcom/vivo/settings/RingtonAdapter;

    iget-object v1, p0, Lcom/vivo/settings/SoundPicker;->mSelectUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/SoundPicker;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/RingtonAdapter;->setCheckedPos(I)V

    .line 815
    return-void
.end method
