.class public Lcom/vivo/settings/GeneralSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "GeneralSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_APPLICATIONS_SETTINGS:Ljava/lang/String; = "applications_settings"

.field private static final KEY_BOTTOM_KEY_FUNCTION:Ljava/lang/String; = "bottom_key_function"

.field private static final KEY_BT_SETTINGS:Ljava/lang/String; = "bt_settings"

.field private static final KEY_DIVIDER:Ljava/lang/String; = "divider"

.field private static final KEY_EWARRANTY:Ljava/lang/String; = "ewarranty"

.field private static final KEY_FAST_CHARGE:Ljava/lang/String; = "fast_charge"

.field private static final KEY_FLASH_LIGHT_REMIND:Ljava/lang/String; = "flash_light_remind"

.field private static final KEY_HOLSTER:Ljava/lang/String; = "holster"

.field private static final KEY_HOLSTER_TO_ANSWER_CALL:Ljava/lang/String; = "holster_to_answer_call"

.field private static final KEY_NFC_SETTINGS:Ljava/lang/String; = "nfc_settings"

.field private static final KEY_NOTIFICATION_LIGHT:Ljava/lang/String; = "notification_light"

.field private static final KEY_NOTIFICATION_LIGHT_CHECKBOX:Ljava/lang/String; = "notification_light_checkbox"

.field private static final KEY_NUMBER_AREA:Ljava/lang/String; = "number_area"

.field private static final KEY_OTG:Ljava/lang/String; = "otg"

.field private static final KEY_PHONE_INSTRUCTIONS:Ljava/lang/String; = "phone_instructions"

.field private static final KEY_PROTECT_LOCK:Ljava/lang/String; = "protect_lock"

.field private static final KEY_SCHEDULE_POWER_ON:Ljava/lang/String; = "schedule_power_on"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_SEARCH:Ljava/lang/String; = "search"

.field private static final KEY_STORAGE:Ljava/lang/String; = "storage_settings"

.field private static final KEY_TOUCH:Ljava/lang/String; = "touch_key"

.field private static final KEY_TOUCH_KEY_LIGHT_DURATION:Ljava/lang/String; = "touch_key_light_duration"

.field private static final KEY_UPNP_SETTINGS:Ljava/lang/String; = "upnp_settings"

.field private static final KEY_USER_EXPERIENCE:Ljava/lang/String; = "user_experience"

.field private static final KYE_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "accessibility_settings"

.field private static final PKG_BBK_TOOLS:Ljava/lang/String; = "com.android.BBKTools"

.field private static final PKG_EWARRANTY:Ljava/lang/String; = "com.vivo.ewarranty"

.field private static final PKG_LOG_SYSTEM:Ljava/lang/String; = "com.bbk.iqoo.logsystem"

.field private static final PKG_UPNP_SERVER:Ljava/lang/String; = "com.vivo.upnpserver"

.field private static final SETTINGS_FLIP_TO_ANSWER_CALL:Ljava/lang/String; = "flip_to_answer_call"

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

.field private static final SETTINGS_USER_EXPERIENCE_IMPROVE_PLAN:Ljava/lang/String; = "user_experience_improve_plan"

.field private static final SOS_CALL:Ljava/lang/String; = "sos_call"

.field private static final TAG:Ljava/lang/String; = "GeneralSettings"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mApp:Landroid/preference/PreferenceScreen;

.field private mBTPref:Landroid/preference/Preference;

.field private mEwarranty:Landroid/preference/Preference;

.field private mFastCharge:Landroid/preference/PreferenceScreen;

.field private mFlashLightRemind:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHolster:Landroid/preference/PreferenceScreen;

.field private mHosterToAnswerCall:Landroid/preference/CheckBoxPreference;

.field private mNfc:Landroid/preference/Preference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNotificationLightCheck:Landroid/preference/CheckBoxPreference;

.field private mNotificationManagerService:Landroid/app/INotificationManager;

