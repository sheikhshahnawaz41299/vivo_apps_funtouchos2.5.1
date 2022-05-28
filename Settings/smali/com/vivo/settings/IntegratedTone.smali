.class public Lcom/vivo/settings/IntegratedTone;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "IntegratedTone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/IntegratedTone$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntegratedTone"


# instance fields
.field private boolDtmfTone:Z

.field private boolInputMethod:Z

.field private boolLockSounds:Z

.field private boolMessageSent:Z

.field private boolSoundEffects:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mInputMethod:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMessageSent:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Lcom/vivo/settings/IntegratedTone$SettingsObserver;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 26
    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 27
    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 28
    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mMessageSent:Landroid/preference/CheckBoxPreference;

    .line 29
    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mInputMethod:Landroid/preference/CheckBoxPreference;

    .line 37
    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mAudioManager:Landroid/media/AudioManager;

    .line 39
    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 40
    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mSettingsObserver:Lcom/vivo/settings/IntegratedTone$SettingsObserver;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/IntegratedTone;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/IntegratedTone;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vivo/settings/IntegratedTone;->getAllTomeState()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/IntegratedTone;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/IntegratedTone;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vivo/settings/IntegratedTone;->updateAllToneToggles(I)V

    return-void
.end method

.method private getAllTomeState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 136
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/settings/IntegratedTone;->boolDtmfTone:Z

    .line 138
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sound_effects_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vivo/settings/IntegratedTone;->boolSoundEffects:Z

    .line 140
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/vivo/settings/IntegratedTone;->boolLockSounds:Z

    .line 142
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "message_sent_sound"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/vivo/settings/IntegratedTone;->boolMessageSent:Z

    .line 144
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_input_method_sound"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/vivo/settings/IntegratedTone;->boolInputMethod:Z

    .line 147
    iget-boolean v0, p0, Lcom/vivo/settings/IntegratedTone;->boolDtmfTone:Z

    iget-boolean v3, p0, Lcom/vivo/settings/IntegratedTone;->boolSoundEffects:Z

    and-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/vivo/settings/IntegratedTone;->boolLockSounds:Z

    and-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/vivo/settings/IntegratedTone;->boolMessageSent:Z

    and-int/2addr v0, v3

    iget-boolean v3, p0, Lcom/vivo/settings/IntegratedTone;->boolInputMethod:Z

    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 154
    :goto_5
    return v1

    :cond_0
    move v0, v2

    .line 136
    goto :goto_0

    :cond_1
    move v0, v2

    .line 138
    goto :goto_1

    :cond_2
    move v0, v2

    .line 140
    goto :goto_2

    :cond_3
    move v0, v2

    .line 142
    goto :goto_3

    :cond_4
    move v0, v2

    .line 144
    goto :goto_4

    .line 150
    :cond_5
    iget-boolean v0, p0, Lcom/vivo/settings/IntegratedTone;->boolDtmfTone:Z

    iget-boolean v1, p0, Lcom/vivo/settings/IntegratedTone;->boolSoundEffects:Z

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/vivo/settings/IntegratedTone;->boolLockSounds:Z

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/vivo/settings/IntegratedTone;->boolMessageSent:Z

    or-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/vivo/settings/IntegratedTone;->boolInputMethod:Z

    or-int/2addr v0, v1

    if-eqz v0, :cond_6

    .line 152
    const/4 v1, 0x2

    goto :goto_5

    :cond_6
    move v1, v2

    .line 154
    goto :goto_5
.end method

