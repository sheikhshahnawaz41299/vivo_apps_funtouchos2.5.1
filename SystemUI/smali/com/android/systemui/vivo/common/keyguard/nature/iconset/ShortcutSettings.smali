.class public Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;
.super Lcom/vivo/app/VivoBaseActivity;
.source "ShortcutSettings.java"


# static fields
.field private static final DOUBLE_INSTANCE_LABEL:Ljava/lang/String; = "double_instance_label"

.field private static final MSG_SHORTCUT_INFO_SAVED:I = 0x2

.field private static final MSG_SHORTCUT_LIST_SUCCESS:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field public appInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mDoubleInstanceLabel:Ljava/lang/String;

.field private mHandlder:Landroid/os/Handler;

.field private mHomefinish:Z

.field private mIsDoubleInstance:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private volatile mSavingShortcutIcon:Z

.field private mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

.field private mShortcutChooser:I

.field private mShortcutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutListView:Landroid/widget/ListView;

.field private mShortcutListViewAdapter:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;

.field private mShortcutPkg:Ljava/lang/String;

.field private mShortcutSettings:Landroid/content/SharedPreferences;

.field private mShortcutWidth:I

.field private mshortcutActivity:Ljava/lang/String;

.field private mshortcutFlag:Ljava/lang/String;

