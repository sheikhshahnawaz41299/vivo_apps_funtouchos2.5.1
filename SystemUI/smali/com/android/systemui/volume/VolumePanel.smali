.class public Lcom/android/systemui/volume/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumePanel$Callback;,
        Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;,
        Lcom/android/systemui/volume/VolumePanel$SafetyWarning;,
        Lcom/android/systemui/volume/VolumePanel$StreamControl;,
        Lcom/android/systemui/volume/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static final IC_AUDIO_BT:I = 0x7f02023f

.field private static final IC_AUDIO_BT_MUTE:I = 0x7f020240

.field private static final IC_AUDIO_VOL:I = 0x7f020245

.field private static final IC_AUDIO_VOL_MUTE:I = 0x7f020246

.field private static LOGD:Z = false

.field private static final MAX_LEVEL:I = 0x2710

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_DISPLAY_SAFE_VOLUME_WARNING:I = 0xb

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_INTERNAL_RINGER_MODE_CHANGED:I = 0x10

.field private static final MSG_INVALIDATE_SEEKBAR_PROCESS:I = 0x12

.field private static final MSG_LAYOUT_DIRECTION:I = 0xc

.field private static final MSG_MUTE_CHANGED:I = 0x7

.field private static final MSG_NOTIFICATION_EFFECTS_SUPPRESSOR_CHANGED:I = 0xf

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_REMOTE_VOLUME_CHANGED:I = 0x8

.field private static final MSG_REMOTE_VOLUME_UPDATE_IF_SHOWN:I = 0x9

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_SLIDER_VISIBILITY_CHANGED:I = 0xa

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_USER_ACTIVITY:I = 0xe

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VIBRATE_IN_ALARM:I = 0x11

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MSG_ZEN_MODE_AVAILABLE_CHANGED:I = 0xd

.field private static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final RING_VOLUME_ENLARGE_RATIO:I = 0x14

.field private static final STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

.field private static final STREAM_MASTER:I = -0x64

.field private static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0xbb8

.field private static final TIMEOUT_DELAY_COLLAPSED:I = 0x1194

.field private static final TIMEOUT_DELAY_EXPANDED:I = 0x2710

.field private static final TIMEOUT_DELAY_SAFETY_WARNING:I = 0x1388

.field private static final TIMEOUT_DELAY_SHORT:I = 0x5dc

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sSafetyWarning:Landroid/app/AlertDialog;

.field private static sSafetyWarningLock:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

.field protected final mContext:Landroid/content/Context;

.field private mDemoIcon:I

.field private final mDialog:Landroid/app/Dialog;

.field private mDisabledAlpha:F

.field private mHasVibrator:Z

.field private final mIconPulser:Lcom/android/systemui/volume/IconPulser;

.field private mLastRingerMode:I

.field private mLastRingerProgress:I

.field private final mMediaControllerCb:Landroid/media/session/MediaController$Callback;

.field private mNotificationEffectsSuppressor:Landroid/content/ComponentName;

.field private final mPanel:Landroid/view/ViewGroup;

.field private final mPlayMasterStreamTones:Z

.field private mRingIsSilent:Z

.field public mRingSeekBarTracking:Z

.field private final mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mSliderPanel:Landroid/view/ViewGroup;

.field private mStreamControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/volume/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private mTimeoutDelay:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private mVoiceCapable:Z

.field private final mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

.field private final mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private mZenModeAvailable:Z

