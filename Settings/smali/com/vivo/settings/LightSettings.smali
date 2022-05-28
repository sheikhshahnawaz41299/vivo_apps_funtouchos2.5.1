.class public Lcom/vivo/settings/LightSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "LightSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/vivo/settings/NightModeUtils$NightModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/LightSettings$DbHandler;,
        Lcom/vivo/settings/LightSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_BRIGHTNESS_CHANGED:Ljava/lang/String; = "android.intent.action.BRIGHTNESS_CHANGED"

.field private static final KEY_AUTO_MODE:Ljava/lang/String; = "auto_mode"

.field private static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final KEY_NIGHT_MODE:Ljava/lang/String; = "night_mode"

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static final MINIMUM_BACKLIGHT:I = 0x14

.field private static final MSG_SET_BRIGHTNESS_TO_DB:I = 0x0

.field private static final NIGHT_MODE_CHANGE_ACTION:Ljava/lang/String; = "com.vivo.night.mode.change.intent"

.field private static final NIGHT_MODE_END_HOUR:Ljava/lang/String; = "night_mode_end_hour"

.field private static final NIGHT_MODE_END_MINUTE:Ljava/lang/String; = "night_mode_end_minute"

.field private static final NIGHT_MODE_SHECDUL:Ljava/lang/String; = "night_mode_shecdul"

.field private static final NIGHT_MODE_START_HOUR:Ljava/lang/String; = "night_mode_start_hour"

.field private static final NIGHT_MODE_START_MINUTE:Ljava/lang/String; = "night_mode_start_minute"

.field private static final TAG:Ljava/lang/String; = "LightSettings"


# instance fields
.field private mAutoMode:Landroid/preference/CheckBoxPreference;

.field private mBrightnessPreference:Lcom/vivo/settings/preference/SeekBarPreference;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mContext:Landroid/content/Context;

.field private mDbHandler:Landroid/os/Handler;

.field private mIsAutoChecked:Z

.field private mNightMode:Landroid/preference/PreferenceScreen;

.field private mNightModeUtils:Lcom/vivo/settings/NightModeUtils;

.field private mOnTrackingTouch:Z

.field private mPowerManager:Landroid/os/IPowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/vivo/settings/LightSettings$SettingsObserver;

