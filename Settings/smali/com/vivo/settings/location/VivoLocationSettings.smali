.class public Lcom/vivo/settings/location/VivoLocationSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoLocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;
    }
.end annotation


# static fields
.field private static final CONFIRM_NETWORK_DIALOG_ID:I = 0x1

.field private static final FIRST_LOAD_APP_NUMS:I = 0xa

.field private static final KEY_AGPS_SETTINGS_SCREEN:Ljava/lang/String; = "agps_settings_screen"

.field private static final KEY_AUTO_TIME_GPS:Ljava/lang/String; = "auto_time_gps"

.field private static final KEY_GPS:Ljava/lang/String; = "location_gps"

.field private static final KEY_LOCATION_PERMISSION:Ljava/lang/String; = "location_permission"

.field private static final KEY_NETWORK:Ljava/lang/String; = "location_network"

.field private static final KEY_PERMISSION_DIVIDER:Ljava/lang/String; = "permission_divider"

.field private static final KEY_PIC_USE_GPS:Ljava/lang/String; = "pic_use_gps"

.field private static final MSG_UPDATE_PERMISSION_LIST:I = 0x64

.field private static final PERMISSION:[Ljava/lang/String;

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
.field private mAgpsSettingsScreen:Landroid/preference/Preference;

.field private mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

.field private mAutoTimeGps:Landroid/preference/CheckBoxPreference;

.field private mClickPoint:Lcom/vivo/settings/preference/VivoLocationPermission;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mLocationPermission:Landroid/preference/PreferenceCategory;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPermissionDivider:Landroid/preference/PreferenceCategory;

.field private mPermissionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;",
            ">;"
        }
    .end annotation
.end field

.field private mPicUseGps:Landroid/preference/CheckBoxPreference;

.field private mPrefCallBack:Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mUpdateLocationToggles:Ljava/lang/Runnable;

.field private mUpdateLocationTogglesEx:Ljava/lang/Runnable;

.field private mUpdateUIHandler:Landroid/os/Handler;

.field private mVLPCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vivo/settings/preference/VivoLocationPermission;",
            ">;"
        }
    .end annotation
.end field

