.class public Lcom/android/settings/UsageAccessSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "UsageAccessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;,
        Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;,
        Lcom/android/settings/UsageAccessSettings$PackageEntry;
    }
.end annotation


# static fields
.field private static final APP_OPS_OP_CODES:[I

.field private static final PM_USAGE_STATS_PERMISSION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "UsageAccessSettings"


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field private mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

.field mPackageEntryMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/UsageAccessSettings$PackageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field mPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/UsageAccessSettings;->PM_USAGE_STATS_PERMISSION:[Ljava/lang/String;

    .line 57
    new-array v0, v3, [I

    const/16 v1, 0x2b

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/UsageAccessSettings;->APP_OPS_OP_CODES:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 249
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    .line 352
    new-instance v0, Lcom/android/settings/UsageAccessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/UsageAccessSettings$1;-><init>(Lcom/android/settings/UsageAccessSettings;)V

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 364
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/UsageAccessSettings;->PM_USAGE_STATS_PERMISSION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/settings/UsageAccessSettings;->APP_OPS_OP_CODES:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/UsageAccessSettings;Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;)Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UsageAccessSettings;
    .param p1, "x1"    # Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/UsageAccessSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UsageAccessSettings;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/UsageAccessSettings;->updateInterestedApps()V

    return-void
.end method

.method static shouldIgnorePackage(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInterestedApps()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->cancel(Z)Z

    .line 292
    :cond_0
    new-instance v0, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;-><init>(Lcom/android/settings/UsageAccessSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    .line 293
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 294
    return-void
.end method


# virtual methods
.method allowAccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    .line 343
    .local v0, "entry":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    if-nez v0, :cond_0

    .line 344
    const-string v1, "UsageAccessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to give access to package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": it does not exist."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/UsageAccessSettings;->setNewMode(Lcom/android/settings/UsageAccessSettings$PackageEntry;I)V

    .line 349
    iget-object v1, v0, Lcom/android/settings/UsageAccessSettings$PackageEntry;->preference:Lcom/vivo/settings/AsyncCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vivo/settings/AsyncCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->showBBKBackButton()V

    .line 258
    const v0, 0x7f06004a

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageAccessSettings;->addPreferencesFromResource(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 260
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 261
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/android/settings/UsageAccessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 262
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 277
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;->cancel(Z)Z

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mLastFetcherTask:Lcom/android/settings/UsageAccessSettings$AppsRequestingAccessFetcher;

    .line 281
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/UsageAccessSettings;->mPackageEntryMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;

    .line 300
    .local v3, "pe":Lcom/android/settings/UsageAccessSettings$PackageEntry;
    if-nez v3, :cond_0

    .line 301
    const-string v6, "UsageAccessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preference change event for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but that package is no longer valid."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v5

    .line 306
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    instance-of v7, p2, Ljava/lang/Boolean;

    if-nez v7, :cond_1

    .line 307
    const-string v6, "UsageAccessSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preference change event for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " had non boolean value of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 312
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    move v1, v5

    .line 316
    .local v1, "newMode":I
    :goto_1
    iget v7, v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;->appOpMode:I

    if-eq v7, v1, :cond_5

    .line 317
    if-eqz v1, :cond_3

    .line 319
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/UsageAccessSettings;->setNewMode(Lcom/android/settings/UsageAccessSettings$PackageEntry;I)V

    move v5, v6

    .line 320
    goto :goto_0

    .end local v1    # "newMode":I
    :cond_2
    move v1, v6

    .line 312
    goto :goto_1

    .line 324
    .restart local v1    # "newMode":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 325
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "warning"

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    .line 326
    .local v4, "prev":Landroid/app/Fragment;
    if-eqz v4, :cond_4

    .line 327
    invoke-virtual {v0, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 329
    :cond_4
    iget-object v6, v3, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;

    move-result-object v6

    const-string v7, "warning"

    invoke-virtual {v6, v0, v7}, Lcom/android/settings/UsageAccessSettings$WarningDialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v4    # "prev":Landroid/app/Fragment;
    :cond_5
    move v5, v6

    .line 332
    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 266
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 268
    invoke-direct {p0}, Lcom/android/settings/UsageAccessSettings;->updateInterestedApps()V

    .line 269
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/UsageAccessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 270
    return-void
.end method

.method setNewMode(Lcom/android/settings/UsageAccessSettings$PackageEntry;I)V
    .locals 4
    .param p1, "pe"    # Lcom/android/settings/UsageAccessSettings$PackageEntry;
    .param p2, "newMode"    # I

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings/UsageAccessSettings;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x2b

    iget-object v2, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 338
    iput p2, p1, Lcom/android/settings/UsageAccessSettings$PackageEntry;->appOpMode:I

    .line 339
    return-void
.end method