.field private volatile mSyncBrightness:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/vivo/settings/LightSettings$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/vivo/settings/LightSettings$SettingsObserver;-><init>(Lcom/vivo/settings/LightSettings;Lcom/vivo/settings/LightSettings$1;)V

    iput-object v0, p0, Lcom/vivo/settings/LightSettings;->mSettingsObserver:Lcom/vivo/settings/LightSettings$SettingsObserver;

    .line 68
    iput-boolean v1, p0, Lcom/vivo/settings/LightSettings;->mOnTrackingTouch:Z

    .line 69
    iput v1, p0, Lcom/vivo/settings/LightSettings;->mSyncBrightness:I

    .line 71
    iput-object v2, p0, Lcom/vivo/settings/LightSettings;->mNightModeUtils:Lcom/vivo/settings/NightModeUtils;

    .line 73
    new-instance v0, Lcom/vivo/settings/LightSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/LightSettings$1;-><init>(Lcom/vivo/settings/LightSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/LightSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/LightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/LightSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vivo/settings/LightSettings;->updateMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/vivo/settings/LightSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/LightSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/vivo/settings/LightSettings;->updateNightModeSummary()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/LightSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/LightSettings;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/vivo/settings/LightSettings;->mOnTrackingTouch:Z

    return v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/LightSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/LightSettings;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/LightSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/LightSettings;

    .prologue
    .line 36
    iget v0, p0, Lcom/vivo/settings/LightSettings;->mSyncBrightness:I

    return v0
.end method

.method private setBrightness(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    const/4 v4, 0x0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mPowerManager:Landroid/os/IPowerManager;

    if-nez v1, :cond_0

    .line 235
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/LightSettings;->mPowerManager:Landroid/os/IPowerManager;

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mPowerManager:Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    .line 238
    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mPowerManager:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_1
    :goto_0
    iput p1, p0, Lcom/vivo/settings/LightSettings;->mSyncBrightness:I

    .line 244
    iget-boolean v1, p0, Lcom/vivo/settings/LightSettings;->mIsAutoChecked:Z

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mDbHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mDbHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 249
    :cond_2
    const-string v1, "LightSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---setBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LightSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 98
    return-void
.end method

.method private updateMode()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_brightness_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vivo/settings/LightSettings;->mIsAutoChecked:Z

    .line 90
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mAutoMode:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/vivo/settings/LightSettings;->mIsAutoChecked:Z

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    iget-boolean v0, p0, Lcom/vivo/settings/LightSettings;->mIsAutoChecked:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/vivo/settings/LightSettings;->setMode(I)V

    .line 93
    const-string v0, "LightSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMode mIsAutoChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/settings/LightSettings;->mIsAutoChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    :cond_0
    move v0, v2

    .line 88
    goto :goto_0

    :cond_1
    move v1, v2

    .line 91
    goto :goto_1
.end method

.method private updateNightModeSummary()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mNightMode:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mNightModeUtils:Lcom/vivo/settings/NightModeUtils;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mNightModeUtils:Lcom/vivo/settings/NightModeUtils;

    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/NightModeUtils;->checkNightMode(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const-string v1, "LightSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate act="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Lcom/vivo/settings/LightSettings;->addPreferencesFromResource(I)V

    .line 105
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->showBBKBackButton()V

    .line 106
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/LightSettings;->mContext:Landroid/content/Context;

    .line 107
    const-string v1, "brightness"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/preference/SeekBarPreference;

    iput-object v1, p0, Lcom/vivo/settings/LightSettings;->mBrightnessPreference:Lcom/vivo/settings/preference/SeekBarPreference;

    .line 110
    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mBrightnessPreference:Lcom/vivo/settings/preference/SeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/vivo/settings/preference/SeekBarPreference;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    const-string v1, "auto_mode"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/LightSettings;->mAutoMode:Landroid/preference/CheckBoxPreference;

    .line 113
    const-string v1, "night_mode"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/LightSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/vivo/settings/LightSettings;->mNightMode:Landroid/preference/PreferenceScreen;

    .line 114
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportNightMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    const-string v1, "night_mode"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/LightSettings;->removePreference(Ljava/lang/String;)V

    .line 116
    iput-object v2, p0, Lcom/vivo/settings/LightSettings;->mNightMode:Landroid/preference/PreferenceScreen;

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 120
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "screen_brightness"

    aput-object v9, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 122
    .local v8, "settingsCursor":Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    invoke-direct {v1, v8, v3, v10, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/vivo/settings/LightSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 123
    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v2, p0, Lcom/vivo/settings/LightSettings;->mSettingsObserver:Lcom/vivo/settings/LightSettings$SettingsObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 125
    new-instance v6, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 126
    .local v6, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 127
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    .line 128
    .local v7, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/vivo/settings/LightSettings$DbHandler;

    invoke-direct {v1, p0, v7}, Lcom/vivo/settings/LightSettings$DbHandler;-><init>(Lcom/vivo/settings/LightSettings;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vivo/settings/LightSettings;->mDbHandler:Landroid/os/Handler;

    .line 130
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 131
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mSettingsObserver:Lcom/vivo/settings/LightSettings$SettingsObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 191
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mDbHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mDbHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/LightSettings;->mDbHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 197
    const-string v0, "LightSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 199
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    const-string v0, "LightSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 185
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 203
    const-string v3, "LightSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick preference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/vivo/settings/LightSettings;->mAutoMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_1

    .line 205
    iget-object v3, p0, Lcom/vivo/settings/LightSettings;->mAutoMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 206
    .local v1, "mIsAutoChecked":Z
    if-eqz v1, :cond_0

    move v3, v4

    :goto_0
    invoke-direct {p0, v3}, Lcom/vivo/settings/LightSettings;->setMode(I)V

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_brightness"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 214
    .local v0, "brightness":I
    :goto_1
    invoke-direct {p0, v0}, Lcom/vivo/settings/LightSettings;->setBrightness(I)V

    .line 215
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.BRIGHTNESS_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    .end local v0    # "brightness":I
    .end local v1    # "mIsAutoChecked":Z
    :goto_2
    return v4

    .line 206
    .restart local v1    # "mIsAutoChecked":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v0, 0xff

    .restart local v0    # "brightness":I
    goto :goto_1

    .line 218
    .end local v0    # "brightness":I
    .end local v1    # "mIsAutoChecked":Z
    .end local v2    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_2
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 254
    if-eqz p3, :cond_0

    .line 255
    add-int/lit8 v0, p2, 0x14

    invoke-direct {p0, v0}, Lcom/vivo/settings/LightSettings;->setBrightness(I)V

    .line 256
    const-string v0, "LightSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 135
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 136
    const-string v1, "LightSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportNightMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    const v1, 0x7f0b09a5

    invoke-virtual {p0, v1}, Lcom/vivo/settings/LightSettings;->setTitle(I)V

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->updateBrightness()V

    .line 144
    invoke-direct {p0}, Lcom/vivo/settings/LightSettings;->updateMode()V

    .line 145
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportNightMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Lcom/vivo/settings/NightModeUtils;

    invoke-direct {v1}, Lcom/vivo/settings/NightModeUtils;-><init>()V

    iput-object v1, p0, Lcom/vivo/settings/LightSettings;->mNightModeUtils:Lcom/vivo/settings/NightModeUtils;

    .line 147
    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mNightModeUtils:Lcom/vivo/settings/NightModeUtils;

    invoke-virtual {v1, p0}, Lcom/vivo/settings/NightModeUtils;->setNightModeListener(Lcom/vivo/settings/NightModeUtils$NightModeListener;)V

    .line 148
    invoke-direct {p0}, Lcom/vivo/settings/LightSettings;->updateNightModeSummary()V

    .line 150
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BRIGHTNESS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.vivo.night.mode.change.intent"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/LightSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    return-void

    .line 140
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const v1, 0x7f0b085c

    invoke-virtual {p0, v1}, Lcom/vivo/settings/LightSettings;->setTitle(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 262
    const-string v0, "LightSettings"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/LightSettings;->mOnTrackingTouch:Z

    .line 264
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vivo/settings/LightSettings;->mOnTrackingTouch:Z

    .line 269
    iget-boolean v1, p0, Lcom/vivo/settings/LightSettings;->mIsAutoChecked:Z

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/vivo/settings/LightSettings;->mBrightnessPreference:Lcom/vivo/settings/preference/SeekBarPreference;

    invoke-virtual {v1}, Lcom/vivo/settings/preference/SeekBarPreference;->getProgress()I

    move-result v1

    add-int/lit8 v0, v1, 0x14

    .line 271
    .local v0, "progress":I
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    const-string v1, "LightSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTrackingTouch progress is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .end local v0    # "progress":I
    :cond_0
    return-void
.end method

.method public updateBrightness()V
    .locals 5

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/settings/LightSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 228
    .local v0, "brightness":I
    :goto_0
    iget-object v2, p0, Lcom/vivo/settings/LightSettings;->mBrightnessPreference:Lcom/vivo/settings/preference/SeekBarPreference;

    add-int/lit8 v3, v0, -0x14

    invoke-virtual {v2, v3}, Lcom/vivo/settings/preference/SeekBarPreference;->setProgress(I)V

    .line 229
    const-string v2, "LightSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBrightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void

    .line 225
    .end local v0    # "brightness":I
    :catch_0
    move-exception v1

    .line 226
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const/16 v0, 0xff

    .restart local v0    # "brightness":I
    goto :goto_0
.end method

.method public updateNMState(Z)V
    .locals 13
    .param p1, "isNightModeOn"    # Z

    .prologue
    const/16 v12, 0xa

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 157
    iget-object v9, p0, Lcom/vivo/settings/LightSettings;->mNightMode:Landroid/preference/PreferenceScreen;

    if-nez v9, :cond_0

    .line 178
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v9, p0, Lcom/vivo/settings/LightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "night_mode_shecdul"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v3, :cond_3

    .line 160
    .local v3, "isShecdulBoxOn":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 161
    iget-object v9, p0, Lcom/vivo/settings/LightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "night_mode_start_hour"

    const/16 v11, 0x14

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 162
    .local v5, "startHour":I
    iget-object v9, p0, Lcom/vivo/settings/LightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "night_mode_start_minute"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 163
    .local v6, "startMinute":I
    iget-object v9, p0, Lcom/vivo/settings/LightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "night_mode_end_hour"

    const/4 v11, 0x7

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "endHour":I
    iget-object v9, p0, Lcom/vivo/settings/LightSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "night_mode_end_minute"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 165
    .local v2, "endMinute":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "sMinute":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "eMinute":Ljava/lang/String;
    if-ge v6, v12, :cond_1

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 170
    :cond_1
    if-ge v2, v12, :cond_2

    .line 171
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "summary":Ljava/lang/String;
    iget-object v8, p0, Lcom/vivo/settings/LightSettings;->mNightMode:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v0    # "eMinute":Ljava/lang/String;
    .end local v1    # "endHour":I
    .end local v2    # "endMinute":I
    .end local v3    # "isShecdulBoxOn":Z
    .end local v4    # "sMinute":Ljava/lang/String;
    .end local v5    # "startHour":I
    .end local v6    # "startMinute":I
    .end local v7    # "summary":Ljava/lang/String;
    :cond_3
    move v3, v8

    .line 159
    goto/16 :goto_1

    .line 176
    .restart local v3    # "isShecdulBoxOn":Z
    :cond_4
    iget-object v9, p0, Lcom/vivo/settings/LightSettings;->mNightMode:Landroid/preference/PreferenceScreen;

    if-eqz p1, :cond_5

    const v8, 0x7f0b0953

    :goto_2
    invoke-virtual {v9, v8}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    :cond_5
    const v8, 0x7f0b0950

    goto :goto_2
.end method