.field private mVivoPermissionManager:Lcom/vivo/services/security/client/VivoPermissionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 65
    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/vivo/settings/location/VivoLocationSettings;->PERMISSION:[Ljava/lang/String;

    .line 493
    new-instance v0, Lcom/vivo/settings/location/VivoLocationSettings$8;

    invoke-direct {v0}, Lcom/vivo/settings/location/VivoLocationSettings$8;-><init>()V

    sput-object v0, Lcom/vivo/settings/location/VivoLocationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mVLPCache:Ljava/util/HashMap;

    .line 88
    new-instance v0, Lcom/vivo/settings/location/VivoLocationSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/location/VivoLocationSettings$1;-><init>(Lcom/vivo/settings/location/VivoLocationSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationToggles:Ljava/lang/Runnable;

    .line 94
    new-instance v0, Lcom/vivo/settings/location/VivoLocationSettings$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/location/VivoLocationSettings$2;-><init>(Lcom/vivo/settings/location/VivoLocationSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPrefCallBack:Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mHandler:Landroid/os/Handler;

    .line 482
    new-instance v0, Lcom/vivo/settings/location/VivoLocationSettings$7;

    invoke-direct {v0, p0}, Lcom/vivo/settings/location/VivoLocationSettings$7;-><init>(Lcom/vivo/settings/location/VivoLocationSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/location/VivoLocationSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/location/VivoLocationSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/vivo/settings/location/VivoLocationSettings;->updateLocationToggles(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/location/VivoLocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/location/VivoLocationSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/location/VivoLocationSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/location/VivoLocationSettings;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/location/VivoLocationSettings;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/location/VivoLocationSettings;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/vivo/settings/location/VivoLocationSettings;->addLocationPermission(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$402(Lcom/vivo/settings/location/VivoLocationSettings;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/location/VivoLocationSettings;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vivo/settings/location/VivoLocationSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/location/VivoLocationSettings;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->updateAppLocPermission()V

    return-void
.end method

.method private addLocationPermission(Ljava/lang/String;II)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I
    .param p3, "order"    # I

    .prologue
    .line 414
    const-string v3, "LocationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addLocationPermission packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, p1}, Lcom/vivo/settings/location/VivoLocationSettings;->getVivoLocationPermissionFromCache(Ljava/lang/String;)Lcom/vivo/settings/preference/VivoLocationPermission;

    move-result-object v2

    .line 416
    .local v2, "pref":Lcom/vivo/settings/preference/VivoLocationPermission;
    if-nez v2, :cond_0

    .line 433
    :goto_0
    return-void

    .line 419
    :cond_0
    invoke-virtual {v2, p3}, Lcom/vivo/settings/preference/VivoLocationPermission;->setOrder(I)V

    .line 421
    :try_start_0
    iget-object v3, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    iget-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPrefCallBack:Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/vivo/settings/AsyncImageLoader;->loadDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/preference/Preference;Lcom/vivo/settings/AsyncImageLoader$PrefCallBack;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 423
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v2, v0}, Lcom/vivo/settings/preference/VivoLocationPermission;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 426
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/settings/preference/VivoLocationPermission;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    const v3, 0x7f0b0862

    invoke-virtual {v2, v3}, Lcom/vivo/settings/preference/VivoLocationPermission;->setDialogTitle(I)V

    .line 428
    invoke-virtual {v2, p2}, Lcom/vivo/settings/preference/VivoLocationPermission;->setValueIndex(I)V

    .line 429
    iget-object v3, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mLocationPermission:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 431
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->showBBKBackButton()V

    .line 106
    const v1, 0x7f0b00f7

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->setTitle(I)V

    .line 107
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 108
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 111
    :cond_0
    sget-object v1, Lcom/vivo/settings/location/VivoLocationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {v1}, Lcom/vivo/settings/xml/SettingsResouce;->getXmlResouce()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->addPreferencesFromResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 113
    const-string v1, "location_network"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 114
    const-string v1, "location_gps"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 115
    const-string v1, "auto_time_gps"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAutoTimeGps:Landroid/preference/CheckBoxPreference;

    .line 116
    const-string v1, "pic_use_gps"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    .line 117
    const-string v1, "agps_settings_screen"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAgpsSettingsScreen:Landroid/preference/Preference;

    .line 118
    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAutoTimeGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->removePreference(Landroid/preference/Preference;)V

    .line 119
    sget-object v1, Lcom/vivo/settings/location/VivoLocationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "agps_settings_screen"

    invoke-virtual {v1, v2, v3}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAgpsSettingsScreen:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->removePreference(Landroid/preference/Preference;)V

    .line 123
    :cond_1
    const-string v1, "permission_divider"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionDivider:Landroid/preference/PreferenceCategory;

    .line 124
    const-string v1, "location_permission"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/location/VivoLocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mLocationPermission:Landroid/preference/PreferenceCategory;

    .line 126
    new-instance v1, Lcom/vivo/services/security/client/VivoPermissionManager;

    invoke-direct {v1}, Lcom/vivo/services/security/client/VivoPermissionManager;-><init>()V

    iput-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mVivoPermissionManager:Lcom/vivo/services/security/client/VivoPermissionManager;

    .line 127
    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    if-nez v1, :cond_2

    .line 128
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/settings/AsyncImageLoader;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/AsyncImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    .line 131
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 132
    return-object v0
.end method

.method private getVivoLocationPermissionFromCache(Ljava/lang/String;)Lcom/vivo/settings/preference/VivoLocationPermission;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 437
    .local v0, "context":Landroid/content/Context;
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 438
    new-instance v1, Lcom/vivo/settings/preference/VivoLocationPermission;

    invoke-direct {v1, v0}, Lcom/vivo/settings/preference/VivoLocationPermission;-><init>(Landroid/content/Context;)V

    .line 452
    :cond_0
    :goto_0
    return-object v1

    .line 440
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mVLPCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/preference/VivoLocationPermission;

    .line 441
    .local v1, "vlp":Lcom/vivo/settings/preference/VivoLocationPermission;
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 442
    new-instance v1, Lcom/vivo/settings/preference/VivoLocationPermission;

    .end local v1    # "vlp":Lcom/vivo/settings/preference/VivoLocationPermission;
    invoke-direct {v1, v0}, Lcom/vivo/settings/preference/VivoLocationPermission;-><init>(Landroid/content/Context;)V

    .line 443
    .restart local v1    # "vlp":Lcom/vivo/settings/preference/VivoLocationPermission;
    invoke-virtual {v1, p1}, Lcom/vivo/settings/preference/VivoLocationPermission;->setKey(Ljava/lang/String;)V

    .line 444
    const v2, 0x7f08006c

    invoke-virtual {v1, v2}, Lcom/vivo/settings/preference/VivoLocationPermission;->setEntries(I)V

    .line 445
    sget-object v2, Lcom/vivo/settings/location/VivoLocationSettings;->PERMISSION:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vivo/settings/preference/VivoLocationPermission;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 446
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/settings/preference/VivoLocationPermission;->setPersistent(Z)V

    .line 447
    const v2, 0x7f0b0242

    invoke-virtual {v1, v2}, Lcom/vivo/settings/preference/VivoLocationPermission;->setSummary(I)V

    .line 448
    invoke-virtual {v1, p0}, Lcom/vivo/settings/preference/VivoLocationPermission;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 449
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mLocationPermission:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Lcom/vivo/settings/preference/VivoLocationPermission;->setPreferenceCategory(Landroid/preference/PreferenceCategory;)V

    .line 450
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mVLPCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private onLocationModeChanged()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method private updateAppLocPermission()V
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/16 v9, 0xa

    .line 353
    const-string v6, "LocationSettings"

    const-string v7, "updateAppLocPermission"

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    if-eqz v6, :cond_0

    .line 355
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    .line 358
    :cond_0
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mLocationPermission:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 359
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 360
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mLocationPermission:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 364
    :cond_1
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v6, :cond_2

    .line 365
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 367
    :cond_2
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mVivoPermissionManager:Lcom/vivo/services/security/client/VivoPermissionManager;

    invoke-virtual {v6, v10}, Lcom/vivo/services/security/client/VivoPermissionManager;->getSpecifiedPermAppList(I)Ljava/util/List;

    move-result-object v1

    .line 368
    .local v1, "mAppPermissionList":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 373
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vivo/services/security/client/VivoPermissionInfo;

    .line 374
    .local v5, "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    invoke-virtual {v5}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v10}, Lcom/vivo/services/security/client/VivoPermissionInfo;->getPermissionResult(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/vivo/settings/location/VivoLocationSettings;->valueToIndexConvert(I)I

    move-result v4

    .line 378
    .local v4, "permissionValue":I
    const-string v6, "LocationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAppLocPermission packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " permissionValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionList:Ljava/util/ArrayList;

    new-instance v7, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;

    invoke-direct {v7, p0, v2, v4}, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;-><init>(Lcom/vivo/settings/location/VivoLocationSettings;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "permissionValue":I
    .end local v5    # "vpi":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mLocationPermission:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 383
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 384
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v9, :cond_6

    .line 386
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v9, :cond_4

    .line 387
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;

    .line 388
    .local v3, "permission":Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;
    iget-object v6, v3, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;->packageName:Ljava/lang/String;

    iget v7, v3, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;->permissionValue:I

    add-int/lit16 v8, v0, 0x3e8

    invoke-direct {p0, v6, v7, v8}, Lcom/vivo/settings/location/VivoLocationSettings;->addLocationPermission(Ljava/lang/String;II)V

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    .end local v3    # "permission":Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;
    :cond_4
    new-instance v6, Lcom/vivo/settings/location/VivoLocationSettings$6;

    invoke-direct {v6, p0}, Lcom/vivo/settings/location/VivoLocationSettings$6;-><init>(Lcom/vivo/settings/location/VivoLocationSettings;)V

    iput-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    .line 402
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    .end local v0    # "i":I
    .end local v1    # "mAppPermissionList":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :cond_5
    return-void

    .line 405
    .restart local v0    # "i":I
    .restart local v1    # "mAppPermissionList":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/services/security/client/VivoPermissionInfo;>;"
    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 406
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;

    .line 407
    .restart local v3    # "permission":Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;
    iget-object v6, v3, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;->packageName:Ljava/lang/String;

    iget v7, v3, Lcom/vivo/settings/location/VivoLocationSettings$LocationPermission;->permissionValue:I

    add-int/lit16 v8, v0, 0x3e8

    invoke-direct {p0, v6, v7, v8}, Lcom/vivo/settings/location/VivoLocationSettings;->addLocationPermission(Ljava/lang/String;II)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private updateLocationToggles(Z)V
    .locals 9
    .param p1, "forceRefresh"    # Z

    .prologue
    const/16 v8, 0x64

    .line 300
    const-string v4, "LocationSettings"

    const-string v5, "updateLocationToggles"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 302
    .local v2, "res":Landroid/content/ContentResolver;
    const-string v4, "gps"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 303
    .local v0, "gpsEnabled":Z
    const-string v4, "network"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 304
    .local v1, "networkEnabled":Z
    iget-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    iget-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 306
    invoke-direct {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->updatePicUseGps()V

    .line 308
    const/4 v3, 0x0

    .line 309
    .local v3, "updatePermission":Z
    if-eqz p1, :cond_0

    .line 310
    const/4 v3, 0x1

    .line 311
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 312
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 313
    const/4 v3, 0x1

    .line 321
    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 322
    iget-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    iget-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateUIHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x32

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 328
    :cond_2
    invoke-direct {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->onLocationModeChanged()V

    .line 329
    return-void

    .line 316
    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_1

    .line 317
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updatePicUseGps()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 338
    :goto_0
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bbk_pic_use_gps"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    return-void

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 336
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bbk_pic_use_gps"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 338
    goto :goto_1
.end method

.method private valueToIndexConvert(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 342
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "str_value":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/vivo/settings/location/VivoLocationSettings;->PERMISSION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 344
    sget-object v2, Lcom/vivo/settings/location/VivoLocationSettings;->PERMISSION:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 343
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 348
    :cond_1
    const-string v2, "LocationSettings"

    const-string v3, "convert fail !"

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 233
    :goto_0
    return-object v0

    .line 210
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0860

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b085f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0934

    new-instance v3, Lcom/vivo/settings/location/VivoLocationSettings$5;

    invoke-direct {v3, p0}, Lcom/vivo/settings/location/VivoLocationSettings$5;-><init>(Lcom/vivo/settings/location/VivoLocationSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0935

    new-instance v3, Lcom/vivo/settings/location/VivoLocationSettings$4;

    invoke-direct {v3, p0}, Lcom/vivo/settings/location/VivoLocationSettings$4;-><init>(Lcom/vivo/settings/location/VivoLocationSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 230
    invoke-direct {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->updatePicUseGps()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationToggles:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 202
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 457
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    const-string v2, "LocationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange but with a null preference key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v5

    .line 462
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const-string v2, "LocationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :try_start_0
    iget-object v2, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mVivoPermissionManager:Lcom/vivo/services/security/client/VivoPermissionManager;

    const/16 v3, 0xc

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/vivo/services/security/client/VivoPermissionManager;->setAppPermission(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LocationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set app permission exp "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 239
    const-string v6, "LocationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preference pressed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_1

    .line 241
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 242
    const-string v6, "LocationSettings"

    const-string v7, "showDialog(CONFIRM_NETWORK_DIALOG_ID); "

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0, v5}, Lcom/vivo/settings/location/VivoLocationSettings;->removeDialog(I)V

    .line 244
    invoke-virtual {p0, v5}, Lcom/vivo/settings/location/VivoLocationSettings;->showDialog(I)V

    .line 245
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 249
    :goto_0
    invoke-direct {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->updatePicUseGps()V

    .line 289
    :goto_1
    return v5

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "network"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_3

    .line 252
    iget-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 254
    .local v2, "enabled":Z
    const-string v4, "LocationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gps location set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-eqz v2, :cond_2

    .line 256
    const-string v4, "LocationSettings"

    const-string v6, "action.LocationManagerService.notifyDialog"

    invoke-static {v4, v6}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "action.LocationManagerService.notifyDialog.app"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "gps"

    iget-object v7, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 262
    invoke-direct {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->updatePicUseGps()V

    .line 263
    invoke-direct {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->onLocationModeChanged()V

    goto :goto_1

    .line 265
    .end local v2    # "enabled":Z
    :cond_3
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_5

    .line 266
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPicUseGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 267
    .local v0, "checked":Z
    const-string v6, "LocationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pic use gps set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bbk_pic_use_gps"

    if-eqz v0, :cond_4

    move v4, v5

    :cond_4
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 271
    .end local v0    # "checked":Z
    :cond_5
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAutoTimeGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_7

    .line 272
    iget-object v6, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAutoTimeGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 273
    .restart local v0    # "checked":Z
    const-string v6, "LocationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "auto time gps set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "auto_time_gps"

    if-eqz v0, :cond_6

    move v4, v5

    :cond_6
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 277
    .end local v0    # "checked":Z
    :cond_7
    iget-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mAgpsSettingsScreen:Landroid/preference/Preference;

    if-ne p2, v4, :cond_8

    .line 278
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vivo.settings.action_agps_setting_enter"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .restart local v3    # "intent":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/vivo/settings/location/VivoLocationSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "LocationSettings"

    const-string v6, "no agps_settings  -----------"

    invoke-static {v4, v6, v1}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_8
    instance-of v4, p2, Lcom/vivo/settings/preference/VivoLocationPermission;

    if-eqz v4, :cond_9

    move-object v4, p2

    .line 287
    check-cast v4, Lcom/vivo/settings/preference/VivoLocationPermission;

    iput-object v4, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mClickPoint:Lcom/vivo/settings/preference/VivoLocationPermission;

    .line 289
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 166
    const-string v0, "LocationSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mClickPoint:Lcom/vivo/settings/preference/VivoLocationPermission;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mClickPoint:Lcom/vivo/settings/preference/VivoLocationPermission;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/VivoLocationPermission;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mClickPoint:Lcom/vivo/settings/preference/VivoLocationPermission;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/VivoLocationPermission;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mClickPoint:Lcom/vivo/settings/preference/VivoLocationPermission;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/VivoLocationPermission;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 172
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 173
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationToggles:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationTogglesEx:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mUpdateLocationToggles:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_2

    .line 180
    new-instance v0, Lcom/vivo/settings/location/VivoLocationSettings$3;

    invoke-direct {v0, p0}, Lcom/vivo/settings/location/VivoLocationSettings$3;-><init>(Lcom/vivo/settings/location/VivoLocationSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mLocationPermission:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 191
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mLocationPermission:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mPermissionDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    .line 137
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onStart()V

    .line 138
    const-string v0, "LocationSettings"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/settings/location/VivoLocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "location_providers_allowed"

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 144
    .local v7, "settingsCursor":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v7    # "settingsCursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v6

    .line 146
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "LocationSettings"

    const-string v1, "onStart Exception:"

    invoke-static {v0, v1, v6}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "LocationSettings"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 160
    :cond_1
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onStop()V

    .line 161
    return-void
.end method
