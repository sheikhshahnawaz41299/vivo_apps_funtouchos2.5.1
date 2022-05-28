.class public Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;
.super Ljava/lang/Object;
.source "SmartMultiWindowUtils.java"


# static fields
.field public static final ACTION_LOAD_WHITELIST_TO_DATABASE:Ljava/lang/String; = "com.android.action.loadwhitelisttodatabase"

.field private static final AUTHORITY_APPSCONFIGS:Ljava/lang/String; = "com.vivo.smartmultiwindow"

.field private static final CONTENT_APPSCONFIGS_URI:Landroid/net/Uri;

.field private static final ENABLE:Ljava/lang/String; = "enable"

.field private static final PKGNAME:Ljava/lang/String; = "pkg"

.field private static final SMARTMULTIWINDOW_IS_ALLOWED_SPLIT_KEY:Ljava/lang/String; = "vivo_smartmulitwindow_is_allowed_split"

.field private static final SMARTMULTIWINDOW_MODE_KEY:Ljava/lang/String; = "floatmode"

.field private static final TABLE_APPSCONFIGS:Ljava/lang/String; = "appsconfig"

.field private static final TAG:Ljava/lang/String; = "SmartMultiWindowUtils"

.field private static final TYPE:Ljava/lang/String; = "type"

.field private static sInstance:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;


# instance fields
.field mAppConfigList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFullscreenFlag:Z

.field private mMainSwitch:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSmartMultiWindowConfigObserver:Landroid/database/ContentObserver;

.field private final mSmartMultiWindowMainConfigObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    .line 24
    const-string v0, "content://com.vivo.smartmultiwindow/appsconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->CONTENT_APPSCONFIGS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    .line 32
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mFullscreenFlag:Z

    .line 33
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mMainSwitch:Z

    .line 58
    new-instance v1, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$1;-><init>(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    new-instance v1, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;-><init>(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mSmartMultiWindowMainConfigObserver:Landroid/database/ContentObserver;

    .line 111
    new-instance v1, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$3;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$3;-><init>(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mSmartMultiWindowConfigObserver:Landroid/database/ContentObserver;

    .line 36
    const-string v1, "SmartMultiWindowUtils"

    const-string v2, "SmartMultiWindowUtils"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mContext:Landroid/content/Context;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.vivo.smartmultiwindow.audosplit"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mSmartMultiWindowMainConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 40
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.vivo.smartmultiwindow.appconfig"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mSmartMultiWindowConfigObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.android.action.loadwhitelisttodatabase"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mMainSwitch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mMainSwitch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->loadSmartMultiWindowConfig()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    .line 55
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    return-object v0
.end method

.method private initMainSwitch()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.vivo.smartmultiwindow.audosplit"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 89
    .local v0, "config":I
    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mMainSwitch:Z

    .line 90
    const-string v1, "SmartMultiWindowUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initMainSwitch, main switch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mMainSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "config":I
    :goto_1
    return-void

    .restart local v0    # "config":I
    :cond_0
    move v1, v2

    .line 89
    goto :goto_0

    .line 91
    .end local v0    # "config":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private isForbid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 195
    const-string v1, "com.android.mms.service"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string p1, "com.android.mms"

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 200
    .local v0, "forbid":Z
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mMainSwitch:Z

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 203
    const-string v1, "SmartMultiWindowUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isForbid(), pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", forbidNotification = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1
    return v0
.end method

.method private isSmartMutiWindow()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "floatmode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 152
    .local v1, "smartMutiWindow":I
    const/4 v3, 0x2

    if-ne v3, v1, :cond_0

    const/4 v2, 0x1

    .line 154
    .end local v1    # "smartMutiWindow":I
    :cond_0
    :goto_0
    return v2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isSpecificFullScreen()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 142
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vivo_smartmulitwindow_is_allowed_split"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 143
    .local v0, "allowsplit":I
    if-ne v2, v0, :cond_0

    .line 145
    .end local v0    # "allowsplit":I
    :goto_0
    return v2

    .restart local v0    # "allowsplit":I
    :cond_0
    move v2, v3

    .line 143
    goto :goto_0

    .line 144
    .end local v0    # "allowsplit":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    move v2, v3

    .line 145
    goto :goto_0
.end method

.method private declared-synchronized loadSmartMultiWindowConfig()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 160
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 161
    const-string v2, "SmartMultiWindowUtils"

    const-string v3, "loadSmartMultiWindowConfig"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 192
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 166
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 170
    sget-object v1, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->CONTENT_APPSCONFIGS_URI:Landroid/net/Uri;

    .line 171
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "SmartMultiWindowUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    const/4 v6, 0x0

    .line 174
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 177
    const-string v2, "pkg"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "pkg":Ljava/lang/String;
    const-string v2, "enable"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 179
    .local v8, "enable":I
    const-string v2, "type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 180
    .local v10, "type":I
    const-string v2, "SmartMultiWindowUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    if-ne v10, v11, :cond_3

    if-ne v8, v11, :cond_3

    move v2, v11

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 183
    .end local v8    # "enable":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "type":I
    :catch_0
    move-exception v7

    .line 184
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "SmartMultiWindowUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    if-eqz v6, :cond_2

    .line 188
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 191
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    const-string v2, "SmartMultiWindowUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAppConfigList size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 160
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 181
    .restart local v0    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "enable":I
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v10    # "type":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 187
    .end local v8    # "enable":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "type":I
    :cond_4
    if-eqz v6, :cond_2

    .line 188
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 187
    :catchall_1
    move-exception v2

    if-eqz v6, :cond_5

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public init()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->loadSmartMultiWindowConfig()V

    .line 70
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->initMainSwitch()V

    .line 71
    return-void
.end method

.method public isForbidByMultiWindow(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->isForbid(Ljava/lang/String;)Z

    move-result v0

    .line 76
    .local v0, "isForbidBySmartMultiWindow":Z
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->isSpecificFullScreen()Z

    move-result v2

    .line 77
    .local v2, "isSpecificFullScreen":Z
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->isSmartMutiWindow()Z

    move-result v1

    .line 78
    .local v1, "isSmartMutiWindow":Z
    const-string v4, "SmartMultiWindowUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isForbidBySmartMultiWindow = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSpecificFullScreen = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSmartMutiWindow "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 82
    .local v3, "isforbid":Z
    :goto_0
    return v3

    .line 81
    .end local v3    # "isforbid":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
