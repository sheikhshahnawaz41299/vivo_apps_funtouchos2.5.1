.class public Lcom/android/settings/notification/AppNotificationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppNotificationSettings.java"


# static fields
.field private static final DEBUG:Z

.field static final EXTRA_HAS_SETTINGS_INTENT:Ljava/lang/String; = "has_settings_intent"

.field static final EXTRA_SETTINGS_INTENT:Ljava/lang/String; = "settings_intent"

.field private static final KEY_BLOCK:Ljava/lang/String; = "block"

.field private static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final KEY_SENSITIVE:Ljava/lang/String; = "sensitive"

.field private static final TAG:Ljava/lang/String; = "AppNotificationSettings"


# instance fields
.field private mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

.field private final mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

.field private mBlock:Landroid/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mPriority:Landroid/preference/SwitchPreference;

.field private mSensitive:Landroid/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "AppNotificationSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/AppNotificationSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/android/settings/notification/NotificationAppList$Backend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/AppNotificationSettings;)Lcom/android/settings/notification/NotificationAppList$AppRow;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/AppNotificationSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/AppNotificationSettings;)Lcom/android/settings/notification/NotificationAppList$Backend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/AppNotificationSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

    return-object v0
.end method

.method private static findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 214
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 216
    array-length v0, v4

    .line 217
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 218
    aget-object v3, v4, v2

    .line 219
    .local v3, "p":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    const/16 v5, 0x40

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 228
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 222
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "p":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "AppNotificationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "p":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenNotificationsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_show_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private toastAndFinish()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0381

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 211
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 70
    sget-boolean v6, Lcom/android/settings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "AppNotificationSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityCreated mCreated="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/notification/AppNotificationSettings;->mCreated:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-boolean v6, p0, Lcom/android/settings/notification/AppNotificationSettings;->mCreated:Z

    if-eqz v6, :cond_2

    .line 72
    const-string v6, "AppNotificationSettings"

    const-string v7, "onActivityCreated: ignoring duplicate call"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    iput-boolean v10, p0, Lcom/android/settings/notification/AppNotificationSettings;->mCreated:Z

    .line 76
    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    if-eqz v6, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e020b

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 78
    .local v4, "content":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 79
    .local v5, "contentParent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040008

    invoke-virtual {v6, v7, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 82
    .local v3, "bar":Landroid/view/View;
    const v6, 0x7f0e0013

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, "appIcon":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    iget-object v6, v6, Lcom/android/settings/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    const v6, 0x7f0e0014

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 86
    .local v1, "appName":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    iget-object v6, v6, Lcom/android/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v6, 0x7f0e0015

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "appSettings":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    iget-object v6, v6, Lcom/android/settings/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-nez v6, :cond_3

    .line 90
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_1
    invoke-virtual {v5, v3, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {v2, v10}, Landroid/view/View;->setClickable(Z)V

    .line 93
    new-instance v6, Lcom/android/settings/notification/AppNotificationSettings$1;

    invoke-direct {v6, p0}, Lcom/android/settings/notification/AppNotificationSettings$1;-><init>(Lcom/android/settings/notification/AppNotificationSettings;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, -0x1

    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mContext:Landroid/content/Context;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 108
    .local v3, "intent":Landroid/content/Intent;
    sget-boolean v9, Lcom/android/settings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "AppNotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onCreate getIntent()="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    if-nez v3, :cond_2

    .line 110
    const-string v9, "AppNotificationSettings"

    const-string v10, "No intent"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->toastAndFinish()V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    const-string v9, "app_uid"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 116
    .local v8, "uid":I
    const-string v9, "app_package"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "pkg":Ljava/lang/String;
    if-eq v8, v12, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 118
    :cond_3
    const-string v9, "AppNotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Missing extras: app_package was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "app_uid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->toastAndFinish()V

    goto :goto_0

    .line 124
    :cond_4
    sget-boolean v9, Lcom/android/settings/notification/AppNotificationSettings;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "AppNotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Load details for pkg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 126
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {v5, v4, v8}, Lcom/android/settings/notification/AppNotificationSettings;->findPackageInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 127
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_6

    .line 128
    const-string v9, "AppNotificationSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to find package info: app_package was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "app_uid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " was "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->toastAndFinish()V

    goto/16 :goto_0

    .line 134
    :cond_6
    const v9, 0x7f060007

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/AppNotificationSettings;->addPreferencesFromResource(I)V

    .line 135
    const-string v9, "block"

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    .line 136
    const-string v9, "priority"

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    .line 137
    const-string v9, "sensitive"

    invoke-virtual {p0, v9}, Lcom/android/settings/notification/AppNotificationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    .line 139
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v7

    .line 140
    .local v7, "secure":Z
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getLockscreenNotificationsEnabled()Z

    move-result v1

    .line 141
    .local v1, "enabled":Z
    invoke-direct {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getLockscreenAllowPrivateNotifications()Z

    move-result v0

    .line 142
    .local v0, "allowPrivate":Z
    if-eqz v7, :cond_7

    if-eqz v1, :cond_7

    if-nez v0, :cond_8

    .line 143
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    :cond_8
    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBackend:Lcom/android/settings/notification/NotificationAppList$Backend;

    invoke-static {v5, v9, v10}, Lcom/android/settings/notification/NotificationAppList;->loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings/notification/NotificationAppList$Backend;)Lcom/android/settings/notification/NotificationAppList$AppRow;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    .line 147
    const-string v9, "has_settings_intent"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 149
    const-string v9, "has_settings_intent"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 150
    iget-object v10, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    const-string v9, "settings_intent"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    iput-object v9, v10, Lcom/android/settings/notification/NotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    .line 159
    :cond_9
    :goto_1
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    iget-boolean v10, v10, Lcom/android/settings/notification/NotificationAppList$AppRow;->banned:Z

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 160
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    iget-boolean v10, v10, Lcom/android/settings/notification/NotificationAppList$AppRow;->priority:Z

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 161
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_a

    .line 162
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    iget-object v10, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    iget-boolean v10, v10, Lcom/android/settings/notification/NotificationAppList$AppRow;->sensitive:Z

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 165
    :cond_a
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/settings/notification/AppNotificationSettings$2;

    invoke-direct {v10, p0, v4, v8}, Lcom/android/settings/notification/AppNotificationSettings$2;-><init>(Lcom/android/settings/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/settings/notification/AppNotificationSettings$3;

    invoke-direct {v10, p0, v4, v8}, Lcom/android/settings/notification/AppNotificationSettings$3;-><init>(Lcom/android/settings/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_b

    .line 182
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mSensitive:Landroid/preference/SwitchPreference;

    new-instance v10, Lcom/android/settings/notification/AppNotificationSettings$4;

    invoke-direct {v10, p0, v4, v8}, Lcom/android/settings/notification/AppNotificationSettings$4;-><init>(Lcom/android/settings/notification/AppNotificationSettings;Ljava/lang/String;I)V

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 192
    :cond_b
    invoke-static {v5, v2}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/notification/AppNotificationSettings;->mBlock:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 194
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mPriority:Landroid/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_c
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 155
    .local v6, "rows":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/settings/notification/NotificationAppList$AppRow;>;"
    iget-object v9, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    iget-object v9, v9, Lcom/android/settings/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/notification/AppNotificationSettings;->mAppRow:Lcom/android/settings/notification/NotificationAppList$AppRow;

    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/notification/AppNotificationSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/android/settings/notification/NotificationAppList;->collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V

    goto :goto_1
.end method
