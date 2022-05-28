.class public final Lcom/android/settings/accounts/AuthenticatorHelper;
.super Landroid/content/BroadcastReceiver;
.source "AuthenticatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AuthenticatorHelper"


# instance fields
.field private mAccTypeIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private final mContext:Landroid/content/Context;

.field private mEnabledAccountTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

.field private mListeningToAccountUpdates:Z

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mUm:Landroid/os/UserManager;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/UserManager;Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "userManager"    # Landroid/os/UserManager;
    .param p4, "listener"    # Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    .line 62
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 76
    iput-object p1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUm:Landroid/os/UserManager;

    .line 78
    iput-object p2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    .line 79
    iput-object p4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mListener:Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 83
    return-void
.end method

.method private buildAccountTypeToAuthoritiesMap()V
    .locals 8

    .prologue
    .line 273
    iget-object v5, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 274
    iget-object v5, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-static {v5}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 276
    .local v4, "syncAdapters":[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v4

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 277
    aget-object v3, v4, v1

    .line 278
    .local v3, "sa":Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 279
    .local v0, "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .restart local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    const-string v5, "AuthenticatorHelper"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 284
    const-string v5, "AuthenticatorHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "authorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "sa":Landroid/content/SyncAdapterType;
    :cond_2
    return-void
.end method


# virtual methods
.method public containsAccountType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 1
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    return-object v0
.end method

.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 106
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v3

    .line 107
    .local v3, "mImageUtil":Lcom/vivo/content/ImageUtil;
    iget-object v5, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    monitor-enter v5

    .line 108
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    monitor-exit v5

    .line 133
    :goto_0
    return-object v4

    .line 111
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 115
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, "authContext":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_1

    .line 120
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->getImageUtilDrawable(Landroid/content/Context;Lcom/vivo/content/ImageUtil;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 122
    :cond_1
    iget-object v5, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    monitor-enter v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 123
    :try_start_2
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 129
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 131
    invoke-virtual {p0, p1, v3, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->getImageUtilDrawable(Landroid/content/Context;Lcom/vivo/content/ImageUtil;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_3
    move-object v4, v2

    .line 133
    goto :goto_0

    .line 111
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 124
    .restart local v0    # "authContext":Landroid/content/Context;
    .restart local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v4
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 125
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 126
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public getEnabledAccountTypes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getImageUtilDrawable(Landroid/content/Context;Lcom/vivo/content/ImageUtil;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageUtil"    # Lcom/vivo/content/ImageUtil;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 140
    .end local p3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object p3

    .restart local p3    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2, p3}, Lcom/vivo/content/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p3, v0

    goto :goto_0
.end method

.method public getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "label":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 153
    .local v1, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v4, v5, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 155
    .local v0, "authContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 162
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v1    # "desc":Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 156
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AuthenticatorHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 159
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "AuthenticatorHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label icon for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLabelIdForType(Ljava/lang/String;)I
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 187
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    iget v1, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 189
    .end local v0    # "desc":Landroid/accounts/AuthenticatorDescription;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPackageForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AuthenticatorDescription;

    .line 173
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    iget-object v1, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 175
    .end local v0    # "desc":Landroid/accounts/AuthenticatorDescription;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasAccountPreferences(Ljava/lang/String;)Z
    .locals 2
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .line 215
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v1, :cond_0

    .line 216
    const/4 v1, 0x1

    .line 219
    .end local v0    # "desc":Landroid/accounts/AuthenticatorDescription;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listenToAccountUpdates()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-boolean v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-nez v0, :cond_0

    .line 251
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 252
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    .line 259
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4
    .param p1, "accounts"    # [Landroid/accounts/Account;

    .prologue
    .line 223
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 224
    if-nez p1, :cond_0

    .line 225
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 228
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAccTypeIconCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 230
    aget-object v0, p1, v1

    .line 231
    .local v0, "account":Landroid/accounts/Account;
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mEnabledAccountTypes:Ljava/util/ArrayList;

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/accounts/AuthenticatorHelper;->buildAccountTypeToAuthoritiesMap()V

    .line 236
    iget-boolean v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mListener:Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;

    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-interface {v2, v3}, Lcom/android/settings/accounts/AuthenticatorHelper$OnAccountsUpdateListener;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 239
    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    .line 246
    .local v0, "accounts":[Landroid/accounts/Account;
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 247
    return-void
.end method

.method public preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v1, Lcom/android/settings/accounts/AuthenticatorHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/accounts/AuthenticatorHelper$1;-><init>(Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accounts/AuthenticatorHelper$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method public stopListeningToAccountUpdates()V
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mListeningToAccountUpdates:Z

    .line 266
    :cond_0
    return-void
.end method

.method public updateAuthDescriptions(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 197
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 199
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/AuthenticatorHelper;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method
