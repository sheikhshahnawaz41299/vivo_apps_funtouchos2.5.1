.class public Lcom/vivo/settings/SoundSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$OnKeyEventListener;


# static fields
.field private static final ACTION_VIVO_SOUND:Ljava/lang/String; = "vivo.intent.action.VIVO_SOUND"

.field private static final KEY_ASCENDING_RING:Ljava/lang/String; = "ascending_ring"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_DUAL_SPKR:Ljava/lang/String; = "key_dual_spkr"

.field private static final KEY_DUAL_SPKR_EXP:Ljava/lang/String; = "key_dual_spkr_exp"

.field private static final KEY_HIFI_GLOBLE_CATEGORY_1:Ljava/lang/String; = "hifi_globle_category_1"

.field private static final KEY_HIFI_GLOBLE_CATEGORY_2:Ljava/lang/String; = "hifi_globle_category_2"

.field private static final KEY_HIFI_SETTINGS:Ljava/lang/String; = "hifi_settings"

.field private static final KEY_INPUT_METHOD_SOUND:Ljava/lang/String; = "key_input_method_sound"

.field private static final KEY_INPUT_METHOD_VIBRATE:Ljava/lang/String; = "key_input_method_vibrate"

.field private static final KEY_KTV_SETTINGS:Ljava/lang/String; = "ktv_settings"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_MESSAGE_:Ljava/lang/String; = "sound_messages"

.field private static final KEY_MESSAGE_SENT_SOUND:Ljava/lang/String; = "message_sent_sound"

.field private static final KEY_MESSAGE_SIM2:Ljava/lang/String; = "sound_messages_sim2"

.field private static final KEY_NOTIFICATION:Ljava/lang/String; = "sound_notification"

.field private static final KEY_RETURN:Ljava/lang/String; = "return"

.field private static final KEY_RINGTON:Ljava/lang/String; = "sound_ringtone"

.field private static final KEY_RINGTONE_SIM2:Ljava/lang/String; = "sound_ringtone_sim2"

.field private static final KEY_RING_VOL_CHANGE_BY_KEYS:Ljava/lang/String; = "ring_vol_change_by_keys"

.field private static final KEY_RING_VOL_CHANGE_BY_KEYS_EXPLAIN:Ljava/lang/String; = "ring_vol_change_by_keys_explain"

.field private static final KEY_SEEKBAR_ALARM:Ljava/lang/String; = "seekbar_alarm"

.field private static final KEY_SEEKBAR_MEDIA:Ljava/lang/String; = "seekbar_media"

.field private static final KEY_SEEKBAR_RING:Ljava/lang/String; = "seekbar_ring"

.field private static final KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SPEAKER_BOOST:Ljava/lang/String; = "speaker_boost"

.field private static final KEY_SPEAKER_BOOST_CAT:Ljava/lang/String; = "speaker_boost_cat"

.field private static final KEY_SRS_MAXV:Ljava/lang/String; = "srs_maxv"

.field private static final KEY_SRS_MAXV_CAT:Ljava/lang/String; = "srs_maxv_cat"

.field private static final KEY_STATE:Ljava/lang/String; = "state"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final KEY_VIBRATE_STATE:Ljava/lang/String; = "key_vibrate_state"

.field private static final KEY_VIVO_SOUND:Ljava/lang/String; = "vivo_sound"

.field private static final MSG_UPDATE_STATE:I = 0x0

.field private static final MSG_UPDATE_SUMMARIES:I = 0x1

.field public static final SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/settings/xml/SettingsResouce",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTINGS_RING_VOL_CHANGE_BY_KEYS:Ljava/lang/String; = "ring_vol_change_by_keys"

.field public static final SOUND_TYPE:Ljava/lang/String; = "soundType"

.field private static final TAG:Ljava/lang/String; = "SoundSettings"

.field private static final TAG_MAXV:Ljava/lang/String; = "MAXV"

.field private static final TAG_SPEAKER:Ljava/lang/String; = "SPBOOST"

.field private static final TAG_SPKR_MODE:Ljava/lang/String; = "SPKR"

.field public static final TYPE_ALARM:I = 0x6

.field public static final TYPE_MEDIA:I = 0x5

.field public static final TYPE_MESSAGE_SIM1:I = 0x1

.field public static final TYPE_MESSAGE_SIM2:I = 0x3

.field public static final TYPE_NOTIFICATION:I = 0x4

.field public static final TYPE_RINGTONE_SIM1:I = 0x0

.field public static final TYPE_RINGTONE_SIM2:I = 0x2

.field private static final VIVO_INPUT_METHOD_VIBRATE:Ljava/lang/String; = "vivo_input_method_vibrate"


# instance fields
.field private mAlarmSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

.field private mAscendingRing:Landroid/preference/CheckBoxPreference;

.field mAudioFeatures:Landroid/media/AudioFeatures;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mDualSpkr:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMediaSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

.field private mMessage:Landroid/preference/Preference;

.field private mMessageSent:Landroid/preference/CheckBoxPreference;

.field private mMessageSim2:Landroid/preference/Preference;

.field private mNotification:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

.field private mRingVolChangeByKeys:Landroid/preference/ListPreference;

.field private mRingVolChangeByKeysExplain:Landroid/preference/Preference;

.field private mRington:Landroid/preference/Preference;

.field private mRingtonSim2:Landroid/preference/Preference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSilent:Landroid/preference/CheckBoxPreference;

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSpeakerBoost:Landroid/preference/CheckBoxPreference;

.field private mSrsMaxv:Landroid/preference/CheckBoxPreference;

.field private mVibrate:Landroid/preference/CheckBoxPreference;

.field private mVibrateState:Landroid/preference/CheckBoxPreference;

