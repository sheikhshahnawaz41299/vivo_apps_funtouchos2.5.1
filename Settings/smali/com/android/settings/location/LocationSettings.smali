.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_LOCATION_MODE:Ljava/lang/String; = "location_mode"

.field private static final KEY_LOCATION_SERVICES:Ljava/lang/String; = "location_services"

.field private static final KEY_MANAGED_PROFILE_CATEGORY:Ljava/lang/String; = "managed_profile_location_category"

.field private static final KEY_MANAGED_PROFILE_PREFERENCE:Ljava/lang/String; = "managed_profile_location_switch"

.field private static final KEY_PIC_USE_GPS:Ljava/lang/String; = "pic_use_gps"

.field private static final KEY_RECENT_LOCATION_REQUESTS:Ljava/lang/String; = "recent_location_requests"

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

.field private static final TAG:Ljava/lang/String; = "LocationSettings"


# instance fields
.field gpsEnabled:Z

.field private injector:Lcom/android/settings/location/SettingsInjector;

.field private mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

.field private mLocationMode:Landroid/preference/Preference;

.field private mManagedProfile:Landroid/os/UserHandle;

.field private mManagedProfilePreference:Landroid/preference/Preference;

.field private mPicUseGps:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/preference/CheckBoxPreference;

.field private mUm:Landroid/os/UserManager;

.field private mValidListener:Z

.field networkEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 391
    new-instance v0, Lcom/android/settings/location/LocationSettings$4;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$4;-><init>()V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    .line 93
    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 102
    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->gpsEnabled:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->networkEnabled:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationSettings;)Lcom/android/settings/location/SettingsInjector;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationSettings;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    return-object v0
.end method

