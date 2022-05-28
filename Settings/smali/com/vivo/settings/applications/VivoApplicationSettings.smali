.class public Lcom/vivo/settings/applications/VivoApplicationSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoApplicationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;
    }
.end annotation


# static fields
.field private static final ACTION_APPLICATION_SETTINGS:Ljava/lang/String; = "android.settings.APPLICATION_SETTINGS"

.field private static final KEY_APP_INSTALL_LOCATION:Ljava/lang/String; = "app_install_location"

.field private static final KEY_APP_MOVABLE:Ljava/lang/String; = "moveable_app"

.field public static final SETTINGS_RESOUCE:Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;

.field private static final TAG:Ljava/lang/String; = "ApplicationSettings"


# instance fields
.field private mInstallLocation:Landroid/preference/Preference;

.field private mIsTFSupport:Z

.field private mMovaleApps:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;

    invoke-direct {v0}, Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;-><init>()V

    sput-object v0, Lcom/vivo/settings/applications/VivoApplicationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 157
    return-void
.end method

.method private static isSupportFirstInstallLocation()Z
    .locals 5

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "isSdMounted":Z
    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 130
    .local v1, "status":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getSecondaryStorageState()Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v2, "ApplicationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportFirstInstallLocation status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    const-string v1, "mounted"

    .line 136
    :cond_0
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    const/4 v0, 0x1

    .line 140
    .end local v1    # "status":Ljava/lang/String;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/AppFeature;->isDeviceSupportTF()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    sget-object v0, Lcom/vivo/settings/applications/VivoApplicationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;

    invoke-virtual {v0}, Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;->getXmlResouce()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->showBBKBackButton()V

    .line 71
    const-string v0, "app_install_location"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mInstallLocation:Landroid/preference/Preference;

    .line 72
    const-string v0, "moveable_app"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mMovaleApps:Landroid/preference/PreferenceScreen;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mIsTFSupport:Z

    .line 75
    const-string v0, "persist.sys.app.move.internal"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    const-string v0, "ApplicationSettings"

    const-string v1, "no need to judge whether surport TF card !"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    const-string v0, "ApplicationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 211 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vivo/settings/applications/VivoApplicationSettings;->isSupportFirstInstallLocation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/vivo/settings/applications/VivoApplicationSettings;->isSupportFirstInstallLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PD1524F_EX"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PD1309F_EX"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PD1524BF_EX"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PD1510F_EX"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "5.1.1"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mInstallLocation:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->removePreference(Landroid/preference/Preference;)V

    .line 85
    const-string v0, "ApplicationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Build.VERSION.RELEASE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    invoke-static {}, Lcom/vivo/settings/applications/VivoApplicationSettings;->isSupportFirstInstallLocation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mMovaleApps:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->removePreference(Landroid/preference/Preference;)V

    .line 89
    const-string v0, "ApplicationSettings"

    const-string v1, "remove moveable_app"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    return-void

    .line 78
    :cond_3
    invoke-static {}, Lcom/android/settings/AppFeature;->isDeviceSupportTF()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mIsTFSupport:Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/vivo/settings/VivoUtils;->isHprofDumpEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.action.GENERATE_HPROF_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "model"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "addFileStr"

    const-string v2, "Application"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const v7, 0x7f0b098a

    const v6, 0x7f0b08d4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 95
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 97
    const-string v1, "0"

    const-string v2, "persist.sys.primary.emulate"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "firstLocation":I
    const-string v1, "ApplicationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " firstLocation is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; isTFSupport is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mIsTFSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-ne v0, v5, :cond_1

    .line 102
    iget-boolean v1, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mIsTFSupport:Z

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mInstallLocation:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 123
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mInstallLocation:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 107
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mInstallLocation:Landroid/preference/Preference;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mInstallLocation:Landroid/preference/Preference;

    const v2, 0x7f0b0907

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 114
    .end local v0    # "firstLocation":I
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/settings/applications/VivoApplicationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_install_location"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    .restart local v0    # "firstLocation":I
    if-ne v0, v5, :cond_4

    .line 117
    iget-object v1, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mInstallLocation:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 119
    :cond_4
    iget-object v1, p0, Lcom/vivo/settings/applications/VivoApplicationSettings;->mInstallLocation:Landroid/preference/Preference;

    const v2, 0x7f0b082f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