.field private final sIsCMCC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1058
    new-instance v0, Lcom/vivo/settings/SoundSettings$3;

    invoke-direct {v0}, Lcom/vivo/settings/SoundSettings$3;-><init>()V

    sput-object v0, Lcom/vivo/settings/SoundSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 106
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/settings/SoundSettings;->sIsCMCC:Z

    .line 110
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    .line 111
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    .line 112
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mRingSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    .line 113
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mMediaSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    .line 114
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mAlarmSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    .line 115
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mSrsMaxv:Landroid/preference/CheckBoxPreference;

    .line 116
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mSpeakerBoost:Landroid/preference/CheckBoxPreference;

    .line 118
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    .line 119
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    .line 120
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    .line 121
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    .line 122
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mNotification:Landroid/preference/Preference;

    .line 123
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mAscendingRing:Landroid/preference/CheckBoxPreference;

    .line 125
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mVibrateState:Landroid/preference/CheckBoxPreference;

    .line 127
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mDualSpkr:Landroid/preference/CheckBoxPreference;

    .line 131
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 132
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 133
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 134
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mMessageSent:Landroid/preference/CheckBoxPreference;

    .line 138
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

    .line 139
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    .line 143
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 146
    new-instance v0, Lcom/vivo/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/SoundSettings$1;-><init>(Lcom/vivo/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    new-instance v0, Lcom/vivo/settings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/SoundSettings$2;-><init>(Lcom/vivo/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 819
    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mAudioFeatures:Landroid/media/AudioFeatures;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/SoundSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updateState()V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/SoundSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/SoundSettings;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/SoundSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/SoundSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updateSummaries()V

    return-void
.end method

.method private enableDualSpkr(Z)V
    .locals 3
    .param p1, "en"    # Z

    .prologue
    .line 831
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings;->mAudioFeatures:Landroid/media/AudioFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPKR:state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioFeatures;->setAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 833
    return-void
.end method

.method private enableMaxV(Z)V
    .locals 3
    .param p1, "en"    # Z

    .prologue
    .line 822
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings;->mAudioFeatures:Landroid/media/AudioFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAXV:state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioFeatures;->setAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 824
    return-void
.end method

.method private enableSpeaker(Z)V
    .locals 3
    .param p1, "en"    # Z

    .prologue
    .line 827
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings;->mAudioFeatures:Landroid/media/AudioFeatures;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SPBOOST:state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioFeatures;->setAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 828
    return-void
.end method

.method public static getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, "setting":Ljava/lang/String;
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 1026
    const-string v0, "bbk_ringtonge"

    .line 1034
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "uriString":Ljava/lang/String;
    const-string v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBBKDefaultRingtone uriString="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_1
    return-object v2

    .line 1027
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    .line 1028
    const-string v0, "bbk_message_sound"

    goto :goto_0

    .line 1029
    :cond_2
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_3

    .line 1030
    const-string v0, "bbk_alarm_alert"

    goto :goto_0

    .line 1031
    :cond_3
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 1032
    const-string v0, "notification_sound"

    goto :goto_0

    .line 1037
    .restart local v1    # "uriString":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 529
    if-nez p1, :cond_0

    .line 534
    :goto_0
    return-object v2

    .line 532
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "cursor":Landroid/database/Cursor;
    move-object v2, v6

    .line 534
    goto :goto_0
.end method

.method public static getCursorTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v4, 0x8

    .line 538
    const/4 v2, 0x0

    .line 539
    .local v2, "title":Ljava/lang/String;
    const/16 v0, 0x8

    .line 540
    .local v0, "INDEX_TITLE":I
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 541
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 543
    const/16 v3, 0x8

    :try_start_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 550
    :goto_0
    return-object v2

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "SoundSettings"

    const-string v4, " ...getCursorTitle "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 548
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    const-string v3, "SoundSettings"

    const-string v4, "getCursorTitle title is null"

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSelectProfile()I
    .locals 4

    .prologue
    .line 951
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.settings_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 954
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "selectedProfile"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 955
    .local v0, "profile":I
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectProfile:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return v0
.end method

.method public static getUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 451
    const/4 v4, 0x0

    .line 452
    .local v4, "uri":Landroid/net/Uri;
    packed-switch p1, :pswitch_data_0

    .line 524
    :cond_0
    :goto_0
    const-string v5, "SoundSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUri type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return-object v4

    .line 455
    :pswitch_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {p0, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/vivo/settings/SoundSettings;->getUriFile(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v5, "SoundSettings"

    const-string v6, "IllegalStateException when get ringtone"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-static {p0, v8}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 461
    goto :goto_0

    .line 463
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "message_sound"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v4, v5

    .line 468
    :goto_1
    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "external"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 469
    const/4 v5, 0x2

    invoke-static {p0, v5, v4}, Lcom/vivo/settings/SoundSettings;->getUriFile(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    .line 466
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 471
    :catch_1
    move-exception v0

    .line 472
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string v5, "SoundSettings"

    const-string v6, "IllegalStateException when get messageUri"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {p0, v9}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 475
    goto :goto_0

    .line 478
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "str":Ljava/lang/String;
    :pswitch_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "ringtone_sim2"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 481
    .local v2, "str2":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v4

    .line 487
    .end local v2    # "str2":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "external"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 488
    invoke-static {p0, v8, v4}, Lcom/vivo/settings/SoundSettings;->getUriFile(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 491
    :cond_2
    if-nez v4, :cond_0

    .line 492
    invoke-static {p0, v8}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .restart local v2    # "str2":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    .line 481
    goto :goto_2

    .line 483
    .end local v2    # "str2":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 484
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string v5, "SoundSettings"

    const-string v6, "IllegalStateException when get ringtone_sim2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {p0, v8}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    goto :goto_2

    .line 497
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "message_sound_sim2"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "str3":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 501
    :goto_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "external"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 502
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v9, v5}, Lcom/vivo/settings/SoundSettings;->getUriFile(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    :cond_4
    move-object v4, v5

    .line 500
    goto :goto_3

    .line 506
    .end local v3    # "str3":Ljava/lang/String;
    :pswitch_4
    invoke-static {p0, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    .line 508
    goto/16 :goto_0

    .line 510
    :pswitch_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/high16 v6, 0x7f070000

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 513
    goto/16 :goto_0

    .line 516
    :pswitch_6
    const/4 v5, 0x4

    const/4 v6, 0x4

    :try_start_3
    invoke-static {p0, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/vivo/settings/SoundSettings;->getUriFile(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    goto/16 :goto_0

    .line 518
    :catch_3
    move-exception v0

    .line 519
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    const-string v5, "SoundSettings"

    const-string v6, "IllegalStateException when get ringtone"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {p0, v7}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getUriFile(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 995
    if-eqz p2, :cond_1

    .line 996
    const/4 v6, 0x0

    .line 997
    .local v6, "mCursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 999
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1000
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1001
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUriFile uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    .end local v6    # "mCursor":Landroid/database/Cursor;
    .end local p2    # "uri":Landroid/net/Uri;
    :goto_0
    return-object p2

    .line 1004
    .restart local v6    # "mCursor":Landroid/database/Cursor;
    .restart local p2    # "uri":Landroid/net/Uri;
    :cond_0
    if-eqz v6, :cond_1

    .line 1005
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1008
    .end local v6    # "mCursor":Landroid/database/Cursor;
    :cond_1
    invoke-static {p0, p1}, Lcom/vivo/settings/SoundSettings;->getBBKDefaultRingtone(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p2

    goto :goto_0
.end method

.method private getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;
    .locals 6
    .param p1, "num"    # I

    .prologue
    const/4 v5, 0x0

    .line 939
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 940
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.settings_preferences"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 942
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 943
    const/4 v2, 0x0

    .line 947
    :goto_0
    return-object v2

    .line 945
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profileVolume"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 947
    .local v1, "volume":I
    new-instance v2, Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    invoke-direct {v2, v0, v1}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;-><init>(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private isDualSpkrModeEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 858
    new-instance v0, Landroid/media/AudioFeatures$TagParameters;

    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mAudioFeatures:Landroid/media/AudioFeatures;

    const-string v3, "SPKR:state=false"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioFeatures;->getAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/AudioFeatures$TagParameters;-><init>(Ljava/lang/String;)V

    .line 861
    .local v0, "tp":Landroid/media/AudioFeatures$TagParameters;
    const-string v2, "OK"

    const-string v3, "return"

    invoke-virtual {v0, v3}, Landroid/media/AudioFeatures$TagParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 862
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioFeatures$TagParameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 864
    :cond_0
    return v1
.end method

.method private isMaxVEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 836
    new-instance v0, Landroid/media/AudioFeatures$TagParameters;

    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mAudioFeatures:Landroid/media/AudioFeatures;

    const-string v3, "MAXV:state=false"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioFeatures;->getAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/AudioFeatures$TagParameters;-><init>(Ljava/lang/String;)V

    .line 839
    .local v0, "tp":Landroid/media/AudioFeatures$TagParameters;
    const-string v2, "OK"

    const-string v3, "return"

    invoke-virtual {v0, v3}, Landroid/media/AudioFeatures$TagParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioFeatures$TagParameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 842
    :cond_0
    return v1
.end method

.method private isSpeakerEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 847
    new-instance v0, Landroid/media/AudioFeatures$TagParameters;

    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mAudioFeatures:Landroid/media/AudioFeatures;

    const-string v3, "SPBOOST:state=false"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioFeatures;->getAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/AudioFeatures$TagParameters;-><init>(Ljava/lang/String;)V

    .line 850
    .local v0, "tp":Landroid/media/AudioFeatures$TagParameters;
    const-string v2, "OK"

    const-string v3, "return"

    invoke-virtual {v0, v3}, Landroid/media/AudioFeatures$TagParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioFeatures$TagParameters;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 853
    :cond_0
    return v1
.end method

.method public static setRingTone(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 869
    const-string v1, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRingTone type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    packed-switch p1, :pswitch_data_0

    .line 895
    :goto_0
    return-void

    .line 872
    :pswitch_0
    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 876
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {p0, v0, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 880
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "message_sound"

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 885
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone_sim2"

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 890
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "message_sound_sim2"

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 870
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private setVibrateSetting(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 753
    if-eqz p1, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->vibrate()V

    .line 756
    :cond_0
    iget-boolean v1, p0, Lcom/vivo/settings/SoundSettings;->sIsCMCC:Z

    if-nez v1, :cond_4

    .line 757
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 758
    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 771
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    if-eqz p1, :cond_6

    move v1, v2

    :goto_2
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 773
    if-eqz p1, :cond_7

    move v0, v2

    .line 775
    .local v0, "vibrateSetting":I
    :goto_3
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 777
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 779
    return-void

    .end local v0    # "vibrateSetting":I
    :cond_2
    move v1, v3

    .line 758
    goto :goto_0

    .line 762
    :cond_3
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_1

    .line 765
    :cond_4
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 766
    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v3

    .line 771
    goto :goto_2

    :cond_7
    move v0, v3

    .line 773
    goto :goto_3
.end method

.method private updatePrefs()V
    .locals 9

    .prologue
    const v8, 0x7f0b08cd

    const v7, 0x7f0b08cb

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 334
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v2, v5}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v0

    .line 335
    .local v0, "sim1Inserted":Z
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v2, v6}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v1

    .line 336
    .local v1, "sim2Inserted":Z
    const-string v2, "SoundSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim1Inserted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sim2Inserted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-nez v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 340
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 341
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Landroid/preference/Preference;)V

    .line 342
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Landroid/preference/Preference;)V

    .line 365
    :goto_0
    return-void

    .line 343
    :cond_0
    if-eqz v0, :cond_1

    .line 344
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 345
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 346
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 347
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 349
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v4, v5}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v4, v6}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v4, v5}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v4, v6}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 360
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 361
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 362
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Landroid/preference/Preference;)V

    .line 363
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_0
.end method

.method private updateRingVolExplain()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 316
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mRingVolChangeByKeysExplain:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ring_vol_change_by_keys"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    const v0, 0x7f0b08ca

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 318
    return-void

    .line 316
    :cond_0
    const v0, 0x7f0b08c9

    goto :goto_0
.end method

.method private updateState()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 267
    iget-object v6, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 268
    .local v1, "ringMode":I
    if-eq v1, v9, :cond_3

    move v2, v4

    .line 269
    .local v2, "silentOrVibrateMode":Z
    :goto_0
    const-string v6, "SoundSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateState ringMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-boolean v6, p0, Lcom/vivo/settings/SoundSettings;->sIsCMCC:Z

    if-eqz v6, :cond_11

    .line 271
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    if-nez v2, :cond_4

    move v6, v4

    :goto_1
    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 272
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    if-nez v2, :cond_5

    move v6, v4

    :goto_2
    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 273
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    if-nez v2, :cond_6

    move v6, v4

    :goto_3
    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 274
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    if-nez v2, :cond_7

    move v6, v4

    :goto_4
    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 275
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mNotification:Landroid/preference/Preference;

    if-nez v2, :cond_8

    move v6, v4

    :goto_5
    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 276
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAscendingRing:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_9

    move v6, v4

    :goto_6
    invoke-virtual {v7, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 277
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

    if-nez v2, :cond_a

    move v6, v4

    :goto_7
    invoke-virtual {v7, v6}, Lcom/vivo/settings/IntegratedToneStatusManager;->setEnable(Z)V

    .line 278
    iget-object v6, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 280
    .local v0, "callVibrateSetting":I
    const-string v6, "SoundSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateState[CMCC] callVibrateSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-eqz v0, :cond_b

    move v3, v4

    .line 282
    .local v3, "vibrateSetting":Z
    :goto_8
    if-eqz v2, :cond_d

    .line 283
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->getSelectProfile()I

    move-result v6

    if-lt v6, v10, :cond_0

    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->getSelectProfile()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-direct {p0, v6}, Lcom/vivo/settings/SoundSettings;->getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getVolume()I

    move-result v6

    if-eqz v6, :cond_1

    .line 284
    :cond_0
    if-eqz v3, :cond_c

    .line 285
    invoke-virtual {p0, v4}, Lcom/vivo/settings/SoundSettings;->setProfile(I)V

    .line 304
    .end local v0    # "callVibrateSetting":I
    .end local v3    # "vibrateSetting":Z
    :cond_1
    :goto_9
    iget-object v6, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v5}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 306
    .restart local v0    # "callVibrateSetting":I
    const-string v6, "SoundSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateState callVibrateSetting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    if-eqz v0, :cond_12

    move v3, v4

    .line 308
    .restart local v3    # "vibrateSetting":Z
    :goto_a
    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 309
    iget-boolean v4, p0, Lcom/vivo/settings/SoundSettings;->sIsCMCC:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 310
    const-string v4, "Profiles_setting"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->getSelectProfile()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/vivo/settings/SoundSettings;->getProfileTitle(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    :cond_2
    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {v4}, Lcom/vivo/settings/BBKSoundStreamManager;->updateProgress()V

    .line 313
    return-void

    .end local v0    # "callVibrateSetting":I
    .end local v2    # "silentOrVibrateMode":Z
    .end local v3    # "vibrateSetting":Z
    :cond_3
    move v2, v5

    .line 268
    goto/16 :goto_0

    .restart local v2    # "silentOrVibrateMode":Z
    :cond_4
    move v6, v5

    .line 271
    goto/16 :goto_1

    :cond_5
    move v6, v5

    .line 272
    goto/16 :goto_2

    :cond_6
    move v6, v5

    .line 273
    goto/16 :goto_3

    :cond_7
    move v6, v5

    .line 274
    goto/16 :goto_4

    :cond_8
    move v6, v5

    .line 275
    goto/16 :goto_5

    :cond_9
    move v6, v5

    .line 276
    goto/16 :goto_6

    :cond_a
    move v6, v5

    .line 277
    goto/16 :goto_7

    .restart local v0    # "callVibrateSetting":I
    :cond_b
    move v3, v5

    .line 281
    goto :goto_8

    .line 287
    .restart local v3    # "vibrateSetting":Z
    :cond_c
    invoke-virtual {p0, v5}, Lcom/vivo/settings/SoundSettings;->setProfile(I)V

    goto :goto_9

    .line 291
    :cond_d
    iget-object v6, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    if-ne v6, v7, :cond_f

    if-eqz v3, :cond_f

    .line 292
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->getSelectProfile()I

    move-result v6

    if-lt v6, v10, :cond_e

    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->getSelectProfile()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-direct {p0, v6}, Lcom/vivo/settings/SoundSettings;->getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getVolume()I

    move-result v6

    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 293
    :cond_e
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/vivo/settings/SoundSettings;->setProfile(I)V

    goto/16 :goto_9

    .line 295
    :cond_f
    iget-object v6, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-lez v6, :cond_1

    .line 296
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->getSelectProfile()I

    move-result v6

    if-lt v6, v10, :cond_10

    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->getSelectProfile()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-direct {p0, v6}, Lcom/vivo/settings/SoundSettings;->getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getVolume()I

    move-result v6

    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 297
    :cond_10
    invoke-virtual {p0, v9}, Lcom/vivo/settings/SoundSettings;->setProfile(I)V

    goto/16 :goto_9

    .line 302
    .end local v0    # "callVibrateSetting":I
    .end local v3    # "vibrateSetting":Z
    :cond_11
    iget-object v6, p0, Lcom/vivo/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_9

    .restart local v0    # "callVibrateSetting":I
    :cond_12
    move v3, v5

    .line 307
    goto/16 :goto_a
.end method

.method private updateStateOther()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 321
    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mAscendingRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "ascending_ring"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 323
    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mVibrateState:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportDualSpkr()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mDualSpkr:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->isDualSpkrModeEnabled()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "waves_switch"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v0, v2

    .line 329
    .local v0, "vivoSoundOpened":Z
    :goto_2
    const-string v2, "vivo_sound"

    if-eqz v0, :cond_4

    const v1, 0x7f0b0953

    :goto_3
    invoke-virtual {p0, v2, v1}, Lcom/vivo/settings/SoundSettings;->setPrefSummary(Ljava/lang/String;I)V

    .line 330
    return-void

    .end local v0    # "vivoSoundOpened":Z
    :cond_1
    move v1, v3

    .line 321
    goto :goto_0

    :cond_2
    move v1, v3

    .line 323
    goto :goto_1

    :cond_3
    move v0, v3

    .line 328
    goto :goto_2

    .line 329
    .restart local v0    # "vivoSoundOpened":Z
    :cond_4
    const v1, 0x7f0b0950

    goto :goto_3
.end method

.method private updateSummaries()V
    .locals 20

    .prologue
    .line 368
    const-string v18, "SoundSettings"

    const-string v19, "SoundSettings.updateSummaries()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v16

    .line 371
    .local v16, "sim1Inserted":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v17

    .line 373
    .local v17, "sim2Inserted":Z
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v19, 0x4

    invoke-static/range {v18 .. v19}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    .line 374
    .local v9, "notiUri":Landroid/net/Uri;
    if-eqz v9, :cond_a

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v9}, Lcom/vivo/settings/SoundSettings;->getCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v7

    .line 376
    .local v7, "notiCursor":Landroid/database/Cursor;
    invoke-static {v7}, Lcom/vivo/settings/SoundSettings;->getCursorTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v8

    .line 377
    .local v8, "notiSummary":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mNotification:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    :cond_0
    if-eqz v7, :cond_1

    .line 381
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 387
    .end local v7    # "notiCursor":Landroid/database/Cursor;
    .end local v8    # "notiSummary":Ljava/lang/String;
    :cond_1
    :goto_0
    if-nez v16, :cond_2

    if-nez v17, :cond_6

    .line 388
    :cond_2
    const/4 v12, 0x0

    .line 389
    .local v12, "ringtonUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v12

    .line 390
    if-eqz v12, :cond_4

    .line 391
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/vivo/settings/SoundSettings;->getCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v10

    .line 392
    .local v10, "ringtonCursor":Landroid/database/Cursor;
    invoke-static {v10}, Lcom/vivo/settings/SoundSettings;->getCursorTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 393
    .local v11, "ringtonSummary":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 396
    :cond_3
    if-eqz v10, :cond_4

    .line 397
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 401
    .end local v10    # "ringtonCursor":Landroid/database/Cursor;
    .end local v11    # "ringtonSummary":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 402
    .local v5, "messageUri":Landroid/net/Uri;
    if-eqz v5, :cond_b

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Lcom/vivo/settings/SoundSettings;->getCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    .line 404
    .local v1, "messageCursor":Landroid/database/Cursor;
    invoke-static {v1}, Lcom/vivo/settings/SoundSettings;->getCursorTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 405
    .local v4, "messageSummary":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    :cond_5
    if-eqz v1, :cond_6

    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 416
    .end local v1    # "messageCursor":Landroid/database/Cursor;
    .end local v4    # "messageSummary":Ljava/lang/String;
    .end local v5    # "messageUri":Landroid/net/Uri;
    .end local v12    # "ringtonUri":Landroid/net/Uri;
    :cond_6
    :goto_1
    if-eqz v17, :cond_9

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v13

    .line 418
    .local v13, "ringtonUriSim2":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/vivo/settings/SoundSettings;->getCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v14

    .line 419
    .local v14, "ringtoneCursorSim2":Landroid/database/Cursor;
    invoke-static {v14}, Lcom/vivo/settings/SoundSettings;->getCursorTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    .line 420
    .local v15, "ringtongStringSim2":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 423
    :cond_7
    if-eqz v14, :cond_8

    .line 424
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const/16 v19, 0x3

    invoke-static/range {v18 .. v19}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    .line 428
    .local v6, "messageUriSim2":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/vivo/settings/SoundSettings;->getCursor(Landroid/content/Context;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 429
    .local v2, "messageCursorSim2":Landroid/database/Cursor;
    invoke-static {v2}, Lcom/vivo/settings/SoundSettings;->getCursorTitle(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 430
    .local v3, "messageStringSim2":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    :goto_2
    if-eqz v2, :cond_9

    .line 436
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 439
    .end local v2    # "messageCursorSim2":Landroid/database/Cursor;
    .end local v3    # "messageStringSim2":Ljava/lang/String;
    .end local v6    # "messageUriSim2":Landroid/net/Uri;
    .end local v13    # "ringtonUriSim2":Landroid/net/Uri;
    .end local v14    # "ringtoneCursorSim2":Landroid/database/Cursor;
    .end local v15    # "ringtongStringSim2":Ljava/lang/String;
    :cond_9
    return-void

    .line 384
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mNotification:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f0b08cf

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 412
    .restart local v5    # "messageUri":Landroid/net/Uri;
    .restart local v12    # "ringtonUri":Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f0b08cf

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 433
    .end local v5    # "messageUri":Landroid/net/Uri;
    .end local v12    # "ringtonUri":Landroid/net/Uri;
    .restart local v2    # "messageCursorSim2":Landroid/database/Cursor;
    .restart local v3    # "messageStringSim2":Ljava/lang/String;
    .restart local v6    # "messageUriSim2":Landroid/net/Uri;
    .restart local v13    # "ringtonUriSim2":Landroid/net/Uri;
    .restart local v14    # "ringtoneCursorSim2":Landroid/database/Cursor;
    .restart local v15    # "ringtongStringSim2":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    move-object/from16 v18, v0

    const v19, 0x7f0b08cf

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2
.end method

.method private vibrate()V
    .locals 4

    .prologue
    .line 782
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 783
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 784
    return-void
.end method


# virtual methods
.method public getProfileTitle(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "selectProfile"    # I

    .prologue
    .line 970
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 971
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 973
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 983
    add-int/lit8 v0, p1, -0x4

    invoke-direct {p0, v0}, Lcom/vivo/settings/SoundSettings;->getUserProfileInfo(I)Lcom/vivo/settings/ProfileSettings$ProfileInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/ProfileSettings$ProfileInfo;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 975
    :pswitch_0
    const v0, 0x7f0b08ba

    invoke-virtual {p0, v0}, Lcom/vivo/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 977
    :pswitch_1
    const v0, 0x7f0b08c0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 979
    :pswitch_2
    const v0, 0x7f0b08bc

    invoke-virtual {p0, v0}, Lcom/vivo/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 981
    :pswitch_3
    const v0, 0x7f0b08be

    invoke-virtual {p0, v0}, Lcom/vivo/settings/SoundSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 973
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 899
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, p1, v0}, Lcom/vivo/settings/SoundSettings;->setRingTone(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 906
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 907
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 185
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    const-string v2, "SoundSettings"

    const-string v3, "...onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v2, Lcom/vivo/settings/SoundSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {v2}, Lcom/vivo/settings/xml/SettingsResouce;->getXmlResouce()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 188
    iget-boolean v2, p0, Lcom/vivo/settings/SoundSettings;->sIsCMCC:Z

    if-nez v2, :cond_0

    .line 189
    const-string v2, "silent"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    .line 191
    :cond_0
    sget-object v2, Lcom/vivo/settings/SoundSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "hifi_settings"

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    .line 192
    .local v0, "hifiEnabled":Z
    if-nez v0, :cond_1

    .line 193
    const-string v2, "hifi_settings"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 195
    :cond_1
    sget-object v2, Lcom/vivo/settings/SoundSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "vivo_sound"

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    .line 196
    .local v1, "vivoSoundEnabled":Z
    if-nez v1, :cond_2

    if-eqz v0, :cond_7

    .line 197
    :cond_2
    const-string v2, "hifi_globle_category_1"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 201
    :goto_0
    if-nez v1, :cond_3

    .line 202
    const-string v2, "vivo_sound"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 205
    :cond_3
    new-instance v2, Lcom/vivo/settings/SimUtils;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 206
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 207
    new-instance v2, Landroid/media/AudioFeatures;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v5, v5}, Landroid/media/AudioFeatures;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mAudioFeatures:Landroid/media/AudioFeatures;

    .line 208
    const-string v2, "vibrate"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    .line 209
    const-string v2, "seekbar_ring"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/preference/SeekBarPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRingSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    .line 211
    const-string v2, "seekbar_media"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/preference/SeekBarPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mMediaSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    .line 213
    const-string v2, "seekbar_alarm"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/vivo/settings/preference/SeekBarPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mAlarmSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    .line 214
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mAlarmSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vivo/settings/preference/SeekBarPreference;->setDividerVisible(Z)V

    .line 215
    const-string v2, "srs_maxv"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSrsMaxv:Landroid/preference/CheckBoxPreference;

    .line 216
    sget-object v2, Lcom/vivo/settings/SoundSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "srs_maxv"

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSrsMaxv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Landroid/preference/Preference;)V

    .line 218
    const-string v2, "srs_maxv_cat"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 220
    :cond_4
    const-string v2, "speaker_boost"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSpeakerBoost:Landroid/preference/CheckBoxPreference;

    .line 221
    sget-object v2, Lcom/vivo/settings/SoundSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "speaker_boost"

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 222
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSpeakerBoost:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Landroid/preference/Preference;)V

    .line 223
    const-string v2, "speaker_boost_cat"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 225
    :cond_5
    const-string v2, "sound_ringtone"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    .line 226
    const-string v2, "sound_ringtone_sim2"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    .line 227
    const-string v2, "sound_messages"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    .line 228
    const-string v2, "sound_messages_sim2"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    .line 229
    const-string v2, "sound_notification"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mNotification:Landroid/preference/Preference;

    .line 230
    const-string v2, "ascending_ring"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mAscendingRing:Landroid/preference/CheckBoxPreference;

    .line 231
    const-string v2, "key_vibrate_state"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mVibrateState:Landroid/preference/CheckBoxPreference;

    .line 232
    const-string v2, "ring_vol_change_by_keys"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRingVolChangeByKeys:Landroid/preference/ListPreference;

    .line 233
    const-string v2, "ring_vol_change_by_keys_explain"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRingVolChangeByKeysExplain:Landroid/preference/Preference;

    .line 235
    const-string v2, "dtmf_tone"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 236
    const-string v2, "sound_effects"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 237
    const-string v2, "lock_sounds"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 238
    const-string v2, "message_sent_sound"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mMessageSent:Landroid/preference/CheckBoxPreference;

    .line 242
    new-instance v2, Lcom/vivo/settings/IntegratedToneStatusManager;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vivo/settings/IntegratedToneStatusManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

    .line 243
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/vivo/settings/IntegratedToneStatusManager;->registerIntegratedTones(Landroid/preference/CheckBoxPreference;)V

    .line 244
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/vivo/settings/IntegratedToneStatusManager;->registerIntegratedTones(Landroid/preference/CheckBoxPreference;)V

    .line 245
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/vivo/settings/IntegratedToneStatusManager;->registerIntegratedTones(Landroid/preference/CheckBoxPreference;)V

    .line 246
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mMessageSent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/vivo/settings/IntegratedToneStatusManager;->registerIntegratedTones(Landroid/preference/CheckBoxPreference;)V

    .line 249
    new-instance v2, Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vivo/settings/BBKSoundStreamManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    .line 250
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mRingSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/BBKSoundStreamManager;->registerBBKSounds(Lcom/vivo/settings/preference/SeekBarPreference;I)V

    .line 251
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mMediaSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/BBKSoundStreamManager;->registerBBKSounds(Lcom/vivo/settings/preference/SeekBarPreference;I)V

    .line 252
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mAlarmSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/BBKSoundStreamManager;->registerBBKSounds(Lcom/vivo/settings/preference/SeekBarPreference;I)V

    .line 254
    sget-object v2, Lcom/vivo/settings/SoundSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "key_dual_spkr"

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 255
    const-string v2, "key_dual_spkr"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/vivo/settings/SoundSettings;->mDualSpkr:Landroid/preference/CheckBoxPreference;

    .line 261
    :goto_1
    sget-object v2, Lcom/vivo/settings/SoundSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "ktv_settings"

    invoke-virtual {v2, v3, v4}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 262
    const-string v2, "ktv_settings"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 264
    :cond_6
    return-void

    .line 199
    :cond_7
    const-string v2, "hifi_globle_category_2"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_8
    const-string v2, "key_dual_spkr"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    .line 258
    const-string v2, "key_dual_spkr_exp"

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 800
    const-string v1, "SoundSettings"

    const-string v2, "SoundSettings end ...onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 802
    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

    invoke-virtual {v1}, Lcom/vivo/settings/IntegratedToneStatusManager;->onDestroy()V

    .line 804
    invoke-static {}, Lcom/vivo/settings/VivoUtils;->isHprofDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.action.GENERATE_HPROF_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 806
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "model"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    const-string v1, "addFileStr"

    const-string v2, "SoundSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 810
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 811
    return-void
.end method

.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 911
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 912
    .local v0, "action":I
    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mRingVolChangeByKeys:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    .line 913
    .local v1, "type":I
    :goto_0
    const-string v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key change volume stream is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    if-nez v0, :cond_2

    .line 915
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_1
    move v2, v3

    .line 933
    :goto_2
    return v2

    .line 912
    .end local v1    # "type":I
    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    .line 917
    .restart local v1    # "type":I
    :pswitch_0
    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {v3, v1, v2}, Lcom/vivo/settings/BBKSoundStreamManager;->changeVolumeBy(II)V

    .line 918
    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {v3, v2}, Lcom/vivo/settings/BBKSoundStreamManager;->noticeKeyStatus(Z)V

    goto :goto_2

    .line 921
    :pswitch_1
    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {v3, v2}, Lcom/vivo/settings/BBKSoundStreamManager;->noticeKeyStatus(Z)V

    .line 922
    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v1, v4}, Lcom/vivo/settings/BBKSoundStreamManager;->changeVolumeBy(II)V

    goto :goto_2

    .line 925
    :cond_2
    if-ne v0, v2, :cond_0

    .line 926
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 929
    :pswitch_2
    iget-object v4, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {v4, v3}, Lcom/vivo/settings/BBKSoundStreamManager;->noticeKeyStatus(Z)V

    goto :goto_2

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 926
    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 788
    const-string v0, "SoundSettings"

    const-string v1, "Leave SoundSettings ...onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 791
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {v0}, Lcom/vivo/settings/BBKSoundStreamManager;->pause()V

    .line 795
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 796
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1042
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRingVolChangeByKeys:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_2

    .line 1043
    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1044
    .local v0, "intNewValue":I
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ring_vol_change_by_keys"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1045
    const-string v2, "1"

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "10239"

    :goto_0
    invoke-static {v2}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;)V

    .line 1046
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updateRingVolExplain()V

    .line 1049
    .end local v0    # "intNewValue":I
    :goto_1
    return v1

    .line 1045
    .restart local v0    # "intNewValue":I
    :cond_1
    const-string v2, "102310"

    goto :goto_0

    .end local v0    # "intNewValue":I
    :cond_2
    move v1, v0

    .line 1049
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 601
    const-string v7, "SoundSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPress "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_3

    .line 603
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 604
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v6}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 606
    .local v0, "callVibrateSetting":I
    if-eqz v0, :cond_1

    move v4, v5

    .line 607
    .local v4, "vibrateSetting":Z
    :goto_0
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_0

    move v6, v5

    :cond_0
    invoke-virtual {v7, v6}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 614
    .end local v0    # "callVibrateSetting":I
    .end local v4    # "vibrateSetting":Z
    :goto_1
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updateState()V

    .line 748
    :goto_2
    return v5

    .restart local v0    # "callVibrateSetting":I
    :cond_1
    move v4, v6

    .line 606
    goto :goto_0

    .line 612
    .end local v0    # "callVibrateSetting":I
    :cond_2
    iget-object v6, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v10}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_1

    .line 616
    :cond_3
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_4

    .line 617
    iget-object v6, p0, Lcom/vivo/settings/SoundSettings;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/vivo/settings/SoundSettings;->setVibrateSetting(Z)V

    .line 618
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updateState()V

    goto :goto_2

    .line 620
    :cond_4
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSrsMaxv:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_6

    .line 621
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSrsMaxv:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/vivo/settings/SoundSettings;->enableMaxV(Z)V

    .line 737
    :cond_5
    :goto_3
    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_1e

    .line 739
    :try_start_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/vivo/settings/SoundSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 740
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "SoundSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to start a sub screen "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b0825

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {p0, v8, v9}, Lcom/vivo/settings/SoundSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 622
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    if-ne p2, v7, :cond_7

    .line 623
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/vivo/settings/SoundPicker;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v7, "internalPick"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 627
    const-string v7, "with_head"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    const-string v7, "with_edit"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    const-string v7, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v6}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 631
    const-string v7, "android.intent.extra.ringtone.TITLE"

    iget-object v8, p0, Lcom/vivo/settings/SoundSettings;->mRington:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    const-string v7, "ring_type"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    invoke-virtual {p0, v2, v6}, Lcom/vivo/settings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 635
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    if-ne p2, v7, :cond_8

    .line 636
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/vivo/settings/SoundPicker;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 637
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    const-string v7, "internalPick"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    const-string v7, "with_head"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 641
    const-string v7, "with_edit"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 642
    const-string v7, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v10}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 644
    const-string v7, "android.intent.extra.ringtone.TITLE"

    iget-object v8, p0, Lcom/vivo/settings/SoundSettings;->mRingtonSim2:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    const-string v7, "ring_type"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    invoke-virtual {p0, v2, v10}, Lcom/vivo/settings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 648
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mNotification:Landroid/preference/Preference;

    if-ne p2, v7, :cond_9

    .line 649
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/vivo/settings/SoundPicker;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 650
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 652
    const-string v7, "internalPick"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 653
    const-string v7, "with_head"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    const-string v7, "with_edit"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    const-string v7, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 656
    const-string v7, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 658
    const-string v7, "android.intent.extra.ringtone.TITLE"

    iget-object v8, p0, Lcom/vivo/settings/SoundSettings;->mNotification:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    const-string v7, "ring_type"

    invoke-virtual {v2, v7, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    invoke-virtual {p0, v2, v12}, Lcom/vivo/settings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 662
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    if-ne p2, v7, :cond_a

    .line 663
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/vivo/settings/SoundPicker;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 666
    const-string v7, "internalPick"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    const-string v7, "with_head"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 668
    const-string v7, "with_edit"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 669
    const-string v7, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 670
    const-string v7, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 672
    const-string v7, "android.intent.extra.ringtone.TITLE"

    iget-object v8, p0, Lcom/vivo/settings/SoundSettings;->mMessage:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    const-string v7, "ring_type"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 675
    invoke-virtual {p0, v2, v5}, Lcom/vivo/settings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 676
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_a
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    if-ne p2, v7, :cond_b

    .line 677
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/vivo/settings/SoundPicker;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 678
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 680
    const-string v7, "internalPick"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 681
    const-string v7, "with_head"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 682
    const-string v7, "with_edit"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 683
    const-string v7, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 684
    const-string v7, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/vivo/settings/SoundSettings;->getUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 686
    const-string v7, "android.intent.extra.ringtone.TITLE"

    iget-object v8, p0, Lcom/vivo/settings/SoundSettings;->mMessageSim2:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v7, "ring_type"

    invoke-virtual {v2, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 689
    invoke-virtual {p0, v2, v11}, Lcom/vivo/settings/SoundSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_3

    .line 690
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAscendingRing:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_d

    .line 691
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ascending_ring"

    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAscendingRing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_c

    move v7, v5

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_c
    move v7, v6

    goto :goto_4

    .line 692
    :cond_d
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mVibrateState:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_f

    .line 693
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "haptic_feedback_enabled"

    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mVibrateState:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v5

    :goto_5
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    move v7, v6

    goto :goto_5

    .line 694
    :cond_f
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mDualSpkr:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_10

    .line 695
    iget-object v6, p0, Lcom/vivo/settings/SoundSettings;->mDualSpkr:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/vivo/settings/SoundSettings;->enableDualSpkr(Z)V

    goto/16 :goto_2

    .line 697
    :cond_10
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_13

    .line 698
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dtmf_tone"

    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_11

    move v7, v5

    :goto_6
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 701
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "10234_1"

    :goto_7
    invoke-static {v7}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_11
    move v7, v6

    .line 698
    goto :goto_6

    .line 701
    :cond_12
    const-string v7, "10234_0"

    goto :goto_7

    .line 702
    :cond_13
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_17

    .line 703
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 704
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 708
    :goto_8
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "sound_effects_enabled"

    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_15

    move v7, v5

    :goto_9
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 711
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_16

    const-string v7, "10235_1"

    :goto_a
    invoke-static {v7}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 706
    :cond_14
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_8

    :cond_15
    move v7, v6

    .line 708
    goto :goto_9

    .line 711
    :cond_16
    const-string v7, "10235_0"

    goto :goto_a

    .line 712
    :cond_17
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_1a

    .line 713
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lockscreen_sounds_enabled"

    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_18

    move v7, v5

    :goto_b
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 716
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_19

    const-string v7, "10236_1"

    :goto_c
    invoke-static {v7}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_18
    move v7, v6

    .line 713
    goto :goto_b

    .line 716
    :cond_19
    const-string v7, "10236_0"

    goto :goto_c

    .line 717
    :cond_1a
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mMessageSent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_1d

    .line 718
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mMessageSent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 719
    .local v3, "value":Z
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "message_sent_sound"

    if-eqz v3, :cond_1b

    move v7, v5

    :goto_d
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 721
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mMessageSent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1c

    const-string v7, "10237_1"

    :goto_e
    invoke-static {v7}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1b
    move v7, v6

    .line 719
    goto :goto_d

    .line 721
    :cond_1c
    const-string v7, "10237_0"

    goto :goto_e

    .line 733
    .end local v3    # "value":Z
    :cond_1d
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSpeakerBoost:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_5

    .line 734
    iget-object v7, p0, Lcom/vivo/settings/SoundSettings;->mSpeakerBoost:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/vivo/settings/SoundSettings;->enableSpeaker(Z)V

    goto/16 :goto_3

    .line 748
    :cond_1e
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 555
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 556
    const-string v2, "SoundSettings"

    const-string v3, " ...onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->showBBKBackButton()V

    .line 558
    const v2, 0x7f0b0233

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SoundSettings;->setTitle(I)V

    .line 559
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 568
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 573
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportSRSMaxV()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSrsMaxv:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->isMaxVEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 576
    :cond_0
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportSpeakerBoost()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mSpeakerBoost:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->isSpeakerEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 579
    :cond_1
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updatePrefs()V

    .line 580
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updateState()V

    .line 581
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updateStateOther()V

    .line 582
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updateSummaries()V

    .line 584
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mBBKSoundStreamManager:Lcom/vivo/settings/BBKSoundStreamManager;

    invoke-virtual {v2}, Lcom/vivo/settings/BBKSoundStreamManager;->resume()V

    .line 585
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mIntegratedToneStatusManager:Lcom/vivo/settings/IntegratedToneStatusManager;

    invoke-virtual {v2}, Lcom/vivo/settings/IntegratedToneStatusManager;->updateToggles()V

    .line 586
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRingVolChangeByKeys:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 587
    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mRingVolChangeByKeys:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ring_vol_change_by_keys"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 589
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->updateRingVolExplain()V

    .line 590
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v1, :cond_3

    .line 591
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnKeyEventListener(Lcom/android/settings/SettingsActivity$OnKeyEventListener;)V

    .line 594
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 595
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->switchToSearchPref()Z

    .line 596
    return-void
.end method

.method public setProfile(I)V
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v3, 0x2

    .line 959
    const-string v0, "SoundSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings_preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 963
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/SoundSettings;->getSelectProfile()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 964
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "storedNormalVolume"

    iget-object v2, p0, Lcom/vivo/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/SoundSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "selectedProfile"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 967
    return-void
.end method
