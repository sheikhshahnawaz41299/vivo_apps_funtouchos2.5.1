.class public Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;
.super Ljava/lang/Object;
.source "VolumeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;
    }
.end annotation


# static fields
.field private static final ENLARGE_RATIO:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static final VOLUME_TIP_ANIM_DURATION:I = 0x96

.field private static mSpecialBreakPoint:F


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mFingerDown:Z

.field private mMaxVolume:I

.field private mMediaVolumeImg:Landroid/widget/ImageView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeImg:Landroid/widget/ImageView;

.field private mVolumeTip:Landroid/widget/TextView;

.field private mVolumeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->TAG:Ljava/lang/String;

    .line 30
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mSpecialBreakPoint:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mFingerDown:Z

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeType:I

    .line 160
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$1;-><init>(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mContext:Landroid/content/Context;

    .line 46
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 47
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    .prologue
    .line 23
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeType:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;
    .param p1, "x1"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->getValidVolume(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mFingerDown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->adjustSeekBar()V

    return-void
.end method

.method private adjustSeekBar()V
    .locals 3

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mFingerDown:Z

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 179
    :cond_0
    return-void
.end method

.method private getValidVolume(I)I
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 118
    div-int/lit8 v1, p1, 0x14

    .line 119
    .local v1, "result":I
    rem-int/lit8 v0, p1, 0x14

    .line 120
    .local v0, "remainder":I
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 121
    :cond_0
    return v1
.end method

.method private initSeekBar()V
    .locals 7

    .prologue
    .line 64
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mMaxVolume:I

    mul-int/lit8 v4, v4, 0x14

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 65
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->adjustSeekBar()V

    .line 71
    :try_start_0
    const-string v3, "android.widget.SeekBar"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 72
    .local v2, "seekBarClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setNonClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "seekBarClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSpecialBreakPoint()V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 86
    .local v0, "density":F
    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 87
    const v1, 0x3eb33333    # 0.35f

    sput v1, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mSpecialBreakPoint:F

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const v1, 0x3e99999a    # 0.3f

    sput v1, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mSpecialBreakPoint:F

    goto :goto_0
.end method

.method private refreshUI()V
    .locals 4

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 188
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const v2, 0x7f0205ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mMediaVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    const v2, 0x7f0205cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 191
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeTip:Landroid/widget/TextView;

    const v3, 0x7f0e0252

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 193
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method


# virtual methods
.method public init(Landroid/widget/RelativeLayout;I)V
    .locals 2
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "type"    # I

    .prologue
    .line 50
    const v0, 0x7f1101b8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mSeekBar:Landroid/widget/SeekBar;

    .line 51
    const v0, 0x7f1101b7

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mMediaVolumeImg:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f1101b9

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeImg:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f110292

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeTip:Landroid/widget/TextView;

    .line 55
    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeType:I

    .line 56
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mVolumeType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mMaxVolume:I

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->initSeekBar()V

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->initSpecialBreakPoint()V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->registerReceiver()V

    .line 61
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->refreshUI()V

    .line 183
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method