.field private mshortcutTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "KeyguardShortcutSettings"

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseActivity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    .line 65
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mHomefinish:Z

    .line 69
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutWidth:I

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSavingShortcutIcon:Z

    .line 191
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mHandlder:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSavingShortcutIcon:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSavingShortcutIcon:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutChooser:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->dismissLoadingDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutWidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->saveToPref(ZLjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->setActivityResult()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;
    .param p1, "x1"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutListViewAdapter:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->initShortcutList()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mHandlder:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private dismissLoadingDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    const-string v2, "dismissLoading"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    throw v1
.end method

.method private initShortcutList()V
    .locals 14

    .prologue
    .line 212
    const/4 v5, 0x0

    .line 213
    .local v5, "index":I
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v6, "intent":Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->appInfos:Ljava/util/List;

    .line 216
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutList:Ljava/util/ArrayList;

    if-nez v11, :cond_0

    .line 217
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutList:Ljava/util/ArrayList;

    .line 220
    :cond_0
    new-instance v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    invoke-direct {v9}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;-><init>()V

    .line 221
    .local v9, "sinfo":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    iput v5, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->id:I

    .line 222
    const-string v11, ""

    iput-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    .line 223
    const-string v11, ""

    iput-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    .line 224
    const-string v11, ""

    iput-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    .line 225
    const/4 v11, 0x0

    iput-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 226
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    .line 227
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    add-int/lit8 v5, v5, 0x1

    .line 230
    const/4 v2, 0x0

    .line 231
    .local v2, "hidePkg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    const-string v12, "visit_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_3

    const/4 v7, 0x1

    .line 232
    .local v7, "isVisitorMode":Z
    :goto_0
    if-eqz v7, :cond_1

    .line 233
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getVisitHideApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 236
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->appInfos:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v3, v11, :cond_9

    .line 237
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->appInfos:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 238
    .local v8, "rinfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 239
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 240
    .local v1, "appPackageTemp":Ljava/lang/String;
    const-string v11, "com.android.bbk.lockscreen3"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 236
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appPackageTemp":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v7    # "isVisitorMode":Z
    .end local v8    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 244
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "appPackageTemp":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v7    # "isVisitorMode":Z
    .restart local v8    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    .end local v9    # "sinfo":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    invoke-direct {v9}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;-><init>()V

    .line 246
    .restart local v9    # "sinfo":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    iput-object v1, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    .line 248
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    .line 250
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    .line 253
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v11}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 254
    .local v4, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_5

    .line 255
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v12}, Lcom/android/systemui/vivo/compatible/keyguard/IconUtils;->createRedrawIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 257
    :cond_5
    iget-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v11, :cond_6

    .line 258
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1080093

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 288
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutActivity:Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutActivity:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutPkg:Ljava/lang/String;

    if-eqz v11, :cond_8

    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutPkg:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mIsDoubleInstance:Z

    if-nez v11, :cond_8

    .line 291
    iput-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    .line 292
    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    .line 297
    :goto_3
    iput v5, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->id:I

    .line 298
    sget-object v11, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FOR i: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",packageName : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",appActivityName: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",appLable: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v5, v5, 0x1

    .line 302
    iget-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isCloneEnabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 303
    new-instance v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    invoke-direct {v10}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;-><init>()V

    .line 304
    .local v10, "sinfoD":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    iget-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    iput-object v11, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    .line 305
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getClonedApplicationLabel(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    .line 306
    iget-object v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    iput-object v11, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    .line 307
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getClonedApplicationIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 308
    iput v5, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->id:I

    .line 309
    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->doubleInstance:Z

    .line 310
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutActivity:Ljava/lang/String;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutActivity:Ljava/lang/String;

    iget-object v12, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutPkg:Ljava/lang/String;

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutPkg:Ljava/lang/String;

    iget-object v12, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mIsDoubleInstance:Z

    if-eqz v11, :cond_7

    .line 313
    iput-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    .line 314
    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    .line 317
    :cond_7
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v11, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clone enabled: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", label: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    add-int/lit8 v5, v5, 0x1

    .line 321
    iget-object v11, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 322
    iget-object v11, v10, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    iget-object v12, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appLable:Ljava/lang/String;

    const-string v13, "name"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mDoubleInstanceLabel:Ljava/lang/String;

    goto/16 :goto_2

    .line 294
    .end local v10    # "sinfoD":Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;
    :cond_8
    const/4 v11, 0x0

    iput-boolean v11, v9, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    goto/16 :goto_3

    .line 328
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "appPackageTemp":Ljava/lang/String;
    .end local v4    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v8    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_9
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mDoubleInstanceLabel:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 329
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutSettings:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string v12, "double_instance_label"

    iget-object v13, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mDoubleInstanceLabel:Ljava/lang/String;

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 332
    :cond_a
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    if-nez v11, :cond_b

    .line 333
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutList:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iput-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    .line 334
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->checked:Z

    .line 336
    :cond_b
    return-void
.end method

.method private instantSaveShortcutInfo(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "left"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "clsName"    # Ljava/lang/String;
    .param p4, "isDouble"    # Z

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSavingShortcutIcon:Z

    .line 370
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;ZLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->start()V

    .line 381
    return-void
.end method

.method private saveToPref(ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "left"    # Z
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "clsName"    # Ljava/lang/String;
    .param p4, "isDouble"    # Z

    .prologue
    .line 385
    if-eqz p1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "left_pkg"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 387
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "left_cls"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "left_double"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "right_pkg"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 391
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "right_cls"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "right_double"

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setActivityResult()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 339
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 340
    .local v0, "data":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutFlag:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 341
    const-string v1, "left"

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutFlag:Ljava/lang/String;

    .line 342
    :cond_0
    const-string v1, "shortcutFlag"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutFlag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 344
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActivityResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iget-object v3, v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v1, "shortcutPackage"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v1, "shortcutCls"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v1, "doubleInstance"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iget-boolean v2, v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->doubleInstance:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    const-string v1, "doubleInstanceLabel"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mDoubleInstanceLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutChooser:I

    if-ne v5, v1, :cond_1

    .line 351
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save mshortcutFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutFlag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iget-object v3, v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cls = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iget-object v3, v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v1, "left"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutFlag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iget-object v3, v3, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->appActivityName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSelectedShortcutInfo:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;

    iget-boolean v4, v4, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutInfo;->doubleInstance:Z

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->instantSaveShortcutInfo(ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 360
    :cond_1
    const-string v1, "home"

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mHomefinish:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->setResult(ILandroid/content/Intent;)V

    .line 362
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutChooser:I

    if-eq v5, v1, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->finish()V

    .line 365
    :cond_2
    return-void
.end method

.method private showLoadingDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 78
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    const-string v2, "showLoadingDialog ProgressDialog is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0e01a6

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 91
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutChooser:I

    if-nez v1, :cond_2

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 93
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 94
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 97
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 98
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    const-string v2, "showLoadingDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shortcutChooser"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutChooser:I

    .line 119
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutChooser:I

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 121
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 125
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const v1, 0x7f040066

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->setContentView(I)V

    .line 126
    iput-object p0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    .line 127
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    const-string v2, "custom_settings"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutSettings:Landroid/content/SharedPreferences;

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shortcutFlag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutFlag:Ljava/lang/String;

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shortcutCls"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutActivity:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "shortcutPkg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutPkg:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "doubleInstance"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mIsDoubleInstance:Z

    .line 132
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate->shrtcutFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutFlag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mshortcutActivity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutActivity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mShortcutChooser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutChooser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 135
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutWidth:I

    .line 136
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutFlag:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const v1, 0x7f0e01a4

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutTitle:Ljava/lang/String;

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->setTitleCenterText(Ljava/lang/CharSequence;)V

    .line 141
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->setTitleLeftButtonIcon(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->showTitleLeftButton()V

    .line 143
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v1, 0x7f1101b1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutListView:Landroid/widget/ListView;

    .line 154
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutListViewAdapter:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->setOnTitleClickListener(Landroid/view/View;)V

    .line 156
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutListViewAdapter:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 157
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->showLoadingDialog()V

    .line 180
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 189
    return-void

    .line 139
    :cond_1
    const v1, 0x7f0e01a3

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mshortcutTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 399
    packed-switch p1, :pswitch_data_0

    .line 413
    :goto_0
    return v2

    .line 401
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mHomefinish:Z

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->setActivityResult()V

    goto :goto_0

    .line 405
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mShortcutChooser:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->mSavingShortcutIcon:Z

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->TAG:Ljava/lang/String;

    const-string v1, "i theme use and is saving"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->finish()V

    goto :goto_0

    .line 399
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
