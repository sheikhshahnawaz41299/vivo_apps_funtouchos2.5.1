.class public Lcom/vivo/settings/NotificationLight;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "NotificationLight.java"


# static fields
.field private static final FLAG_CHARGE:I = 0x8

.field private static final FLAG_LOW_POWER:I = 0x4

.field private static final FLAG_NOTICE:I = 0x2

.field private static final FLAG_RECORD:I = 0x1

.field private static final NOTI_CHARGE:I = 0x0

.field private static final NOTI_LOW_POWER:I = 0x1

.field private static final NOTI_NOTICE:I = 0x2

.field private static final NOTI_RECORD:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NotificationLight"


# instance fields
.field mCharge:Landroid/preference/CheckBoxPreference;

.field mLowPower:Landroid/preference/CheckBoxPreference;

.field mNoti:Landroid/preference/CheckBoxPreference;

.field mRecord:Landroid/preference/CheckBoxPreference;

.field notificationManagerService:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getState()I
    .locals 3

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/vivo/settings/NotificationLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getState(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/vivo/settings/NotificationLight;->getState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/vivo/settings/NotificationLight;->getState(II)Z

    move-result v0

    return v0
.end method

.method private getState(II)Z
    .locals 1
    .param p1, "flag"    # I
    .param p2, "state"    # I

    .prologue
    .line 85
    and-int v0, p2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/vivo/settings/NotificationLight;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_light"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    return-void
.end method

.method private setState(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/vivo/settings/NotificationLight;->getState()I

    move-result v0

    .line 94
    .local v0, "state":I
    if-eqz p2, :cond_0

    .line 95
    or-int/2addr v0, p1

    .line 99
    :goto_0
    invoke-direct {p0, v0}, Lcom/vivo/settings/NotificationLight;->setState(I)V

    .line 100
    return-void

    .line 97
    :cond_0
    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/vivo/settings/NotificationLight;->addPreferencesFromResource(I)V

    .line 41
    const-string v1, "NotificationLight"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v1, "charge"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/NotificationLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/NotificationLight;->mCharge:Landroid/preference/CheckBoxPreference;

    .line 43
    const-string v1, "low_power"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/NotificationLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/NotificationLight;->mLowPower:Landroid/preference/CheckBoxPreference;

    .line 44
    const-string v1, "noti"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/NotificationLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/NotificationLight;->mNoti:Landroid/preference/CheckBoxPreference;

    .line 45
    const-string v1, "record"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/NotificationLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/NotificationLight;->mRecord:Landroid/preference/CheckBoxPreference;

    .line 47
    invoke-direct {p0}, Lcom/vivo/settings/NotificationLight;->getState()I

    move-result v0

    .line 48
    .local v0, "state":I
    iget-object v1, p0, Lcom/vivo/settings/NotificationLight;->mCharge:Landroid/preference/CheckBoxPreference;

    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/vivo/settings/NotificationLight;->getState(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 49
    iget-object v1, p0, Lcom/vivo/settings/NotificationLight;->mLowPower:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v0}, Lcom/vivo/settings/NotificationLight;->getState(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 50
    iget-object v1, p0, Lcom/vivo/settings/NotificationLight;->mNoti:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0}, Lcom/vivo/settings/NotificationLight;->getState(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 51
    iget-object v1, p0, Lcom/vivo/settings/NotificationLight;->mRecord:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/vivo/settings/NotificationLight;->getState(II)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 52
    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/NotificationLight;->notificationManagerService:Landroid/app/INotificationManager;

    .line 54
    invoke-virtual {p0}, Lcom/vivo/settings/NotificationLight;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/settings/NotificationLight;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 55
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 67
    const-string v1, "NotificationLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick preference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v1, p0, Lcom/vivo/settings/NotificationLight;->mCharge:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 69
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/vivo/settings/NotificationLight;->mCharge:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vivo/settings/NotificationLight;->setState(IZ)V

    .line 81
    :goto_0
    return v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/NotificationLight;->mLowPower:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 72
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/vivo/settings/NotificationLight;->mLowPower:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vivo/settings/NotificationLight;->setState(IZ)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/NotificationLight;->mNoti:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 75
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/vivo/settings/NotificationLight;->mNoti:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/vivo/settings/NotificationLight;->setState(IZ)V

    goto :goto_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/NotificationLight;->mRecord:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/vivo/settings/NotificationLight;->mRecord:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vivo/settings/NotificationLight;->setState(IZ)V

    goto :goto_0

    .line 81
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 60
    invoke-virtual {p0}, Lcom/vivo/settings/NotificationLight;->showBBKBackButton()V

    .line 61
    const v0, 0x7f0b0891

    invoke-virtual {p0, v0}, Lcom/vivo/settings/NotificationLight;->setTitle(I)V

    .line 62
    return-void
.end method