.field private mNumArea:Landroid/preference/Preference;

.field private mOtgSettings:Landroid/preference/PreferenceScreen;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProtectLock:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeOutPref:Landroid/preference/ListPreference;

.field private mTimer:Ljava/util/Timer;

.field private mTouchKey:Landroid/preference/Preference;

.field private mTouchKeyDuration:Landroid/preference/ListPreference;

.field private mTouchKeyEntries:[Ljava/lang/CharSequence;

.field private mUpdateNfcStatus:Ljava/lang/Runnable;

.field private mUpnp:Landroid/preference/Preference;

.field private mUpnpCallback:Lcom/vivo/settings/ServiceRunningTools$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 613
    new-instance v0, Lcom/vivo/settings/GeneralSettings$6;

    invoke-direct {v0}, Lcom/vivo/settings/GeneralSettings$6;-><init>()V

    sput-object v0, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/vivo/settings/GeneralSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/GeneralSettings$1;-><init>(Lcom/vivo/settings/GeneralSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 387
    new-instance v0, Lcom/vivo/settings/GeneralSettings$3;

    invoke-direct {v0, p0}, Lcom/vivo/settings/GeneralSettings$3;-><init>(Lcom/vivo/settings/GeneralSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mUpnpCallback:Lcom/vivo/settings/ServiceRunningTools$Callback;

    .line 414
    new-instance v0, Lcom/vivo/settings/GeneralSettings$5;

    invoke-direct {v0, p0}, Lcom/vivo/settings/GeneralSettings$5;-><init>(Lcom/vivo/settings/GeneralSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mUpdateNfcStatus:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/GeneralSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/GeneralSettings;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/vivo/settings/GeneralSettings;->handleBluetoothStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/GeneralSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mUpnp:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/GeneralSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/GeneralSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->updateNfcStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/GeneralSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mOtgSettings:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/GeneralSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/GeneralSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->updateOtgSummary()V

    return-void
.end method

.method static synthetic access$500(Lcom/vivo/settings/GeneralSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/GeneralSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/GeneralSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mNfc:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vivo/settings/GeneralSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/GeneralSettings;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->isNfcOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/vivo/settings/GeneralSettings;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/GeneralSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method private handleBluetoothStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const v1, 0x7f0b0950

    .line 526
    packed-switch p1, :pswitch_data_0

    .line 540
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mBTPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 542
    :goto_0
    return-void

    .line 528
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mBTPref:Landroid/preference/Preference;

    const v1, 0x7f0b0954

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 531
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mBTPref:Landroid/preference/Preference;

    const v1, 0x7f0b0953

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 534
    :pswitch_2
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mBTPref:Landroid/preference/Preference;

    const v1, 0x7f0b0951

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 537
    :pswitch_3
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mBTPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 526
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isGlobalSearchEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    const/4 v1, 0x0

    .line 595
    .local v1, "isGlobalSearchEnabled":Z
    :try_start_0
    const-string v4, "com.bbk.launcher2"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 596
    .local v2, "launcherContext":Landroid/content/Context;
    const-string v4, "search_preference"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 597
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "is_global_search_enable"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 598
    const-string v4, "GeneralSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is_global_search_enable is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    .end local v2    # "launcherContext":Landroid/content/Context;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_0
    return v1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isInVisitMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 588
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isNfcOn()Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x0

    .line 428
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static isPhoneInstructionsNeeded(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 753
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.bbk_phoneInstructions"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 754
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 755
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 756
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 757
    .local v5, "listSize":I
    const/4 v0, 0x0

    .line 758
    .local v0, "activityExist":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 759
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 760
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 761
    const/4 v0, 0x1

    .line 765
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    return v0

    .line 758
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static isUserExperienceAllowed()Z
    .locals 2

    .prologue
    .line 606
    const-string v1, "ro.product.customize.bbk"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "countside":Ljava/lang/String;
    const-string v1, "TH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    :cond_0
    const/4 v1, 0x1

    .line 610
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toActivityNotFound(Landroid/preference/Preference;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v5, 0x1

    .line 582
    const-string v0, "GeneralSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to start a sub screen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0825

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/vivo/settings/GeneralSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 585
    return-void
.end method

.method private toEWarranty(Landroid/content/Context;Landroid/preference/Preference;)V
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 545
    const/4 v5, 0x0

    .line 546
    .local v5, "registed":Z
    const/4 v0, 0x0

    .line 548
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    const-string v8, "com.vivo.ewarranty"

    const/4 v9, 0x2

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_0

    .line 550
    const-string v8, "EWarranty"

    const/4 v9, 0x5

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 551
    .local v4, "prference":Landroid/content/SharedPreferences;
    const-string v8, "REGISTER"

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 557
    .end local v4    # "prference":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 579
    :goto_1
    return-void

    .line 553
    :catch_0
    move-exception v1

    .line 554
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 560
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v8, "GeneralSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "registed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    if-nez v5, :cond_2

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "com.vivo.ewarranty.REGISTER"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_3

    move v5, v6

    .line 564
    :goto_2
    const-string v6, "GeneralSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registed is false get db value is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_2
    if-eqz v5, :cond_4

    .line 569
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.vivo.ewarranty.EWARRANTY_REGISTED_SCREEN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v2, "intentRegisted":Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 575
    .end local v2    # "intentRegisted":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 576
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v1}, Lcom/vivo/settings/GeneralSettings;->toActivityNotFound(Landroid/preference/Preference;Ljava/lang/Exception;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    move v5, v7

    .line 563
    goto :goto_2

    .line 572
    :cond_4
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.vivo.ewarranty.EWARRANTY_UNREGIST_SCREEN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 573
    .local v3, "intentUnregisted":Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private updateDevOption()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 370
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 371
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vivo/settings/VivoVersionInfoManager;->isDevelopmentOptionNeeded(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    const-string v1, "key_dev_option"

    .line 375
    .local v1, "devKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 376
    .local v3, "pref":Landroid/preference/Preference;
    if-nez v3, :cond_0

    .line 377
    new-instance v3, Landroid/preference/PreferenceScreen;

    .end local v3    # "pref":Landroid/preference/Preference;
    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 378
    .restart local v3    # "pref":Landroid/preference/Preference;
    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 379
    const v4, 0x7ffffffe

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 380
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/vivo/settings/DevelpmentSettingsActivity2;

    invoke-direct {v2, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 382
    new-array v4, v6, [Landroid/preference/Preference;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/vivo/settings/GeneralSettings;->addPreferences([Landroid/preference/Preference;)V

    .line 383
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-static {v0, v4, v1, v6}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateFastChargeSummary()V
    .locals 2

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mFastCharge:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 788
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/GeneralSettings;->mFastCharge:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/settings/FastChargeFragment;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b0953

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0950

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateHolsterSummary()V
    .locals 2

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mHolster:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    .line 782
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/GeneralSettings;->mHolster:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/settings/HolsterFragment;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b0953

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0950

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateNfcStatus()V
    .locals 2

    .prologue
    .line 398
    new-instance v0, Lcom/vivo/settings/GeneralSettings$4;

    invoke-direct {v0, p0}, Lcom/vivo/settings/GeneralSettings$4;-><init>(Lcom/vivo/settings/GeneralSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/GeneralSettings$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 412
    return-void
.end method

.method private updateOtgSummary()V
    .locals 3

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "otg"

    invoke-virtual {v0, v1, v2}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/GeneralSettings;->mOtgSettings:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/vivo/settings/OtgSettingsFragment;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b0953

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0950

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateScreenTimeOutSummay(Ljava/lang/Object;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 289
    const-string v4, "GeneralSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v4, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 292
    .local v1, "summaries":[Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 293
    .local v3, "values":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 295
    .local v2, "timeOutChange":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 296
    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 297
    iget-object v4, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    aget-object v5, v1, v0

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 298
    const/4 v2, 0x1

    .line 302
    :cond_0
    if-nez v2, :cond_1

    .line 303
    iget-object v4, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 305
    :cond_1
    return-void

    .line 295
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateTimeOutPref()V
    .locals 4

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    const v3, 0xea60

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 280
    .local v0, "timeout":I
    if-gez v0, :cond_0

    .line 281
    const-string v1, "GeneralSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reset to 30000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/16 v0, 0x7530

    .line 284
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/settings/GeneralSettings;->updateScreenTimeOutSummay(Ljava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method private updateUpnp()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mActivityManager:Landroid/app/ActivityManager;

    const-string v1, "com.vivo.upnpserver.AwoxServerService"

    iget-object v2, p0, Lcom/vivo/settings/GeneralSettings;->mUpnpCallback:Lcom/vivo/settings/ServiceRunningTools$Callback;

    invoke-static {v0, v1, v2}, Lcom/vivo/settings/ServiceRunningTools;->isServiceRuning(Landroid/app/ActivityManager;Ljava/lang/String;Lcom/vivo/settings/ServiceRunningTools$Callback;)V

    .line 395
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 147
    const-string v3, "GeneralSettings"

    const-string v6, "onCreate"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mActivityManager:Landroid/app/ActivityManager;

    .line 149
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {v3}, Lcom/vivo/settings/xml/SettingsResouce;->getXmlResouce()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->addPreferencesFromResource(I)V

    .line 150
    const-string v3, "screen_timeout"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    .line 151
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 152
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    const v6, 0x7f08006f

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 153
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    const v6, 0x7f080065

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 158
    :cond_0
    :goto_0
    const-string v3, "upnp_settings"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mUpnp:Landroid/preference/Preference;

    .line 159
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 160
    const-string v3, "notification_light_checkbox"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mNotificationLightCheck:Landroid/preference/CheckBoxPreference;

    .line 161
    const-string v3, "number_area"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mNumArea:Landroid/preference/Preference;

    .line 162
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "number_area"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mNumArea:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    .line 165
    :cond_1
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "user_experience"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    const-string v3, "user_experience"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 168
    :cond_2
    const-string v3, "touch_key"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKey:Landroid/preference/Preference;

    .line 169
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "touch_key"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 170
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKey:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    .line 172
    :cond_3
    const-string v3, "touch_key_light_duration"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyDuration:Landroid/preference/ListPreference;

    .line 173
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "touch_key_light_duration"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 174
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyDuration:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyEntries:[Ljava/lang/CharSequence;

    .line 175
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "key_button_light_control_mode"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 176
    .local v2, "mode":I
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyDuration:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyEntries:[Ljava/lang/CharSequence;

    aget-object v6, v6, v2

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyDuration:Landroid/preference/ListPreference;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 178
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyDuration:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    .end local v2    # "mode":I
    :goto_1
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "notification_light"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 185
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mNotificationManagerService:Landroid/app/INotificationManager;

    .line 191
    :goto_2
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "notification_light_checkbox"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 192
    const-string v3, "notification_light_checkbox"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 195
    :cond_4
    const-string v3, "bt_settings"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mBTPref:Landroid/preference/Preference;

    .line 196
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "bt_settings"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 197
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mBTPref:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    .line 200
    :cond_5
    const-string v3, "ewarranty"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mEwarranty:Landroid/preference/Preference;

    .line 201
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "ewarranty"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 202
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mEwarranty:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    .line 215
    :cond_6
    :goto_3
    const-string v3, "nfc_settings"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mNfc:Landroid/preference/Preference;

    .line 216
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 217
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "nfc_settings"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 218
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mNfc:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    .line 221
    :cond_7
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "phone_instructions"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 222
    const-string v3, "phone_instructions"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 224
    :cond_8
    const-string v3, "protect_lock"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mProtectLock:Landroid/preference/CheckBoxPreference;

    .line 225
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "protect_lock"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 226
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mProtectLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    .line 231
    :goto_4
    const-string v3, "flash_light_remind"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mFlashLightRemind:Landroid/preference/CheckBoxPreference;

    .line 232
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "flash_light_remind"

    invoke-virtual {v3, v6, v7}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 233
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mFlashLightRemind:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    .line 237
    :goto_5
    const-string v3, "holster_to_answer_call"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mHosterToAnswerCall:Landroid/preference/CheckBoxPreference;

    .line 238
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "holster_to_answer_call"

    invoke-virtual {v3, v4, v6}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 239
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mHosterToAnswerCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    .line 242
    :cond_9
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/settings/GeneralSettings;->isGlobalSearchEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 243
    const-string v3, "search"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/settings/SettingsItemsUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/SettingsItemsUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/settings/SettingsItemsUtils;->getGeneralPrefExtra()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 245
    const-string v3, "divider"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 248
    :cond_a
    const-string v3, "otg"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mOtgSettings:Landroid/preference/PreferenceScreen;

    .line 249
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportOTG()Z

    move-result v3

    if-nez v3, :cond_b

    .line 250
    const-string v3, "otg"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 251
    iput-object v8, p0, Lcom/vivo/settings/GeneralSettings;->mOtgSettings:Landroid/preference/PreferenceScreen;

    .line 253
    :cond_b
    const-string v3, "holster"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mHolster:Landroid/preference/PreferenceScreen;

    .line 254
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "holster"

    invoke-virtual {v3, v4, v6}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 255
    const-string v3, "holster"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 256
    iput-object v8, p0, Lcom/vivo/settings/GeneralSettings;->mHolster:Landroid/preference/PreferenceScreen;

    .line 258
    :cond_c
    const-string v3, "fast_charge"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mFastCharge:Landroid/preference/PreferenceScreen;

    .line 259
    const-string v3, "applications_settings"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mApp:Landroid/preference/PreferenceScreen;

    .line 260
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "fast_charge"

    invoke-virtual {v3, v4, v6}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 261
    const-string v3, "fast_charge"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 262
    iput-object v8, p0, Lcom/vivo/settings/GeneralSettings;->mFastCharge:Landroid/preference/PreferenceScreen;

    .line 264
    :cond_d
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "storage_settings"

    invoke-virtual {v3, v4, v6}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 265
    const-string v3, "storage_settings"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 267
    :cond_e
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v6, "sos_call"

    invoke-virtual {v3, v4, v6}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 268
    const-string v3, "sos_call"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sos_call_toggle"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 271
    :cond_f
    const-string v3, "bottom_key_function"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/settings/SettingsItemsUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/SettingsItemsUtils;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/settings/SettingsItemsUtils;->insertOtherPrefs(Landroid/preference/PreferenceScreen;)V

    .line 274
    return-void

    .line 154
    :cond_10
    invoke-static {}, Lcom/android/settings/AppFeature;->isAmoLed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    const v6, 0x7f08006e

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 156
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    const v6, 0x7f080066

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto/16 :goto_0

    .line 181
    :cond_11
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyDuration:Landroid/preference/ListPreference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_1

    .line 188
    :cond_12
    const-string v3, "notification_light"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 204
    :cond_13
    const/4 v0, 0x0

    .line 206
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "com.vivo.ewarranty"

    const/4 v7, 0x2

    invoke-virtual {v3, v6, v7}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_6
    if-nez v0, :cond_6

    .line 211
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mEwarranty:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_3

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "GeneralSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "no ewarranty exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 228
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_14
    iget-object v6, p0, Lcom/vivo/settings/GeneralSettings;->mProtectLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "protect_lock"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_15

    move v3, v4

    :goto_7
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_4

    :cond_15
    move v3, v5

    goto :goto_7

    .line 235
    :cond_16
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mFlashLightRemind:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "flash_light_remind"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_17

    :goto_8
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_17
    move v4, v5

    goto :goto_8
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/GeneralSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 435
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 436
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mTimer:Ljava/util/Timer;

    .line 440
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 501
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTimeOutPref:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 502
    const v2, 0xea60

    .line 504
    .local v2, "timeout":I
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 508
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_off_timeout"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    invoke-direct {p0, p2}, Lcom/vivo/settings/GeneralSettings;->updateScreenTimeOutSummay(Ljava/lang/Object;)V

    move v3, v4

    .line 522
    .end local v2    # "timeout":I
    :goto_0
    return v3

    .line 505
    .restart local v2    # "timeout":I
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    const v2, 0xea60

    .line 508
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_off_timeout"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    invoke-direct {p0, p2}, Lcom/vivo/settings/GeneralSettings;->updateScreenTimeOutSummay(Ljava/lang/Object;)V

    move v3, v4

    .line 510
    goto :goto_0

    .line 508
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "screen_off_timeout"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 509
    invoke-direct {p0, p2}, Lcom/vivo/settings/GeneralSettings;->updateScreenTimeOutSummay(Ljava/lang/Object;)V

    move v3, v4

    .line 510
    goto :goto_0

    .line 512
    .end local v2    # "timeout":I
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyDuration:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_2

    .line 513
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 514
    .local v1, "mode":I
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mPowerManager:Landroid/os/PowerManager;

    if-nez v3, :cond_1

    .line 515
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/GeneralSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mPowerManager:Landroid/os/PowerManager;

    .line 517
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v1}, Landroid/os/PowerManager;->setButtonLightMode(I)V

    .line 518
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "key_button_light_control_mode"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyDuration:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/vivo/settings/GeneralSettings;->mTouchKeyEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move v3, v4

    .line 520
    goto :goto_0

    .line 522
    .end local v1    # "mode":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 445
    const-string v6, "GeneralSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick preference = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v6, p0, Lcom/vivo/settings/GeneralSettings;->mNumArea:Landroid/preference/Preference;

    if-ne p2, v6, :cond_1

    .line 447
    iget-object v4, p0, Lcom/vivo/settings/GeneralSettings;->mNumArea:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 448
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_8

    .line 449
    const/high16 v4, 0x10800000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/vivo/settings/GeneralSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v5

    .line 453
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v1}, Lcom/vivo/settings/GeneralSettings;->toActivityNotFound(Landroid/preference/Preference;Ljava/lang/Exception;)V

    goto :goto_0

    .line 458
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcom/vivo/settings/GeneralSettings;->mEwarranty:Landroid/preference/Preference;

    if-ne p2, v6, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/vivo/settings/GeneralSettings;->toEWarranty(Landroid/content/Context;Landroid/preference/Preference;)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v6, p0, Lcom/vivo/settings/GeneralSettings;->mNotificationLightCheck:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_4

    .line 462
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_light"

    iget-object v8, p0, Lcom/vivo/settings/GeneralSettings;->mNotificationLightCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    move v4, v5

    :cond_3
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    iget-object v4, p0, Lcom/vivo/settings/GeneralSettings;->mNotificationManagerService:Landroid/app/INotificationManager;

    if-eqz v4, :cond_0

    .line 468
    :try_start_1
    const-string v4, "android.app.INotificationManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 469
    .local v0, "class1":Ljava/lang/Class;
    const-string v4, "setNotificationDisabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Boolean;

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 470
    .local v3, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/vivo/settings/GeneralSettings;->mNotificationManagerService:Landroid/app/INotificationManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/vivo/settings/GeneralSettings;->mNotificationLightCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 471
    .end local v0    # "class1":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v1

    .line 472
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "GeneralSettings"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v6, p0, Lcom/vivo/settings/GeneralSettings;->mProtectLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_6

    .line 476
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "protect_lock"

    iget-object v8, p0, Lcom/vivo/settings/GeneralSettings;->mProtectLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v5

    :cond_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 479
    :cond_6
    iget-object v6, p0, Lcom/vivo/settings/GeneralSettings;->mHosterToAnswerCall:Landroid/preference/CheckBoxPreference;

    if-ne v6, p2, :cond_9

    .line 480
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "flip_to_answer_call"

    iget-object v8, p0, Lcom/vivo/settings/GeneralSettings;->mHosterToAnswerCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    move v4, v5

    :cond_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 488
    :cond_8
    :goto_1
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 490
    :try_start_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/vivo/settings/GeneralSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 491
    :catch_2
    move-exception v1

    .line 492
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-direct {p0, p2, v1}, Lcom/vivo/settings/GeneralSettings;->toActivityNotFound(Landroid/preference/Preference;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 482
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    iget-object v6, p0, Lcom/vivo/settings/GeneralSettings;->mFlashLightRemind:Landroid/preference/CheckBoxPreference;

    if-ne v6, p2, :cond_b

    .line 483
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "flash_light_remind"

    iget-object v8, p0, Lcom/vivo/settings/GeneralSettings;->mFlashLightRemind:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_a

    move v4, v5

    :cond_a
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 484
    :cond_b
    iget-object v4, p0, Lcom/vivo/settings/GeneralSettings;->mApp:Landroid/preference/PreferenceScreen;

    if-ne v4, p2, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_0

    .line 496
    :cond_c
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 309
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 310
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->isInVisitMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "com.vivo.upnpserver"

    invoke-static {v0, v3}, Lcom/vivo/settings/VivoUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mUpnp:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->removePreference(Landroid/preference/Preference;)V

    .line 316
    :goto_0
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mNotificationLightCheck:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "notification_light"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 318
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->showBBKBackButton()V

    .line 319
    const v0, 0x7f0b0833

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->setTitle(I)V

    .line 320
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->updateTimeOutPref()V

    .line 321
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/vivo/settings/GeneralSettings;->handleBluetoothStateChanged(I)V

    .line 322
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 323
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 326
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v6}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_2

    .line 330
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->updateNfcStatus()V

    .line 332
    :cond_2
    const-string v0, "user_experience"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 333
    .local v7, "userExp":Landroid/preference/Preference;
    if-eqz v7, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "user_experience_improve_plan"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_8

    const v0, 0x7f0b087c

    :goto_2
    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 336
    :cond_3
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportHolsterToAnswerCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mHosterToAnswerCall:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flip_to_answer_call"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_9

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 346
    :cond_4
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->updateDevOption()V

    .line 347
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->updateOtgSummary()V

    .line 348
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->updateHolsterSummary()V

    .line 349
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->updateFastChargeSummary()V

    .line 350
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 352
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_5

    .line 353
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mTimer:Ljava/util/Timer;

    .line 354
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/vivo/settings/GeneralSettings$2;

    invoke-direct {v1, p0}, Lcom/vivo/settings/GeneralSettings$2;-><init>(Lcom/vivo/settings/GeneralSettings;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 366
    :cond_5
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings;->switchToSearchPref()Z

    .line 367
    return-void

    .line 313
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "userExp":Landroid/preference/Preference;
    :cond_6
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings;->mUpnp:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/GeneralSettings;->addPreference(Landroid/preference/Preference;)V

    .line 314
    invoke-direct {p0}, Lcom/vivo/settings/GeneralSettings;->updateUpnp()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 316
    goto/16 :goto_1

    .line 334
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "userExp":Landroid/preference/Preference;
    :cond_8
    const v0, 0x7f0b087a

    goto :goto_2

    :cond_9
    move v1, v2

    .line 337
    goto :goto_3
.end method
