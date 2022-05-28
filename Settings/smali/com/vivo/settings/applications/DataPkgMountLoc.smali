.class public Lcom/vivo/settings/applications/DataPkgMountLoc;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "DataPkgMountLoc.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/applications/DataPkgMountLoc$1;,
        Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;
    }
.end annotation


# static fields
.field private static IS_ALLOW_SD_CARD_SAVE:Ljava/lang/String; = null

.field private static IS_SD_CARD_LINK:Ljava/lang/String; = null

.field private static final KEY_PHONE:Ljava/lang/String; = "phone_mount"

.field private static final KEY_SD:Ljava/lang/String; = "sd_mount"

.field private static final TAG:Ljava/lang/String; = "DataPkgMountLoc"


# instance fields
.field private mReceiver:Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;

.field private mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

.field private phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

.field private sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "persist.sys.is_allow_pkg_in_sd"

    sput-object v0, Lcom/vivo/settings/applications/DataPkgMountLoc;->IS_ALLOW_SD_CARD_SAVE:Ljava/lang/String;

    .line 23
    const-string v0, "persist.sys.sdcardlink"

    sput-object v0, Lcom/vivo/settings/applications/DataPkgMountLoc;->IS_SD_CARD_LINK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->mReceiver:Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/StorageManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/DataPkgMountLoc;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/DataPkgMountLoc;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/applications/DataPkgMountLoc;)Lcom/vivo/settings/preference/BBKSingleChoicePreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/applications/DataPkgMountLoc;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const-string v1, "DataPkgMountLoc"

    const-string v2, "  DataPkgMountLoc"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 82
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 85
    :cond_0
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/vivo/settings/applications/DataPkgMountLoc;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->showBBKBackButton()V

    .line 88
    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 89
    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/settings/StorageManagerWrapper;->getInstance(Ljava/lang/Object;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 91
    const-string v1, "phone_mount"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    iput-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    .line 92
    const-string v1, "sd_mount"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    iput-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    .line 93
    iget-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v1, v3}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setPersistent(Z)V

    .line 94
    iget-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v1, p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    iget-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v1, v3}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setPersistent(Z)V

    .line 96
    iget-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v1, p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 97
    new-instance v1, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;-><init>(Lcom/vivo/settings/applications/DataPkgMountLoc;Lcom/vivo/settings/applications/DataPkgMountLoc$1;)V

    iput-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->mReceiver:Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 166
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 159
    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->mReceiver:Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    if-ne p1, v0, :cond_1

    .line 104
    const-string v0, "DataPkgMountLoc"

    const-string v1, "preference is  phoneMount !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    .line 106
    sget-object v0, Lcom/vivo/settings/applications/DataPkgMountLoc;->IS_ALLOW_SD_CARD_SAVE:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/vivo/settings/applications/DataPkgMountLoc;->IS_SD_CARD_LINK:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 115
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    if-ne p1, v0, :cond_0

    .line 109
    const-string v0, "DataPkgMountLoc"

    const-string v1, "preference is  sdMount !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    .line 111
    sget-object v0, Lcom/vivo/settings/applications/DataPkgMountLoc;->IS_ALLOW_SD_CARD_SAVE:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/vivo/settings/applications/DataPkgMountLoc;->IS_SD_CARD_LINK:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 121
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 122
    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 124
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v3, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v3}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "status":Ljava/lang/String;
    const-string v2, "DataPkgMountLoc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v2, "mounted_ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v1, "mounted"

    .line 129
    :cond_0
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 130
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2, v6}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setEnabled(Z)V

    .line 132
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2, v6}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setEnabled(Z)V

    .line 140
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->mReceiver:Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;

    invoke-virtual {v2}, Lcom/vivo/settings/applications/DataPkgMountLoc$SDCardStateChangeRecerver;->registerReceiver()V

    .line 141
    sget-object v2, Lcom/vivo/settings/applications/DataPkgMountLoc;->IS_ALLOW_SD_CARD_SAVE:Ljava/lang/String;

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "isAllowSdCardSave":Ljava/lang/String;
    const-string v2, "DataPkgMountLoc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  isAllowSdCardSave = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    const-string v2, "DataPkgMountLoc"

    const-string v3, "isAllowSdCardSave==0 phoneMount.setChecked()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    .line 150
    :goto_1
    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 152
    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vivo/settings/applications/DataPkgMountLoc;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 153
    return-void

    .line 135
    .end local v0    # "isAllowSdCardSave":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    :cond_4
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2, v5}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setEnabled(Z)V

    .line 137
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->phoneMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2, v5}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setEnabled(Z)V

    goto :goto_0

    .line 147
    .restart local v0    # "isAllowSdCardSave":Ljava/lang/String;
    :cond_5
    const-string v2, "DataPkgMountLoc"

    const-string v3, "sdMount.setChecked()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/vivo/settings/applications/DataPkgMountLoc;->sdMount:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    goto :goto_1
.end method
