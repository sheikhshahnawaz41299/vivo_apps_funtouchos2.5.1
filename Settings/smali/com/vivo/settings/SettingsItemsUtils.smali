.class public Lcom/vivo/settings/SettingsItemsUtils;
.super Ljava/lang/Object;
.source "SettingsItemsUtils.java"


# static fields
.field public static final DEFAULT_ORDER:I = 0xf4240

.field public static final EXTRA_RESOLVE_INFO:Ljava/lang/String; = "extra_resolve_info"

.field private static final General_SETTINGS_CATEGORY:Ljava/lang/String; = "vivo.intent.category.settings.GENERAL"

.field public static final META_DATA_ORDER:Ljava/lang/String; = "vivo.settings.order"

.field public static final SMART_SETTINGS_CATEGORY:Ljava/lang/String; = "vivo.intent.category.settings.MAIN"

.field private static final TAG:Ljava/lang/String; = "SettingsItemsUtils"

.field public static final VIVOICE_PACKAGENAME:Ljava/lang/String; = "com.bbk.VoiceAssistant"

.field private static sInstance:Lcom/vivo/settings/SettingsItemsUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGeneralIntent:Landroid/content/Intent;

.field private mLocker:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartIntent:Landroid/content/Intent;

.field private mStoredLanguage:Ljava/lang/String;

.field private mTitleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mVivoiceResolverInfo:Landroid/content/pm/ResolveInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mLocker:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mVivoiceResolverInfo:Landroid/content/pm/ResolveInfo;

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mTitleCache:Ljava/util/HashMap;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mSmartIntent:Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mSmartIntent:Landroid/content/Intent;

    const-string v1, "vivo.intent.category.settings.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/SettingsItemsUtils;->initData(I)V

    .line 50
    return-void
.end method

.method private buildTile(Landroid/content/pm/ResolveInfo;)Lcom/android/settings/dashboard/DashboardTile;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 89
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 90
    :try_start_0
    new-instance v1, Lcom/android/settings/dashboard/DashboardTile;

    invoke-direct {v1}, Lcom/android/settings/dashboard/DashboardTile;-><init>()V

    .line 91
    .local v1, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iput-object v0, v1, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    .line 95
    iget-object v2, v1, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 96
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    .line 98
    :cond_0
    iget-object v2, v1, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v4, "extra_resolve_info"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "vivo.settings.order"

    const v5, 0xf4240

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/settings/dashboard/DashboardTile;->order:I

    .line 102
    :cond_1
    monitor-exit v3

    return-object v1

    .line 103
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/settings/SettingsItemsUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/vivo/settings/SettingsItemsUtils;->sInstance:Lcom/vivo/settings/SettingsItemsUtils;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/vivo/settings/SettingsItemsUtils;

    invoke-direct {v0, p0}, Lcom/vivo/settings/SettingsItemsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/settings/SettingsItemsUtils;->sInstance:Lcom/vivo/settings/SettingsItemsUtils;

    .line 56
    :cond_0
    sget-object v0, Lcom/vivo/settings/SettingsItemsUtils;->sInstance:Lcom/vivo/settings/SettingsItemsUtils;

    return-object v0
.end method

