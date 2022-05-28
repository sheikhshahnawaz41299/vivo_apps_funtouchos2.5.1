.class public Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;
.super Ljava/lang/Object;
.source "WhiteListHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.iqoo.secure.provider.secureprovider"

.field private static final HAS_SELECTED_NOT_KILL:I = 0x1

.field private static final PKGNAME:Ljava/lang/String; = "pkgname"

.field private static final PRONAME:Ljava/lang/String; = "proname"

.field private static final PROTECTED_FORAPP_CONTENT_URI:Landroid/net/Uri;

.field private static final SPEED_UP_WHITE_LIST_CONTENT_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "WhiteListHelper"

.field private static sInstance:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;


# instance fields
.field private final BG_STARTUP_CONTENT_URI:Landroid/net/Uri;

.field private final HIDE_APP_CONTENT_URI:Landroid/net/Uri;

.field private mAllowBgStartApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBgStartAppsListContentObserver:Landroid/database/ContentObserver;

.field private mCallback:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mHideAppListAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideAppListContentObserver:Landroid/database/ContentObserver;

.field private mIsForegroundAppProtetced:Z

.field private mSavedWhiteListAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteListObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "content://com.iqoo.secure.provider.secureprovider/speedupwhitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->SPEED_UP_WHITE_LIST_CONTENT_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "content://com.iqoo.secure.provider.secureprovider/forgroundappselected"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->PROTECTED_FORAPP_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "content://com.android.settings.applications.hideappprovider/hideapps_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->HIDE_APP_CONTENT_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://com.iqoo.secure.provider.secureprovider/forbidbgstartappslist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->BG_STARTUP_CONTENT_URI:Landroid/net/Uri;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mAllowBgStartApps:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$1;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mWhiteListObserver:Landroid/database/ContentObserver;

    .line 72
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$2;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mHideAppListContentObserver:Landroid/database/ContentObserver;

    .line 86
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$3;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mBgStartAppsListContentObserver:Landroid/database/ContentObserver;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->initDatas()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->updateWhiteList(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mIsForegroundAppProtetced:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->BG_STARTUP_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mIsForegroundAppProtetced:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mBgStartAppsListContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->deleteFromSpeedUpWhiteListByPkgName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->insertToSpeedUpWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->isForegroundAppProtectedTurnOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->getHideAppListName()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->getBgStartAppsListName()V

    return-void
.end method

.method static synthetic access$600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->SPEED_UP_WHITE_LIST_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mWhiteListObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->HIDE_APP_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mHideAppListContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private deleteFromSpeedUpWhiteListByPkgName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 232
    .local v0, "deleteRet":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 233
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->SPEED_UP_WHITE_LIST_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "pkgname=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 240
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    const-string v3, "WhiteListHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " delete by pkg name in speed up white list ret is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return v0

    .line 236
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WhiteListHelper"

    const-string v4, "deleteFromSpeedUpWhiteListByPkgName IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBgStartAppsListName()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->BG_STARTUP_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "pkgname"

    aput-object v5, v3, v0

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->queryDatabase(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mAllowBgStartApps:Ljava/util/ArrayList;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mAllowBgStartApps:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 150
    const-string v0, "WhiteListHelper"

    const-string v1, "allowBgStartApps is null"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mAllowBgStartApps:Ljava/util/ArrayList;

    .line 153
    :cond_0
    return-void
.end method

.method private getHideAppListName()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->getVisitHideApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mHideAppListAppsName:Ljava/util/ArrayList;

    .line 316
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mHideAppListAppsName:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mHideAppListAppsName:Ljava/util/ArrayList;

    .line 319
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->sInstance:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->sInstance:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    .line 43
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->sInstance:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    return-object v0
.end method

.method private getVisitHideApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 330
    .local v8, "hideApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 332
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->HIDE_APP_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "pkgname"

    aput-object v4, v2, v3

    const-string v3, "hided=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    if-eqz v6, :cond_1

    .line 337
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 339
    .local v9, "pkgName":Ljava/lang/String;
    const-string v0, "WhiteListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide pkg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 343
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 344
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WhiteListHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVisitHideApps error msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    if-eqz v6, :cond_0

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object v8

    .line 347
    :cond_1
    if-eqz v6, :cond_0

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 347
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private initDatas()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$4;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method private insertToSpeedUpWhiteList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "proName"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    .line 245
    const/4 v3, 0x0

    .line 247
    .local v3, "success":Z
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 248
    .local v4, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 249
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v5, "pkgname"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v5, "proname"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v5, "app_type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 252
    sget-object v5, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->SPEED_UP_WHITE_LIST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 253
    .local v2, "result":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 254
    const/4 v3, 0x1

    .line 260
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "result":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    const-string v5, "WhiteListHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert pkgName is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and result is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return v3

    .line 256
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "WhiteListHelper"

    const-string v6, "insertToSpeedUpWhiteList IllegalArgumentException"

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isForegroundAppProtectedTurnOn(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 156
    if-nez p1, :cond_0

    move v9, v8

    .line 180
    :goto_0
    return v9

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 160
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 162
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "hasselected"

    aput-object v4, v2, v1

    .line 163
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "_id=1"

    .line 164
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->PROTECTED_FORAPP_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 174
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_2
    const/4 v6, 0x0

    .line 178
    const/4 v0, 0x0

    goto :goto_0

    .line 170
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-ne v1, v8, :cond_5

    move v1, v8

    .line 174
    :goto_1
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_4
    const/4 v6, 0x0

    .line 178
    const/4 v0, 0x0

    move v9, v1

    goto :goto_0

    :cond_5
    move v1, v9

    .line 170
    goto :goto_1

    .line 171
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 172
    .local v7, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "WhiteListHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isForegroundAppProtectedTurnOn error! e : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_6
    const/4 v6, 0x0

    .line 178
    const/4 v0, 0x0

    .line 179
    goto :goto_0

    .line 174
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    .line 175
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_7
    const/4 v6, 0x0

    .line 178
    const/4 v0, 0x0

    throw v1
.end method

.method private queryDatabase(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    const/4 v10, 0x0

    .line 267
    .local v10, "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 268
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 269
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .local v9, "pkgName":Ljava/lang/String;
    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 271
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 272
    if-eqz v6, :cond_2

    .line 273
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    .line 274
    const/4 v8, 0x0

    .local v8, "i":I
    move-object v11, v10

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    :try_start_1
    array-length v1, p3

    if-ge v8, v1, :cond_1

    .line 275
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 276
    const-string v1, "WhiteListHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "list apps\' pkg Name is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-nez v11, :cond_6

    .line 278
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 280
    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    :try_start_2
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    add-int/lit8 v8, v8, 0x1

    move-object v11, v10

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    :cond_1
    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 286
    .end local v8    # "i":I
    :cond_2
    const-string v1, "WhiteListHelper"

    const-string v2, "no data exists ! "

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :cond_3
    if-eqz v6, :cond_4

    .line 293
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 299
    :cond_4
    :goto_3
    return-object v10

    .line 295
    :catch_0
    move-exception v7

    .line 296
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 288
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 289
    .restart local v7    # "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    if-eqz v6, :cond_4

    .line 293
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 295
    :catch_2
    move-exception v7

    .line 296
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 291
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 292
    :goto_5
    if-eqz v6, :cond_5

    .line 293
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 297
    :cond_5
    :goto_6
    throw v1

    .line 295
    :catch_3
    move-exception v7

    .line 296
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 291
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "i":I
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_5

    .line 288
    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_4
    move-exception v7

    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_4

    .end local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    move-object v10, v11

    .end local v11    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "savedAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private updateWhiteList(Z)V
    .locals 7
    .param p1, "updateUI"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    .line 128
    :cond_0
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->SPEED_UP_WHITE_LIST_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "pkgname"

    aput-object v4, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->queryDatabase(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    .line 136
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz p1, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mCallback:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mCallback:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;->onWhiteListChanged()V

    .line 143
    :cond_2
    return-void

    .line 136
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addAppToWhiteList(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v1, "com.vivo.weather"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    const-string v0, "com.vivo.weather.provider"

    .line 214
    .local v0, "extraPkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :goto_0
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$6;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$6;->start()V

    .line 227
    .end local v0    # "extraPkgName":Ljava/lang/String;
    :cond_0
    return-void

    .line 216
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "extraPkgName":Ljava/lang/String;
    goto :goto_0
.end method

.method public fetchListsManually()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mWhiteListObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mWhiteListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mHideAppListContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mHideAppListContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mBgStartAppsListContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mBgStartAppsListContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 122
    :cond_2
    return-void
.end method

.method public isAppHidedInVisitMode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mHideAppListAppsName:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mHideAppListAppsName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isBgStartApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mAllowBgStartApps:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mAllowBgStartApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isForegroundAppProtetced()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mIsForegroundAppProtetced:Z

    return v0
.end method

.method public isPkgProtected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mCallback:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;

    if-nez v0, :cond_0

    .line 53
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mCallback:Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$Callback;

    .line 55
    :cond_0
    return-void
.end method

.method public removeAppFromWhiteList(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 189
    const-string v1, "com.vivo.weather"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    const-string v0, "com.vivo.weather.provider"

    .line 191
    .local v0, "extraPkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->mSavedWhiteListAppsName:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper$5;->start()V

    .line 204
    .end local v0    # "extraPkgName":Ljava/lang/String;
    :cond_0
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "extraPkgName":Ljava/lang/String;
    goto :goto_0
.end method
