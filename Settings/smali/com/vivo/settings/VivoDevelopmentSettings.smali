.class public Lcom/vivo/settings/VivoDevelopmentSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoDevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final ALLOW_MOCK_LOCATION:Ljava/lang/String; = "allow_mock_location"

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final KEEP_SCREEN_ON:Ljava/lang/String; = "keep_screen_on"

.field private static final TAG:Ljava/lang/String; = "VivoDevelopmentSettings"


# instance fields
.field private mAllowMockLocation:Landroid/preference/CheckBoxPreference;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mKeepScreenOn:Landroid/preference/CheckBoxPreference;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private mUsbActivityDialog:Landroid/app/Dialog;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private dismissUsbActivityDialog()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    .line 238
    :cond_0
    return-void
.end method

.method private showUsbActivityDialog()V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0929

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b08c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/vivo/settings/VivoDevelopmentSettings$1;

    invoke-direct {v2, p0}, Lcom/vivo/settings/VivoDevelopmentSettings$1;-><init>(Lcom/vivo/settings/VivoDevelopmentSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    .line 231
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 194
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 195
    iput-boolean v2, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkClicked:Z

    .line 196
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    iget-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 87
    const v0, 0x7f060053

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDevelopmentSettings;->addPreferencesFromResource(I)V

    .line 88
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 90
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->showBBKBackButton()V

    .line 92
    const-string v0, "enable_adb"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 93
    const-string v0, "keep_screen_on"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    .line 94
    const-string v0, "allow_mock_location"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDevelopmentSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    .line 96
    new-instance v0, Lcom/vivo/settings/SimUtils;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 98
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->dismissDialog()V

    .line 215
    invoke-direct {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->dismissUsbActivityDialog()V

    .line 216
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 217
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 210
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v2

    .line 130
    :cond_1
    const-string v4, "VivoDevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick preference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v4, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_8

    .line 133
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 134
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_activitied_by_sim"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 136
    .local v1, "usbActivited":I
    const-string v4, "VivoDevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick usbActivited:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-nez v1, :cond_5

    .line 138
    iget-object v4, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v4}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v0

    .line 139
    .local v0, "simCount":I
    const-string v4, "VivoDevelopmentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick simCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-gtz v0, :cond_4

    .line 143
    iget-object v4, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->dismissUsbActivityDialog()V

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->showUsbActivityDialog()V

    .line 148
    iget-object v4, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move v2, v3

    .line 151
    goto/16 :goto_0

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_activitied_by_sim"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    .end local v0    # "simCount":I
    .end local v1    # "usbActivited":I
    :cond_5
    iget-object v3, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 160
    iput-boolean v2, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkClicked:Z

    .line 161
    iget-object v3, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->dismissDialog()V

    .line 162
    :cond_6
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0425

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0424

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    .line 168
    iget-object v3, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 170
    :cond_7
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 173
    :cond_8
    iget-object v4, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_a

    .line 174
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    iget-object v3, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    :goto_1
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v3, v2

    goto :goto_1

    .line 178
    :cond_a
    iget-object v4, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mock_location"

    iget-object v6, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_b
    move v3, v2

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 106
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDevelopmentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 116
    :goto_0
    iget-object v4, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mKeepScreenOn:Landroid/preference/CheckBoxPreference;

    const-string v1, "stay_on_while_plugged_in"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    iget-object v1, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mAllowMockLocation:Landroid/preference/CheckBoxPreference;

    const-string v4, "mock_location"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 120
    return-void

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/VivoDevelopmentSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_3

    :cond_2
    move v1, v3

    .line 116
    goto :goto_1

    :cond_3
    move v2, v3

    .line 118
    goto :goto_2
.end method