.method private getKey(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 212
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 213
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 214
    .local v0, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initOtherPrefsData()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mGeneralIntent:Landroid/content/Intent;

    .line 132
    iget-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mGeneralIntent:Landroid/content/Intent;

    const-string v1, "vivo.intent.category.settings.GENERAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/vivo/settings/SettingsItemsUtils;->mGeneralIntent:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mResolveInfos:Ljava/util/List;

    .line 135
    iget-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mVivoiceResolverInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mResolveInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/vivo/settings/SettingsItemsUtils;->mVivoiceResolverInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mResolveInfos:Ljava/util/List;

    iget-object v1, p0, Lcom/vivo/settings/SettingsItemsUtils;->mVivoiceResolverInfo:Landroid/content/pm/ResolveInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    return-void
.end method

.method private loadPackageIconInner(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 178
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 179
    const-string v4, "."

    const-string v5, "_"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v4, p0, Lcom/vivo/settings/SettingsItemsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/vivo/settings/SettingsItemsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 184
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 186
    :try_start_0
    iget-object v4, p0, Lcom/vivo/settings/SettingsItemsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 191
    .end local v2    # "resId":I
    :cond_0
    :goto_0
    return-object v3

    .line 187
    .restart local v2    # "resId":I
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "SettingsItemsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getGeneralPrefExtra()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/SettingsItemsUtils;->initData(I)V

    .line 159
    invoke-direct {p0}, Lcom/vivo/settings/SettingsItemsUtils;->initOtherPrefsData()V

    .line 160
    iget-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mResolveInfos:Ljava/util/List;

    return-object v0
.end method

.method public inertAndSort(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    iget-object v8, p0, Lcom/vivo/settings/SettingsItemsUtils;->mResolveInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 108
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3}, Lcom/vivo/settings/SettingsItemsUtils;->buildTile(Landroid/content/pm/ResolveInfo;)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v7

    .line 109
    .local v7, "tile":Lcom/android/settings/dashboard/DashboardTile;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    .line 110
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 111
    .local v0, "category":Lcom/android/settings/dashboard/DashboardCategory;
    iget v8, v7, Lcom/android/settings/dashboard/DashboardTile;->order:I

    iget v9, v0, Lcom/android/settings/dashboard/DashboardCategory;->order:I

    if-gt v8, v9, :cond_1

    if-nez v1, :cond_4

    .line 112
    :cond_1
    const/4 v4, 0x0

    .line 113
    .local v4, "inserted":Z
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    .local v5, "j":I
    :goto_2
    if-ltz v5, :cond_2

    .line 114
    invoke-virtual {v0, v5}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v6

    .line 115
    .local v6, "t":Lcom/android/settings/dashboard/DashboardTile;
    iget v8, v7, Lcom/android/settings/dashboard/DashboardTile;->order:I

    iget v9, v6, Lcom/android/settings/dashboard/DashboardTile;->order:I

    if-lt v8, v9, :cond_3

    .line 116
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v0, v8, v7}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(ILcom/android/settings/dashboard/DashboardTile;)V

    .line 117
    const/4 v4, 0x1

    .line 121
    .end local v6    # "t":Lcom/android/settings/dashboard/DashboardTile;
    :cond_2
    if-nez v4, :cond_0

    .line 122
    const/4 v8, 0x0

    invoke-virtual {v0, v8, v7}, Lcom/android/settings/dashboard/DashboardCategory;->addTile(ILcom/android/settings/dashboard/DashboardTile;)V

    goto :goto_0

    .line 113
    .restart local v6    # "t":Lcom/android/settings/dashboard/DashboardTile;
    :cond_3
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 109
    .end local v4    # "inserted":Z
    .end local v5    # "j":I
    .end local v6    # "t":Lcom/android/settings/dashboard/DashboardTile;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 128
    .end local v0    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v1    # "i":I
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v7    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_5
    return-void
.end method

.method public initData(I)V
    .locals 7
    .param p1, "level"    # I

    .prologue
    .line 65
    iget-object v4, p0, Lcom/vivo/settings/SettingsItemsUtils;->mTitleCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 67
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "currentLanguage":Ljava/lang/String;
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mStoredLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mTitleCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 70
    const-string v3, "SettingsItemsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTitleCache.clear, currentLanguage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mStoredLanguage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/settings/SettingsItemsUtils;->mStoredLanguage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object v0, p0, Lcom/vivo/settings/SettingsItemsUtils;->mStoredLanguage:Ljava/lang/String;

    .line 73
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v4, p0, Lcom/vivo/settings/SettingsItemsUtils;->mLocker:Ljava/lang/Object;

    monitor-enter v4

    .line 75
    :try_start_1
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/vivo/settings/SettingsItemsUtils;->mSmartIntent:Landroid/content/Intent;

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mResolveInfos:Ljava/util/List;

    .line 77
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mResolveInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 78
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.bbk.VoiceAssistant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    iput-object v2, p0, Lcom/vivo/settings/SettingsItemsUtils;->mVivoiceResolverInfo:Landroid/content/pm/ResolveInfo;

    .line 80
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mVivoiceResolverInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "vivo.settings.order"

    const/16 v6, 0xc8

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mResolveInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 85
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    return-void

    .line 73
    .end local v0    # "currentLanguage":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 85
    .restart local v0    # "currentLanguage":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public insertOtherPrefs(Landroid/preference/PreferenceScreen;)V
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/vivo/settings/SettingsItemsUtils;->getGeneralPrefExtra()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 142
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/preference/PreferenceScreen;

    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 143
    .local v4, "pref":Landroid/preference/Preference;
    const v3, 0xf4240

    .line 144
    .local v3, "order":I
    if-eqz v1, :cond_0

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 145
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "vivo.settings.order"

    const v8, 0xf4240

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 147
    :cond_0
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 148
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 149
    .local v2, "intent":Landroid/content/Intent;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 151
    iget-object v6, p0, Lcom/vivo/settings/SettingsItemsUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 152
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 155
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "order":I
    .end local v4    # "pref":Landroid/preference/Preference;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public loadIcon(Lcom/android/settings/dashboard/DashboardTile;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 164
    iget-object v2, p1, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v3, "extra_resolve_info"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 165
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, v1}, Lcom/vivo/settings/SettingsItemsUtils;->loadPackageIconInner(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    if-nez v0, :cond_0

    .line 169
    iget-object v2, p0, Lcom/vivo/settings/SettingsItemsUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 173
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTitle(Lcom/android/settings/dashboard/DashboardTile;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 196
    iget-object v3, p1, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v4, "extra_resolve_info"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 197
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0, v0}, Lcom/vivo/settings/SettingsItemsUtils;->getKey(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/vivo/settings/SettingsItemsUtils;->mTitleCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 200
    :try_start_0
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mTitleCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mTitleCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    monitor-exit v4

    .line 208
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 203
    .restart local v1    # "key":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 204
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/vivo/settings/SettingsItemsUtils;->mTitleCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    monitor-exit v4

    move-object v3, v2

    goto :goto_0

    .line 206
    .end local v2    # "title":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 208
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