.field private mZenPanelExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 94
    sput-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    .line 146
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 259
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/systemui/volume/VolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/systemui/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v1, v0, v4

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    .line 293
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zenController"    # Lcom/android/systemui/statusbar/policy/ZenModeController;

    .prologue
    const v12, 0x1120014

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 369
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 164
    const/16 v7, 0xbb8

    iput v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 166
    iput v10, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    .line 167
    iput v9, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    .line 191
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1739
    new-instance v7, Lcom/android/systemui/volume/VolumePanel$6;

    invoke-direct {v7, p0}, Lcom/android/systemui/volume/VolumePanel$6;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 1806
    new-instance v7, Lcom/android/systemui/volume/VolumePanel$7;

    invoke-direct {v7, p0}, Lcom/android/systemui/volume/VolumePanel$7;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 1819
    new-instance v7, Lcom/android/systemui/volume/VolumePanel$8;

    invoke-direct {v7, p0}, Lcom/android/systemui/volume/VolumePanel$8;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    .line 370
    const-string v7, "%s.%08x"

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "VolumePanel"

    aput-object v11, v10, v9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    .line 371
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    .line 372
    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 373
    const-string v7, "audio"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 374
    const-string v7, "accessibility"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityManager;

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 376
    new-instance v7, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    const/4 v10, 0x0

    invoke-direct {v7, p0, v10}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    .line 377
    new-instance v7, Lcom/android/systemui/volume/IconPulser;

    invoke-direct {v7, p1}, Lcom/android/systemui/volume/IconPulser;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mIconPulser:Lcom/android/systemui/volume/IconPulser;

    .line 380
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 381
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 382
    .local v6, "useMasterVolume":Z
    if-eqz v6, :cond_1

    .line 383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v7, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v1, v7, :cond_1

    .line 384
    sget-object v7, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v5, v7, v1

    .line 385
    .local v5, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v7, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    const/16 v10, -0x64

    if-ne v7, v10, :cond_0

    move v7, v8

    :goto_1
    iput-boolean v7, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v7, v9

    .line 385
    goto :goto_1

    .line 388
    .end local v1    # "i":I
    .end local v5    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    sget-boolean v7, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v10, "new VolumePanel"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_2
    const/high16 v7, 0x3f000000    # 0.5f

    iput v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    new-array v10, v8, [I

    const v11, 0x1010033

    aput v11, v10, v9

    invoke-virtual {v7, v10}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 394
    .local v0, "arr":Landroid/content/res/TypedArray;
    iget v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    .line 395
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 398
    .end local v0    # "arr":Landroid/content/res/TypedArray;
    :cond_3
    new-instance v7, Lcom/android/systemui/volume/VolumePanel$1;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/volume/VolumePanel$1;-><init>(Lcom/android/systemui/volume/VolumePanel;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 409
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->initDialogInternal()V

    .line 411
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const v10, 0x1020002

    invoke-virtual {v7, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    .line 412
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/volume/VolumePanel$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/volume/VolumePanel$2;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-static {v7, v10}, Lcom/android/systemui/volume/Interaction;->register(Landroid/view/View;Lcom/android/systemui/volume/Interaction$Callback;)V

    .line 418
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x7f110295

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->refreshBg()V

    .line 422
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const v10, 0x7f110296

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    .line 426
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    new-array v7, v7, [Landroid/media/ToneGenerator;

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 427
    const-string v7, "vibrator"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Vibrator;

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 428
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v7}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    .line 429
    const v7, 0x1120053

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    .line 431
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v7, :cond_4

    if-nez v6, :cond_4

    .line 432
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/ZenModeController;->isZenAvailable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    .line 433
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    .line 434
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v10, p0, Lcom/android/systemui/volume/VolumePanel;->mZenCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {v7, v10}, Lcom/android/systemui/statusbar/policy/ZenModeController;->addCallback(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    .line 437
    :cond_4
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 438
    .local v3, "masterVolumeOnly":Z
    const v7, 0x1120015

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 439
    .local v2, "masterVolumeKeySounds":Z
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    :goto_3
    iput-boolean v8, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->registerReceiver()V

    .line 442
    return-void

    .end local v2    # "masterVolumeKeySounds":Z
    .end local v3    # "masterVolumeOnly":Z
    :cond_5
    move v7, v9

    .line 428
    goto :goto_2

    .restart local v2    # "masterVolumeKeySounds":Z
    .restart local v3    # "masterVolumeOnly":Z
    :cond_6
    move v8, v9

    .line 439
    goto :goto_3
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->toggleRinger(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getValidVolume(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/systemui/volume/VolumePanel;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/volume/VolumePanel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    return p1
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 92
    sput-object p0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/VolumePanel;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # J

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/volume/VolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumePanel;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private announceDialogShown()V
    .locals 2

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mView:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1391
    return-void
.end method

.method private clearRemoteStreamController()V
    .locals 3

    .prologue
    .line 1475
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 1476
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1477
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1478
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    .line 1479
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1480
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1484
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 694
    const-string v8, "VolumePanel"

    const-string v11, "createSliders()!!!"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 696
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const-string v11, "layout_inflater"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 699
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v8, Landroid/util/SparseArray;

    sget-object v11, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v11, v11

    invoke-direct {v8, v11}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    .line 702
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v8, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v8, v8

    if-ge v0, v8, :cond_5

    .line 703
    sget-object v8, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v6, v8, v0

    .line 705
    .local v6, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v7, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 706
    .local v7, "streamType":I
    invoke-static {v7}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v2

    .line 708
    .local v2, "isNotification":Z
    new-instance v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-direct {v5, p0, v12}, Lcom/android/systemui/volume/VolumePanel$StreamControl;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$1;)V

    .line 709
    .local v5, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    iput v7, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    .line 714
    const v8, 0x7f04008e

    invoke-virtual {v1, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 717
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 718
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f110294

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 719
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 720
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 721
    iget v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    iput v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 722
    iget v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    iput v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 723
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v11, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 724
    iget-object v11, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v8, :cond_3

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 725
    if-eqz v2, :cond_1

    .line 726
    iget-boolean v8, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-eqz v8, :cond_0

    .line 727
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 730
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    new-instance v11, Lcom/android/systemui/volume/VolumePanel$5;

    invoke-direct {v11, p0, v5}, Lcom/android/systemui/volume/VolumePanel$5;-><init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    :cond_0
    const v8, 0x7f020246

    iput v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconSuppressedRes:I

    .line 741
    :cond_1
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f11026d

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    iput-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 742
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v11, 0x7f110293

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    .line 743
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    iget v11, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget v8, v6, Lcom/android/systemui/volume/VolumePanel$StreamResources;->descRes:I

    iput v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->descRes:I

    .line 765
    const/4 v8, 0x6

    if-eq v7, v8, :cond_2

    if-nez v7, :cond_4

    :cond_2
    move v3, v9

    .line 767
    .local v3, "plusOne":I
    :goto_2
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v8, v11}, Landroid/widget/SeekBar;->setMax(I)V

    .line 769
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v11, p0, Lcom/android/systemui/volume/VolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v8, v11}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 770
    iget-object v8, v5, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v8, v5}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 771
    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 702
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v3    # "plusOne":I
    :cond_3
    move v8, v10

    .line 724
    goto :goto_1

    :cond_4
    move v3, v10

    .line 765
    goto :goto_2

    .line 773
    .end local v2    # "isNotification":Z
    .end local v5    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .end local v6    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    .end local v7    # "streamType":I
    :cond_5
    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "flags"    # I

    .prologue
    .line 1174
    if-nez p0, :cond_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioManager;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private forceTimeout(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v3, 0x5

    .line 1705
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceTimeout delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1707
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 1708
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .param p1, "streamType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1532
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 1536
    iget-boolean v2, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    if-eqz v2, :cond_1

    .line 1537
    const/4 p1, 0x1

    .line 1544
    :cond_0
    if-nez p1, :cond_2

    .line 1559
    :cond_1
    :goto_0
    return-object v1

    .line 1548
    :cond_2
    monitor-enter p0

    .line 1549
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 1551
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1559
    :cond_3
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    goto :goto_0

    .line 1560
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_3
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_3

    .line 1554
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getStreamMaxVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 632
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterMaxVolume()I

    move-result v2

    .line 650
    :goto_0
    return v2

    .line 634
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 635
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 636
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 637
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 638
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 639
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v2

    goto :goto_0

    .line 642
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 645
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 646
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    goto :goto_0

    .line 650
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getStreamVolume(I)I
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 655
    const/16 v2, -0x64

    if-ne p1, v2, :cond_0

    .line 656
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMasterVolume()I

    move-result v2

    .line 673
    :goto_0
    return v2

    .line 657
    :cond_0
    const/16 v2, -0xc8

    if-ne p1, v2, :cond_2

    .line 658
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 659
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 660
    .local v1, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    .line 661
    iget-object v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    .line 662
    .local v0, "ai":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v2

    goto :goto_0

    .line 665
    .end local v0    # "ai":Landroid/media/session/MediaController$PlaybackInfo;
    .end local v1    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 668
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 669
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    goto :goto_0

    .line 673
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    goto :goto_0
.end method

.method private getSuppressorCaption(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p1, "suppressor"    # Landroid/content/ComponentName;

    .prologue
    .line 944
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 946
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    .line 947
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 948
    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 949
    .local v3, "seq":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 950
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 951
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_0

    .line 959
    .end local v1    # "info":Landroid/content/pm/ServiceInfo;
    .end local v3    # "seq":Ljava/lang/CharSequence;
    .end local v4    # "str":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "VolumePanel"

    const-string v6, "Error loading suppressor caption"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getValidVolume(I)I
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 1732
    div-int/lit8 v1, p1, 0x14

    .line 1733
    .local v1, "result":I
    rem-int/lit8 v0, p1, 0x14

    .line 1734
    .local v0, "remainder":I
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 1735
    :cond_0
    return v1
.end method

.method private initDialogInternal()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 472
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 473
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 474
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 475
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    const v3, 0x7f04008f

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 476
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/android/systemui/volume/VolumePanel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/volume/VolumePanel$3;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 486
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->create()V

    .line 488
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 489
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 490
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 491
    const/16 v2, 0x7de

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 492
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 493
    const v2, 0x7f0d002d

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 494
    const-string v2, "VolumePanel"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 495
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateWidth()V

    .line 499
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 501
    const v2, 0x40028

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 508
    return-void
.end method

.method private isMuted(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 621
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMasterMute()Z

    move-result v0

    .line 627
    :goto_0
    return v0

    .line 623
    :cond_0
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_1

    .line 625
    const/4 v0, 0x0

    goto :goto_0

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isNotificationOrRing(I)Z
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1038
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method private refreshBg()V
    .locals 3

    .prologue
    .line 1909
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 1914
    :goto_0
    return-void

    .line 1911
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02061b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1913
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 594
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 595
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 596
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 597
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/volume/VolumePanel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/volume/VolumePanel$4;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 618
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .param p1, "activeStreamType"    # I

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 790
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 791
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 792
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 802
    :goto_0
    return-void

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 796
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 797
    iget-object v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 798
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 799
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/4 v6, 0x5

    .line 1693
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    .line 1694
    .local v0, "touchExploration":Z
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetTimeout at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " touchExploration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 1697
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1698
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v6, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 1699
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1700
    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessage(I)Z

    .line 1702
    :cond_2
    return-void
.end method

.method private setLayoutDirection(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 590
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 591
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "resMuteId"    # I

    .prologue
    .line 1569
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1570
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1571
    iput p1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    .line 1572
    iput p2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    .line 1573
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1575
    :cond_0
    return-void
.end method

.method private setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 678
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0xc8

    if-ne v0, v1, :cond_2

    .line 679
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    invoke-virtual {v0, p2, p3}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "Adjusting remote volume without a controller!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    :cond_2
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 685
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_3

    .line 686
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p2, p3}, Landroid/media/AudioManager;->setMasterVolume(II)V

    goto :goto_0

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v0, v1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private showVibrateHint()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 1028
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1029
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mIconPulser:Lcom/android/systemui/volume/IconPulser;

    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/IconPulser;->start(Landroid/view/View;)V

    .line 1031
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1032
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendEmptyMessageDelayed(IJ)Z

    .line 1035
    :cond_0
    return-void
.end method

.method private static streamToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "stream"    # I

    .prologue
    .line 1178
    invoke-static {p0}, Landroid/media/AudioService;->streamToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toggleRinger(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 2
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    const/4 v1, 0x2

    .line 776
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 785
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 779
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 780
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 783
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    goto :goto_0
.end method

.method private updateActiveSlider()V
    .locals 3

    .prologue
    .line 1083
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1084
    .local v0, "active":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 1085
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1087
    :cond_0
    return-void
.end method

.method private updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "forceReloadIcon"    # Z

    .prologue
    .line 964
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 965
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 966
    .local v0, "muted":Z
    if-eqz p2, :cond_0

    .line 967
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 969
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 970
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 971
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderSuppressor(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    .line 972
    return-void
.end method

.method private updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V
    .locals 7
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z
    .param p3, "fixedVolume"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 975
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v1

    .line 976
    .local v1, "wasEnabled":Z
    iget v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v4}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 977
    .local v0, "isRinger":Z
    iget v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/16 v5, -0xc8

    if-ne v4, v5, :cond_3

    .line 980
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-nez p3, :cond_2

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 1003
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1004
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1005
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1006
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1019
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 980
    goto :goto_0

    .line 981
    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    .line 982
    iget-object v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 983
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 984
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_1

    .line 985
    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v4

    if-eqz v4, :cond_0

    .line 993
    :cond_5
    if-nez p3, :cond_7

    iget v4, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v5

    if-eq v4, v5, :cond_6

    if-nez v0, :cond_6

    if-nez p2, :cond_7

    :cond_6
    sget-object v4, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v4, :cond_8

    .line 996
    :cond_7
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 998
    :cond_8
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 999
    iget-object v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1000
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 4
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x2

    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, "muted":Z
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v3, :cond_2

    .line 909
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 919
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->message:Landroid/widget/TextView;

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->descRes:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 921
    iget-object v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 922
    if-eqz v0, :cond_1

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x7f020244

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 927
    :cond_1
    return-void

    .line 913
    :cond_2
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 916
    const/4 v0, 0x1

    goto :goto_0

    .line 921
    :cond_3
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1
.end method

.method private updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "muted"    # Z

    .prologue
    .line 866
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result p2

    .line 897
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 898
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 900
    iget-object v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v1, 0x7f020244

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 903
    :cond_1
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSliderIcon, streamType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " muted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    return-void

    .line 897
    :cond_2
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V
    .locals 6
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;
    .param p2, "progress"    # I

    .prologue
    const/16 v5, 0x12

    const/4 v4, 0x2

    .line 806
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mRingSeekBarTracking:Z

    if-eqz v1, :cond_1

    .line 837
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v0

    .line 815
    .local v0, "isRinger":Z
    if-gez p2, :cond_2

    .line 816
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result p2

    .line 818
    :cond_2
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSliderProgress(),  sc :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "sc.streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/SeekBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 823
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 826
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-ne v1, v4, :cond_0

    .line 827
    invoke-virtual {p0, v5}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 828
    invoke-static {p0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private updateSliderSuppressor(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 930
    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    .line 932
    .local v0, "suppressor":Landroid/content/ComponentName;
    :goto_0
    if-nez v0, :cond_1

    .line 933
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 941
    :goto_1
    return-void

    .line 930
    .end local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 936
    .restart local v0    # "suppressor":Landroid/content/ComponentName;
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 1075
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1076
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1077
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1078
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->updateSlider(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1076
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1080
    .end local v2    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method

.method private updateTimeoutDelay()V
    .locals 3

    .prologue
    const/16 v0, 0x2710

    .line 1047
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    .line 1053
    return-void

    .line 1047
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    const/16 v0, 0x1388

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/16 v0, 0x5dc

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    if-nez v1, :cond_0

    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method private updateWidth()V
    .locals 3

    .prologue
    .line 511
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 512
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 516
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x31

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 518
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 519
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1716
    const-string v5, "volume"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1728
    :goto_0
    return-void

    .line 1717
    :cond_0
    const-string v5, "icon"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1718
    .local v1, "icon":Ljava/lang/String;
    const-string v5, "iconmute"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1719
    .local v2, "iconMute":Ljava/lang/String;
    if-eqz v2, :cond_2

    move v3, v6

    .line 1720
    .local v3, "mute":Z
    :goto_1
    if-eqz v3, :cond_1

    move-object v1, v2

    .line 1721
    :cond_1
    const-string v5, "Stream"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1722
    :goto_2
    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel$StreamResources;->valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/VolumePanel$StreamResources;

    move-result-object v4

    .line 1723
    .local v4, "sr":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    if-eqz v3, :cond_4

    iget v5, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconMuteRes:I

    :goto_3
    iput v5, p0, Lcom/android/systemui/volume/VolumePanel;->mDemoIcon:I

    .line 1724
    sget-object v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui/volume/VolumePanel$StreamResources;

    iget v0, v5, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    .line 1725
    .local v0, "forcedStreamType":I
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1726
    iget-object v5, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v0, v7, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    .end local v0    # "forcedStreamType":I
    .end local v3    # "mute":Z
    .end local v4    # "sr":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_2
    move v3, v7

    .line 1719
    goto :goto_1

    .line 1721
    .restart local v3    # "mute":Z
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "Stream"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1723
    .restart local v4    # "sr":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_4
    iget v5, v4, Lcom/android/systemui/volume/VolumePanel$StreamResources;->iconRes:I

    goto :goto_3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 522
    const-string v3, "VolumePanel state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    const-string v3, "  mTag="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    const-string v3, "  mRingIsSilent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 525
    const-string v3, "  mVoiceCapable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mVoiceCapable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 526
    const-string v3, "  mHasVibrator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mHasVibrator:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 527
    const-string v3, "  mZenModeAvailable="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenModeAvailable:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 528
    const-string v3, "  mZenPanelExpanded="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 529
    const-string v3, "  mNotificationEffectsSuppressor="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mNotificationEffectsSuppressor:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 530
    const-string v3, "  mTimeoutDelay="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTimeoutDelay:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 531
    const-string v3, "  mDisabledAlpha="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mDisabledAlpha:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 532
    const-string v3, "  mLastRingerMode="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerMode:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 533
    const-string v3, "  mLastRingerProgress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mLastRingerProgress:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 534
    const-string v3, "  mPlayMasterStreamTones="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/volume/VolumePanel;->mPlayMasterStreamTones:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 535
    const-string v3, "  isShowing()="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 536
    const-string v3, "  mCallback="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 537
    const-string v3, "  sConfirmSafeVolumeDialog="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 538
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    const-string v3, "<not null>"

    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    const-string v3, "  mActiveStreamType="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 540
    const-string v3, "  mStreamControls="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v3, :cond_2

    .line 542
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    :cond_0
    return-void

    .line 538
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 544
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 545
    .local v0, "N":I
    const-string v3, "<size "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x3e

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 546
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 547
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 548
    .local v2, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    const-string v3, "    stream "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 549
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    .line 550
    const-string v3, " progress="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 551
    const-string v3, " of "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 552
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, " (disabled)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 554
    :cond_3
    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, " (clickable)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 555
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 546
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1590
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1690
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1593
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 1598
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onMuteChanged(II)V

    goto :goto_0

    .line 1603
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 1608
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 1613
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 1618
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 1623
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onVibrateInAlarm()V

    goto :goto_0

    .line 1627
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1629
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->clearRemoteStreamController()V

    .line 1630
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v0, :cond_1

    .line 1632
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 1635
    :cond_1
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1636
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1637
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v2, "SafetyWarning timeout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_2
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1640
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1647
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1648
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateActiveSlider()V

    goto :goto_0

    .line 1654
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/MediaController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V

    goto :goto_0

    .line 1659
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onRemoteVolumeUpdateIfShown()V

    goto :goto_0

    .line 1663
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onSliderVisibilityChanged(II)V

    goto :goto_0

    .line 1667
    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->onDisplaySafeVolumeWarning(I)V

    goto/16 :goto_0

    .line 1671
    :pswitch_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->setLayoutDirection(I)V

    goto/16 :goto_0

    .line 1680
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onInteraction()V

    goto/16 :goto_0

    .line 1686
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->invalidateProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V

    goto/16 :goto_0

    .line 1590
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_10
    .end packed-switch
.end method

.method public invalidateProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;)V
    .locals 10
    .param p1, "sc"    # Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .prologue
    .line 842
    if-nez p1, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 846
    iget-object v7, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    .line 847
    .local v4, "progress":I
    iget-object v7, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    .line 848
    .local v3, "max":I
    iget-object v7, p1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 849
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v7, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v7, :cond_0

    .line 850
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    const v7, 0x102000d

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 851
    .local v5, "progressDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_0

    .line 852
    if-lez v3, :cond_2

    int-to-float v7, v4

    int-to-float v8, v3

    div-float v6, v7, v8

    .line 853
    .local v6, "scale":F
    :goto_1
    const v7, 0x461c4000    # 10000.0f

    mul-float/2addr v7, v6

    float-to-int v1, v7

    .line 854
    .local v1, "destLevel":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    .line 855
    .local v0, "actualLevel":I
    if-eq v1, v0, :cond_0

    .line 856
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " dest level="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",actual level ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 852
    .end local v0    # "actualLevel":I
    .end local v1    # "destLevel":I
    .end local v6    # "scale":F
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 447
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 448
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 449
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 450
    invoke-virtual {v1, p1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 453
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 456
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mSliderPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 462
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 463
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->refreshBg()V

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateWidth()V

    .line 469
    return-void
.end method

.method protected onDisplaySafeVolumeWarning(I)V
    .locals 4
    .param p1, "flags"    # I

    .prologue
    .line 1509
    and-int/lit16 v0, p1, 0x401

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1511
    :cond_0
    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1512
    :try_start_0
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1513
    monitor-exit v1

    .line 1526
    :goto_0
    return-void

    .line 1515
    :cond_1
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v2, p0, v3}, Lcom/android/systemui/volume/VolumePanel$SafetyWarning;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumePanel;Landroid/media/AudioManager;)V

    sput-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    .line 1516
    sget-object v0, Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1517
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1518
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateStates()V

    .line 1520
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1521
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    goto :goto_0

    .line 1517
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1523
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V

    .line 1524
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    goto :goto_0
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 1578
    monitor-enter p0

    .line 1579
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1580
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1581
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1579
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1585
    :cond_1
    monitor-exit p0

    .line 1586
    return-void

    .line 1585
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onMuteChanged(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1217
    sget-boolean v1, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMuteChanged(streamType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1221
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    if-eqz v0, :cond_1

    .line 1222
    iget v1, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1224
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->onVolumeChanged(II)V

    .line 1225
    return-void
.end method

.method protected onPlaySound(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x3

    .line 1399
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1400
    invoke-virtual {p0, v2}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1402
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    .line 1405
    :cond_0
    monitor-enter p0

    .line 1406
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 1407
    .local v0, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 1408
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1409
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1411
    :cond_1
    monitor-exit p0

    .line 1412
    return-void

    .line 1411
    .end local v0    # "toneGen":Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 5
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/16 v3, -0xc8

    .line 1443
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRemoteVolumeChanged(controller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1447
    :cond_1
    monitor-enter p0

    .line 1448
    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, v3, :cond_2

    .line 1449
    const/16 v0, -0xc8

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 1451
    :cond_2
    const/16 v0, -0xc8

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1452
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    :cond_3
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1458
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1459
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 1460
    return-void

    .line 1452
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1454
    :cond_4
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "not calling onShowVolumeChanged(), no FLAG_SHOW_UI or no UI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRemoteVolumeUpdateIfShown()V
    .locals 3

    .prologue
    const/16 v2, -0xc8

    .line 1463
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v1, "onRemoteVolumeUpdateIfShown()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 1467
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1469
    :cond_1
    return-void
.end method

.method protected onShowVolumeChanged(IILandroid/media/session/MediaController;)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "flags"    # I
    .param p3, "controller"    # Landroid/media/session/MediaController;

    .prologue
    .line 1228
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I

    move-result v0

    .line 1230
    .local v0, "index":I
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    .line 1232
    sget-boolean v7, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_0

    .line 1233
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onShowVolumeChanged(streamType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", flags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->getStreamMaxVolume(I)I

    move-result v1

    .line 1239
    .local v1, "max":I
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 1241
    .local v4, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    sparse-switch p1, :sswitch_data_0

    .line 1322
    :cond_1
    :goto_0
    :sswitch_0
    if-eqz v4, :cond_12

    .line 1323
    const/16 v7, -0xc8

    if-ne p1, v7, :cond_3

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eq p3, v7, :cond_3

    .line 1324
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    if-eqz v7, :cond_2

    .line 1325
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1327
    :cond_2
    iput-object p3, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1328
    if-eqz p3, :cond_3

    .line 1329
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumePanel;->mMediaControllerCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v7, v8}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 1332
    :cond_3
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getMax()I

    move-result v7

    if-eq v7, v1, :cond_4

    .line 1333
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1335
    :cond_4
    invoke-direct {p0, v4, v0}, Lcom/android/systemui/volume/VolumePanel;->updateSliderProgress(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 1336
    invoke-direct {p0, v4, p2}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;I)V

    .line 1337
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->isMuted(I)Z

    move-result v2

    .line 1338
    .local v2, "muted":Z
    and-int/lit8 v7, p2, 0x20

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    :goto_1
    invoke-direct {p0, v4, v2, v7}, Lcom/android/systemui/volume/VolumePanel;->updateSliderEnabled(Lcom/android/systemui/volume/VolumePanel$StreamControl;ZZ)V

    .line 1339
    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1341
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1342
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mSecondaryIconTransition:Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;

    invoke-virtual {v7}, Lcom/android/systemui/volume/VolumePanel$SecondaryIconTransition;->cancel()V

    .line 1343
    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setAlpha(F)V

    iget-object v7, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 1346
    :cond_5
    invoke-direct {p0, v4, v2}, Lcom/android/systemui/volume/VolumePanel;->updateSliderIcon(Lcom/android/systemui/volume/VolumePanel$StreamControl;Z)V

    .line 1353
    .end local v2    # "muted":Z
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->isShowing()Z

    move-result v7

    if-nez v7, :cond_9

    .line 1354
    const/16 v7, -0xc8

    if-ne p1, v7, :cond_13

    const/4 v5, -0x1

    .line 1356
    .local v5, "stream":I
    :goto_3
    const/16 v7, -0x64

    if-eq v5, v7, :cond_7

    .line 1357
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1359
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 1360
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    if-eqz v7, :cond_8

    .line 1361
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/systemui/volume/VolumePanel$Callback;->onVisible(Z)V

    .line 1363
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->announceDialogShown()V

    .line 1367
    .end local v5    # "stream":I
    :cond_9
    const/16 v7, -0xc8

    if-eq p1, v7, :cond_a

    and-int/lit8 v7, p2, 0x10

    if-eqz v7, :cond_a

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->isNotificationOrRing(I)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    .line 1371
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1380
    :cond_a
    and-int/lit16 v7, p2, 0x800

    if-eqz v7, :cond_b

    .line 1381
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->showVibrateHint()V

    .line 1383
    :cond_b
    const/4 v7, 0x4

    if-ne p1, v7, :cond_c

    if-nez v0, :cond_c

    .line 1385
    const/16 v7, 0x11

    invoke-virtual {p0, v7}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1387
    :cond_c
    return-void

    .line 1243
    :sswitch_1
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 1245
    .local v3, "ringuri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1246
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1253
    .end local v3    # "ringuri":Landroid/net/Uri;
    :sswitch_2
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v7

    and-int/lit16 v7, v7, 0x380

    if-eqz v7, :cond_d

    .line 1257
    const v7, 0x7f02023f

    const v8, 0x7f020240

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1259
    :cond_d
    const v7, 0x7f020245

    const v8, 0x7f020246

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/volume/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_0

    .line 1272
    :sswitch_3
    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1281
    :sswitch_4
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 1283
    .restart local v3    # "ringuri":Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 1284
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 1301
    .end local v3    # "ringuri":Landroid/net/Uri;
    :sswitch_5
    if-nez p3, :cond_e

    if-eqz v4, :cond_e

    .line 1303
    iget-object p3, v4, Lcom/android/systemui/volume/VolumePanel$StreamControl;->controller:Landroid/media/session/MediaController;

    .line 1305
    :cond_e
    if-nez p3, :cond_10

    .line 1307
    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    const-string v8, "sent remote volume change without a controller!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_f
    :goto_4
    sget-boolean v7, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showing remote volume "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " over "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1309
    :cond_10
    invoke-virtual {p3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v6

    .line 1310
    .local v6, "vi":Landroid/media/session/MediaController$PlaybackInfo;
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v0

    .line 1311
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v1

    .line 1312
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v7

    and-int/lit8 v7, v7, 0x0

    if-eqz v7, :cond_f

    .line 1314
    or-int/lit8 p2, p2, 0x20

    goto :goto_4

    .line 1338
    .end local v6    # "vi":Landroid/media/session/MediaController$PlaybackInfo;
    .restart local v2    # "muted":Z
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1349
    .end local v2    # "muted":Z
    :cond_12
    const-string v7, "VolumePanel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "what\'s a pity, streamType is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  mStreamControls.get(streamType) = null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    goto/16 :goto_2

    :cond_13
    move v5, p1

    .line 1354
    goto/16 :goto_3

    .line 1241
    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_5
        0x0 -> :sswitch_3
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_0
        0x5 -> :sswitch_4
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected declared-synchronized onSliderVisibilityChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "visible"    # I

    .prologue
    const/4 v1, 0x1

    .line 1494
    monitor-enter p0

    :try_start_0
    sget-boolean v3, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSliderVisibilityChanged(stream="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", visi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    :cond_0
    if-ne p2, v1, :cond_2

    .line 1496
    .local v1, "isVisible":Z
    :goto_0
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 1497
    sget-object v3, Lcom/android/systemui/volume/VolumePanel;->STREAMS:[Lcom/android/systemui/volume/VolumePanel$StreamResources;

    aget-object v2, v3, v0

    .line 1498
    .local v2, "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    iget v3, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->streamType:I

    if-ne v3, p1, :cond_3

    .line 1499
    iput-boolean v1, v2, Lcom/android/systemui/volume/VolumePanel$StreamResources;->show:Z

    .line 1500
    if-nez v1, :cond_1

    iget v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-ne v3, p1, :cond_1

    .line 1501
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_1
    monitor-exit p0

    return-void

    .line 1495
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1496
    .restart local v0    # "i":I
    .restart local v1    # "isVisible":Z
    .restart local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1494
    .end local v0    # "i":I
    .end local v1    # "isVisible":Z
    .end local v2    # "streamRes":Lcom/android/systemui/volume/VolumePanel$StreamResources;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 1416
    monitor-enter p0

    .line 1417
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1418
    .local v1, "numStreamTypes":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1419
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 1420
    .local v2, "toneGen":Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 1421
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1418
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1424
    .end local v2    # "toneGen":Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 1425
    return-void

    .line 1424
    .end local v0    # "i":I
    .end local v1    # "numStreamTypes":I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 4

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    sget-object v1, Lcom/android/systemui/volume/VolumePanel;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    goto :goto_0
.end method

.method protected onVibrateInAlarm()V
    .locals 4

    .prologue
    .line 1438
    const-string v0, "VolumePanel"

    const-string v1, "onVibrateInAlarm"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1440
    return-void
.end method

.method protected onVolumeChanged(II)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1188
    sget-boolean v0, Lcom/android/systemui/volume/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->streamToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/systemui/volume/VolumePanel;->flagsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 1192
    monitor-enter p0

    .line 1193
    :try_start_0
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 1194
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumePanel;->reorderSliders(I)V

    .line 1196
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/volume/VolumePanel;->onShowVolumeChanged(IILandroid/media/session/MediaController;)V

    .line 1197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 1201
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1202
    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1205
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 1206
    invoke-virtual {p0, v4}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1207
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1208
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumePanel;->onStopSounds()V

    .line 1211
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1212
    invoke-virtual {p0, v5}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1213
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V

    .line 1214
    return-void

    .line 1197
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postDismiss(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 1165
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->forceTimeout(J)V

    .line 1166
    return-void
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 1162
    return-void
.end method

.method public postHasNewRemotePlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 1132
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    :goto_0
    return-void

    .line 1135
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public postLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v1, 0xc

    .line 1169
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1170
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1171
    return-void
.end method

.method public postMasterMuteChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1154
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postMuteChanged(II)V

    .line 1155
    return-void
.end method

.method public postMasterVolumeChanged(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1139
    const/16 v0, -0x64

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->postVolumeChanged(II)V

    .line 1140
    return-void
.end method

.method public postMuteChanged(II)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 1143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1151
    :goto_0
    return-void

    .line 1144
    :cond_0
    monitor-enter p0

    .line 1145
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1146
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 1148
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1150
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postRemoteSliderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 1116
    const/16 v1, 0xa

    const/16 v2, -0xc8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1118
    return-void

    .line 1116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postRemoteVolumeChanged(Landroid/media/session/MediaController;I)V
    .locals 2
    .param p1, "controller"    # Landroid/media/session/MediaController;
    .param p2, "flags"    # I

    .prologue
    const/16 v1, 0x8

    .line 1105
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1106
    :cond_0
    monitor-enter p0

    .line 1107
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1108
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 1110
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1112
    const/4 v0, 0x0

    invoke-virtual {p0, v1, p2, v0, p1}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 1094
    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1095
    :cond_0
    monitor-enter p0

    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel;->mStreamControls:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1097
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel;->createSliders()V

    .line 1099
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumePanel;->removeMessages(I)V

    .line 1101
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/systemui/volume/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1099
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/android/systemui/volume/VolumePanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/volume/VolumePanel$Callback;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;

    .line 1044
    return-void
.end method
