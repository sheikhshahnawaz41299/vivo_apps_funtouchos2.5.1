.class public abstract Lcom/android/settings/notification/ManagedServiceSettings;
.super Lcom/vivo/settings/VivoListFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ManagedServiceSettings$Config;,
        Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;,
        Lcom/android/settings/notification/ManagedServiceSettings$ViewHolder;,
        Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
    }
.end annotation


# static fields
.field private static final SHOW_PACKAGE_NAME:Z


# instance fields
.field private mCR:Landroid/content/ContentResolver;

.field private final mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private final mEnabledServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mListAdapter:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEnabledServices:Ljava/util/HashSet;

    .line 72
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ManagedServiceSettings$1;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 79
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ManagedServiceSettings$2;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ManagedServiceSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->updateList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ManagedServiceSettings;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEnabledServices:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ManagedServiceSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->saveEnabledServices()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/notification/ManagedServiceSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/pm/ServiceInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;
    .param p1, "x1"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->isServiceEnabled(Landroid/content/pm/ServiceInfo;)Z

    move-result v0

    return v0
.end method

.method protected static getEnabledServicesCount(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/Context;)I
    .locals 4
    .param p0, "config"    # Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "flat":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 214
    :goto_0
    return v2

    .line 213
    :cond_1
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "components":[Ljava/lang/String;
    array-length v2, v0

    goto :goto_0
.end method

.method private static getServices(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I
    .locals 10
    .param p0, "c"    # Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/notification/ManagedServiceSettings$Config;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")I"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Landroid/content/pm/ServiceInfo;>;"
    const/4 v5, 0x0

    .line 223
    .local v5, "services":I
    if-eqz p1, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 226
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 228
    .local v6, "user":I
    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x84

    invoke-virtual {p2, v7, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 233
    .local v3, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 234
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 235
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 237
    .local v2, "info":Landroid/content/pm/ServiceInfo;
    iget-object v7, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 238
    iget-object v7, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_2
    if-eqz v2, :cond_3

    const-string v7, "com.bbk.launcher2"

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "com.bbk.launcher2.NotificationCollectorListener"

    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 249
    :cond_3
    if-eqz p1, :cond_4

    .line 250
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 252
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 254
    .end local v2    # "info":Landroid/content/pm/ServiceInfo;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    return v5
.end method

.method protected static getServicesCount(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/pm/PackageManager;)I
    .locals 1
    .param p0, "c"    # Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->getServices(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private isServiceEnabled(Landroid/content/pm/ServiceInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 258
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private loadEnabledServices()V
    .locals 6

    .prologue
    .line 173
    iget-object v4, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 174
    iget-object v4, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mCR:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v5, v5, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "flat":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 178
    aget-object v4, v3, v2

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 179
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 180
    iget-object v4, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "names":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private saveEnabledServices()V
    .locals 6

    .prologue
    .line 187
    const/4 v2, 0x0

    .line 188
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 189
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 192
    :cond_0
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 196
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mCR:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v5, v3, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 199
    return-void

    .line 196
    :cond_2
    const-string v3, ""

    goto :goto_2
.end method

.method private updateList()V
    .locals 3

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->loadEnabledServices()V

    .line 204
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mListAdapter:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/ManagedServiceSettings;->getServices(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/widget/ArrayAdapter;Landroid/content/pm/PackageManager;)I

    .line 205
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mListAdapter:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    new-instance v1, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v1, v2}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->sort(Ljava/util/Comparator;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mListAdapter:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    return-void
.end method


# virtual methods
.method protected abstract getConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mCR:Landroid/content/ContentResolver;

    .line 134
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mListAdapter:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    .line 135
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    const v2, 0x7f040078

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, "v":Landroid/view/View;
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 142
    .local v0, "empty":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget v2, v2, Lcom/android/settings/notification/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 143
    return-object v1
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 264
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mListAdapter:Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/settings/notification/ManagedServiceSettings$ServiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 265
    .local v1, "info":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEnabledServices:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 269
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->saveEnabledServices()V

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v2, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    iget-object v3, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onPause()V

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mCR:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 170
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 148
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onResume()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->updateList()V

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mCR:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget-object v2, v2, Lcom/android/settings/notification/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    return-void
.end method