.method private addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/preference/PreferenceScreen;
    .param p3, "lockdownOnLocationAccess"    # Z

    .prologue
    .line 268
    const-string v3, "location_services"

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 270
    .local v0, "categoryLocationServices":Landroid/preference/PreferenceCategory;
    new-instance v3, Lcom/android/settings/location/SettingsInjector;

    invoke-direct {v3, p1}, Lcom/android/settings/location/SettingsInjector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    .line 273
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings/location/SettingsInjector;->getInjectedSettings(I)Ljava/util/List;

    move-result-object v2

    .line 276
    .local v2, "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v3, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/location/LocationSettings$3;-><init>(Lcom/android/settings/location/LocationSettings;)V

    iput-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.location.InjectedSettingChanged"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 291
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 292
    invoke-direct {p0, v2, v0}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 297
    :goto_1
    return-void

    .line 273
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_0
    const/4 v3, -0x2

    goto :goto_0

    .line 295
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    .restart local v2    # "locationServices":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :cond_1
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p2, "container"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "prefs":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    new-instance v2, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/location/LocationSettings$1;-><init>(Lcom/android/settings/location/LocationSettings;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 157
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 158
    .local v0, "entry":Landroid/preference/Preference;
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 160
    .end local v0    # "entry":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private changeManagedProfileLocationAccessStatus(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "summaryResId"    # I

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 178
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->showBBKBackButton()V

    .line 179
    const v6, 0x7f0b00f7

    invoke-virtual {p0, v6}, Lcom/android/settings/location/LocationSettings;->setTitle(I)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 181
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 182
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 184
    :cond_0
    sget-object v6, Lcom/android/settings/location/LocationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {v6}, Lcom/vivo/settings/xml/SettingsResouce;->getXmlResouce()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/settings/location/LocationSettings;->addPreferencesFromResource(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 187
    invoke-direct {p0, v5}, Lcom/android/settings/location/LocationSettings;->setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V

    .line 188
    const-string v6, "location_switch"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    .line 189
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 191
    const-string v6, "pic_use_gps"

    invoke-virtual {p0, v6}, Lcom/android/settings/location/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/location/LocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    .line 192
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->updatePicUseGps()V

    .line 195
    const-string v6, "location_mode"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    .line 196
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    new-instance v7, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/location/LocationSettings$2;-><init>(Lcom/android/settings/location/LocationSettings;Lcom/android/settings/SettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 208
    const-string v6, "recent_location_requests"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    .line 210
    new-instance v3, Lcom/android/settings/location/RecentLocationApps;

    invoke-direct {v3, v0}, Lcom/android/settings/location/RecentLocationApps;-><init>(Lcom/android/settings/SettingsActivity;)V

    .line 211
    .local v3, "recentApps":Lcom/android/settings/location/RecentLocationApps;
    invoke-virtual {v3}, Lcom/android/settings/location/RecentLocationApps;->getAppList()Ljava/util/List;

    move-result-object v4

    .line 212
    .local v4, "recentLocationRequests":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 213
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v4, v6}, Lcom/android/settings/location/LocationSettings;->addPreferencesSorted(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 223
    :goto_0
    const/4 v2, 0x0

    .line 227
    .local v2, "lockdownOnLocationAccess":Z
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v7, "no_share_location"

    iget-object v8, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 229
    const/4 v2, 0x1

    .line 231
    :cond_1
    invoke-direct {p0, v0, v5, v2}, Lcom/android/settings/location/LocationSettings;->addLocationServices(Landroid/content/Context;Landroid/preference/PreferenceScreen;Z)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->refreshLocationMode()V

    .line 234
    return-object v5

    .line 216
    .end local v2    # "lockdownOnLocationAccess":Z
    :cond_2
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 217
    .local v1, "banner":Landroid/preference/Preference;
    const v6, 0x7f04006f

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 218
    const v6, 0x7f0b030d

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 219
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 220
    iget-object v6, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private setupManagedProfileCategory(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    .line 241
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 243
    const-string v0, "managed_profile_location_category"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 244
    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 249
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    .line 247
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private updatePicUseGps()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 165
    .local v0, "gps":Z
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "network"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 167
    .local v1, "network":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 173
    :goto_0
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bbk_pic_use_gps"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    return-void

    .line 170
    :cond_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bbk_pic_use_gps"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v2, v3

    .line 173
    goto :goto_1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 301
    const v0, 0x7f0b06a0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/location/LocationSettingsBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 114
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    .line 115
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onDestroyView()V

    .line 120
    return-void
.end method

.method public onModeChanged(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    packed-switch p1, :pswitch_data_0

    .line 326
    :goto_0
    if-eqz p1, :cond_3

    move v0, v1

    .line 329
    .local v0, "enabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-nez p2, :cond_4

    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 330
    iget-object v4, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 331
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->updatePicUseGps()V

    .line 332
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mCategoryRecentLocationRequests:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 334
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 336
    iget-boolean v3, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 339
    :cond_0
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    iget-boolean v3, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 345
    :cond_1
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfilePreference:Landroid/preference/Preference;

    if-eqz v3, :cond_2

    .line 346
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mUm:Landroid/os/UserManager;

    const-string v4, "no_share_location"

    iget-object v5, p0, Lcom/android/settings/location/LocationSettings;->mManagedProfile:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 347
    const v1, 0x7f0b0755

    invoke-direct {p0, v2, v1}, Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    .line 360
    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->injector:Lcom/android/settings/location/SettingsInjector;

    invoke-virtual {v1}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 361
    return-void

    .line 308
    .end local v0    # "enabled":Z
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b030b

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b030a

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0309

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 317
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/location/LocationSettings;->mLocationMode:Landroid/preference/Preference;

    const v4, 0x7f0b0308

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 326
    goto :goto_1

    .restart local v0    # "enabled":Z
    :cond_4
    move v3, v2

    .line 329
    goto :goto_2

    :cond_5
    move v3, v2

    .line 330
    goto :goto_3

    .line 350
    :cond_6
    if-eqz v0, :cond_7

    .line 351
    const v2, 0x7f0b072e

    invoke-direct {p0, v1, v2}, Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 353
    :cond_7
    const v1, 0x7f0b072f

    invoke-direct {p0, v2, v1}, Lcom/android/settings/location/LocationSettings;->changeManagedProfileLocationAccessStatus(ZI)V

    goto :goto_4

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 146
    :cond_1
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 147
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LocationSettings"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "LocationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swallowing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 366
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 367
    const-string v2, "LocationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange gpsEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/location/LocationSettings;->gpsEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " networkEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/location/LocationSettings;->networkEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    .line 388
    :goto_0
    return v1

    .line 380
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettings;->setLocationMode(I)V

    .line 381
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->updatePicUseGps()V

    goto :goto_0

    .line 384
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/location/LocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_3

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_pic_use_gps"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    move v1, v0

    .line 388
    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 124
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 126
    iget-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/location/LocationSettings;->mSwitch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/location/LocationSettings;->mValidListener:Z

    .line 130
    :cond_0
    return-void
.end method