.method private updateAllToneToggles(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_effects_enabled"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    if-ne p1, v0, :cond_0

    .line 203
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_sounds_enabled"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 209
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "message_sent_sound"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_input_method_sound"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_system_tone"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    if-eqz p1, :cond_1

    .line 218
    .local v0, "isOpen":Z
    :goto_1
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 219
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 221
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone;->mMessageSent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone;->mInputMethod:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 223
    return-void

    .line 205
    .end local v0    # "isOpen":Z
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v0, "IntegratedTone"

    const-string v1, "oncreate .."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const v0, 0x7f060022

    invoke-virtual {p0, v0}, Lcom/vivo/settings/IntegratedTone;->addPreferencesFromResource(I)V

    .line 47
    const-string v0, "dtmf_tone"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/IntegratedTone;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 48
    const-string v0, "sound_effects"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/IntegratedTone;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 49
    const-string v0, "lock_sounds"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/IntegratedTone;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 50
    const-string v0, "message_sent_sound"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/IntegratedTone;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mMessageSent:Landroid/preference/CheckBoxPreference;

    .line 51
    const-string v0, "key_input_method_sound"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/IntegratedTone;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mInputMethod:Landroid/preference/CheckBoxPreference;

    .line 53
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/IntegratedTone;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mAudioManager:Landroid/media/AudioManager;

    .line 55
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->updateTitleRightButton()V

    .line 57
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?) or (name=?) or (name=?) or (name=?) or (name=?) or (name=?)"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "dtmf_tone"

    aput-object v7, v4, v5

    const-string v5, "sound_effects_enabled"

    aput-object v5, v4, v8

    const/4 v5, 0x2

    const-string v7, "lockscreen_sounds_enabled"

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "message_sent_sound"

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string v7, "bbk_input_method_sound"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 72
    .local v6, "settingsCursor":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 74
    new-instance v0, Lcom/vivo/settings/IntegratedTone$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/vivo/settings/IntegratedTone$SettingsObserver;-><init>(Lcom/vivo/settings/IntegratedTone;Lcom/vivo/settings/IntegratedTone$1;)V

    iput-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mSettingsObserver:Lcom/vivo/settings/IntegratedTone$SettingsObserver;

    .line 75
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone;->mSettingsObserver:Lcom/vivo/settings/IntegratedTone$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 77
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 78
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/vivo/settings/IntegratedTone;->mSettingsObserver:Lcom/vivo/settings/IntegratedTone$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 229
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 231
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 232
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 161
    const-string v3, "IntegratedTone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    iget-object v5, p0, Lcom/vivo/settings/IntegratedTone;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 193
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->updateTitleRightButton()V

    .line 194
    :goto_1
    return v2

    .line 167
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 168
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 173
    :goto_2
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sound_effects_enabled"

    iget-object v5, p0, Lcom/vivo/settings/IntegratedTone;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 171
    :cond_3
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_2

    .line 177
    :cond_4
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 178
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lockscreen_sounds_enabled"

    iget-object v5, p0, Lcom/vivo/settings/IntegratedTone;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 182
    :cond_6
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mMessageSent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 183
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mMessageSent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 184
    .local v0, "value":Z
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "message_sent_sound"

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 186
    .end local v0    # "value":Z
    :cond_8
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mInputMethod:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_a

    .line 187
    iget-object v3, p0, Lcom/vivo/settings/IntegratedTone;->mInputMethod:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 188
    .restart local v0    # "value":Z
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bbk_input_method_sound"

    if-eqz v0, :cond_9

    move v1, v2

    :cond_9
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 191
    .end local v0    # "value":Z
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->showBBKBackButton()V

    .line 84
    const v0, 0x7f0b084d

    invoke-virtual {p0, v0}, Lcom/vivo/settings/IntegratedTone;->setTitle(I)V

    .line 85
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->updateToggles()V

    .line 86
    return-void
.end method

.method public updateTitleRightButton()V
    .locals 5

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 123
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/IntegratedTone;->getAllTomeState()I

    move-result v1

    .line 98
    .local v1, "toneStatu":I
    const/4 v0, 0x0

    .line 99
    .local v0, "titleRightButton":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_1
    const-string v2, "IntegratedTone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toneStatu  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_system_tone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    invoke-virtual {p0, v0}, Lcom/vivo/settings/IntegratedTone;->showTitleRightButton(Ljava/lang/CharSequence;)V

    .line 109
    new-instance v2, Lcom/vivo/settings/IntegratedTone$1;

    invoke-direct {v2, p0}, Lcom/vivo/settings/IntegratedTone$1;-><init>(Lcom/vivo/settings/IntegratedTone;)V

    invoke-virtual {p0, v2}, Lcom/vivo/settings/IntegratedTone;->onTitleRightButtonPressed(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/settings/IntegratedTone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public updateToggles()V
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/vivo/settings/IntegratedTone;->getAllTomeState()I

    .line 128
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/vivo/settings/IntegratedTone;->boolDtmfTone:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 129
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/vivo/settings/IntegratedTone;->boolSoundEffects:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/vivo/settings/IntegratedTone;->boolLockSounds:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mMessageSent:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/vivo/settings/IntegratedTone;->boolMessageSent:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/vivo/settings/IntegratedTone;->mInputMethod:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/vivo/settings/IntegratedTone;->boolInputMethod:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    return-void
.end method
