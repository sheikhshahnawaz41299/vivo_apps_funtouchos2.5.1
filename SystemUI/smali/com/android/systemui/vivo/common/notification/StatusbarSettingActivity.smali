.class public Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "StatusbarSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;,
        Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusbarSettingActivity"

.field private static final TITLE_KICK_BACK_ENABLE:Z


# instance fields
.field private mActivityChangeObserver:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;

.field private mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryPercentage:Landroid/preference/CheckBoxPreference;

.field private mCollectData:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

.field private mContext:Landroid/content/Context;

.field private mIconRedraw:Landroid/preference/CheckBoxPreference;

.field private mIsDestroy:Z

.field private mIsRegistered:Z

.field private mListView:Landroid/widget/ListView;

.field private mNetworkFlow:Landroid/preference/CheckBoxPreference;

.field private mNetworkSpeed:Landroid/preference/CheckBoxPreference;

.field private mNotificationNotToShow:Landroid/preference/PreferenceCategory;

.field private mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

.field private mNotificationOpsNotShowDivider:Landroid/preference/PreferenceCategory;

.field private mNotificationOpsShowDivider:Landroid/preference/PreferenceCategory;

.field private mNotificationToShow:Landroid/preference/PreferenceCategory;

.field private mNotificationType:Landroid/preference/PreferenceCategory;

.field private mObserver:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;

.field private mOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

.field private mSchedule:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkSpeed:Landroid/preference/CheckBoxPreference;

    .line 59
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    .line 60
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIconRedraw:Landroid/preference/CheckBoxPreference;

    .line 61
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSchedule:Landroid/preference/CheckBoxPreference;

    .line 62
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    .line 63
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationType:Landroid/preference/PreferenceCategory;

    .line 64
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsShowDivider:Landroid/preference/PreferenceCategory;

    .line 65
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationToShow:Landroid/preference/PreferenceCategory;

    .line 66
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsNotShowDivider:Landroid/preference/PreferenceCategory;

    .line 67
    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationNotToShow:Landroid/preference/PreferenceCategory;

    .line 79
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIsRegistered:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIsDestroy:Z

    .line 311
    new-instance v0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;-><init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 479
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mObserver:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->registerBroadcast()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mActivityChangeObserver:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->needFinishSelf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->updateNotificationDetails()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIsRegistered:Z

    return p1
.end method

.method private addNotificationDetails()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 410
    const/4 v5, 0x0

    .line 411
    .local v5, "isTitleToShowVisible":Z
    const/4 v4, 0x0

    .line 412
    .local v4, "isTitleNotToShowVisible":Z
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 413
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isNotificationEnabled()Z

    move-result v5

    .line 414
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    iget-object v9, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v9, v9, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isNotificationEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v4, 0x1

    .line 417
    :goto_0
    if-eqz v5, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsShowDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationToShow:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 421
    :cond_0
    if-eqz v4, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsNotShowDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationNotToShow:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 431
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_6

    .line 432
    const/4 v2, 0x0

    .line 433
    .local v2, "isHead":Z
    const/4 v3, 0x0

    .line 434
    .local v3, "isTail":Z
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    .line 436
    .local v0, "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    if-nez v1, :cond_7

    .line 437
    const/4 v2, 0x1

    .line 446
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_8

    .line 447
    const/4 v3, 0x1

    .line 456
    :cond_3
    :goto_3
    new-instance v6, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v0, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;ZZ)V

    .line 457
    .local v6, "notiItemPreference":Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isNotificationEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 458
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationToShow:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 431
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .end local v1    # "i":I
    .end local v2    # "isHead":Z
    .end local v3    # "isTail":Z
    .end local v6    # "notiItemPreference":Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;
    :cond_4
    move v4, v8

    .line 414
    goto :goto_0

    .line 427
    :cond_5
    const-string v7, "StatusbarSettingActivity"

    const-string v8, "list is null"

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_6
    return-void

    .line 439
    .restart local v0    # "contentInfo":Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .restart local v1    # "i":I
    .restart local v2    # "isHead":Z
    .restart local v3    # "isTail":Z
    :cond_7
    if-lez v1, :cond_2

    .line 440
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isNotificationEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isNotificationEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 442
    const/4 v2, 0x1

    goto :goto_2

    .line 449
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v8, v1, 0x1

    if-le v7, v8, :cond_3

    .line 450
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isNotificationEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mSortedContentInfos:Ljava/util/List;

    add-int/lit8 v8, v1, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->isNotificationEnabled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 452
    const/4 v3, 0x1

    goto :goto_3

    .line 461
    .restart local v6    # "notiItemPreference":Lcom/android/systemui/vivo/common/notification/NotificationOpsItemPreference;
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationNotToShow:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private addNotificationTopview(Ljava/lang/String;)V
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 371
    new-instance v1, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$5;-><init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    .line 382
    .local v1, "listener":Landroid/view/View$OnClickListener;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .line 384
    .local v0, "label":Ljava/lang/String;
    const-string v4, "2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    :goto_0
    new-instance v3, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 394
    .local v3, "topPreviewPreference":Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationType:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 395
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationType:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 397
    return-void

    .line 387
    .end local v3    # "topPreviewPreference":Lcom/android/systemui/vivo/common/notification/VivoLabelEntryPreference;
    :cond_0
    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e01d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0126

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private makeContentViewVisible()V
    .locals 3

    .prologue
    .line 332
    new-instance v0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$4;-><init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mAsyncTask:Landroid/os/AsyncTask;

    .line 366
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mAsyncTask:Landroid/os/AsyncTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 367
    return-void
.end method

.method private needFinishSelf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "oldPkg"    # Ljava/lang/String;
    .param p2, "newPkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 491
    const-string v1, "com.android.settings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.android.settings"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.bbk.launcher2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    :cond_0
    :goto_0
    return v0

    .line 498
    :cond_1
    const-string v1, "com.bbk.launcher2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.android.settings"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.bbk.launcher2"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    :cond_2
    const-string v1, "com.android.systemui"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.bbk.launcher2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 509
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerBroadcast()V
    .locals 3

    .prologue
    .line 306
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 307
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    return-void
.end method

.method private removeNotificationDetails()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationToShow:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationNotToShow:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 403
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsShowDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationToShow:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsNotShowDivider:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationNotToShow:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    return-void
.end method

.method private updateNotificationDetails()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->removeNotificationDetails()V

    .line 475
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->addNotificationDetails()V

    .line 476
    return-void
.end method

.method private writeData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "switcherName"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 514
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 515
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 516
    const-string v1, "tab"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mCollectData:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    const-string v2, "1063"

    const-string v3, "106312"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->writeData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 519
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 85
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    const v1, 0x7f040081

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->setContentView(I)V

    .line 87
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->addPreferencesFromResource(I)V

    .line 90
    iput-object p0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    .line 91
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 92
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .line 93
    new-instance v1, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;-><init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mObserver:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;

    .line 94
    new-instance v1, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;-><init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mActivityChangeObserver:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;

    .line 95
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    .line 96
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mCollectData:Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    .line 98
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mListView:Landroid/widget/ListView;

    .line 99
    const v1, 0x7f110265

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;

    .line 100
    .local v0, "title":Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e01bf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setCenterText(Ljava/lang/CharSequence;)V

    .line 101
    const-string v1, ""

    const/4 v4, 0x2

    new-instance v5, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;-><init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->initLeftButton(Ljava/lang/CharSequence;ILandroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->showLeftButton()V

    .line 109
    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setLeftButtonEnable(Z)V

    .line 110
    new-instance v1, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$2;-><init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/compatible/widget/StatusBarTitleView;->setOnTitleClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mListView:Landroid/widget/ListView;

    const v4, 0x106000d

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSelector(I)V

    .line 139
    const-string v1, "network_speed"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkSpeed:Landroid/preference/CheckBoxPreference;

    .line 140
    const-string v1, "battery_percentage"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v1, "icon_redraw"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIconRedraw:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v1, "schedule"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSchedule:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v1, "network_flow"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    .line 144
    const-string v1, "notification_type"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationType:Landroid/preference/PreferenceCategory;

    .line 145
    const-string v1, "notification_ops_show_divider"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsShowDivider:Landroid/preference/PreferenceCategory;

    .line 146
    const-string v1, "notification_ops_show"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationToShow:Landroid/preference/PreferenceCategory;

    .line 147
    const-string v1, "notification_ops_not_show_divider"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsNotShowDivider:Landroid/preference/PreferenceCategory;

    .line 148
    const-string v1, "notification_ops_not_show"

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationNotToShow:Landroid/preference/PreferenceCategory;

    .line 150
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkSpeed:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v5, "data_usage_show_speed"

    invoke-static {v1, v5, v3}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isSupportBatteryPercentage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v5, "show_battery_percentage"

    invoke-static {v1, v5, v3}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 156
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIconRedraw:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v5, "statusbar_notification_icon_redraw"

    invoke-static {v1, v5, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 157
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSchedule:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v5, "show_schedule"

    invoke-static {v1, v5, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v5, "data_usage_show_flow"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_6

    :goto_4
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 160
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isSupportBatteryPercentage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationNotToShow:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->makeContentViewVisible()V

    .line 169
    return-void

    :cond_2
    move v1, v3

    .line 150
    goto :goto_0

    :cond_3
    move v1, v3

    .line 153
    goto :goto_1

    :cond_4
    move v1, v3

    .line 156
    goto :goto_2

    :cond_5
    move v1, v3

    .line 157
    goto :goto_3

    :cond_6
    move v2, v3

    .line 158
    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mObserver:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$NotificationContentChangeObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->unregisterObserver(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$Observer;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->unRegister()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mActivityChangeObserver:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver;->unRegisterCallback(Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIsRegistered:Z

    .line 214
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIsDestroy:Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNotificationOpsHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->release()V

    .line 217
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 223
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkSpeed:Landroid/preference/CheckBoxPreference;

    if-ne v2, p2, :cond_3

    .line 224
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v6, "data_usage_show_speed"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkSpeed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 225
    const-string v2, "StatusbarSettingActivity"

    const-string v5, "mNetworkSpeed click !"

    invoke-static {v2, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.action.show_network_speed_statusbar"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v2, "show"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkSpeed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkSpeed:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    const-string v2, "NetworkSpeed"

    const-string v4, "1"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .end local v0    # "broadcast":Landroid/content/Intent;
    :goto_1
    return v3

    :cond_1
    move v2, v4

    .line 224
    goto :goto_0

    .line 233
    .restart local v0    # "broadcast":Landroid/content/Intent;
    :cond_2
    const-string v2, "NetworkSpeed"

    const-string v4, "0"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 237
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isSupportBatteryPercentage()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    if-ne v2, p2, :cond_7

    .line 238
    const-string v2, "StatusbarSettingActivity"

    const-string v5, "mBatteryPercentage click !"

    invoke-static {v2, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v6, "show_battery_percentage"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v5, v6, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings.show_battery_percentage"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .restart local v0    # "broadcast":Landroid/content/Intent;
    const-string v2, "show"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v4, v3

    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 245
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mBatteryPercentage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 246
    const-string v2, "BatteryPercentage"

    const-string v4, "1"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_5
    move v2, v4

    .line 239
    goto :goto_2

    .line 248
    .restart local v0    # "broadcast":Landroid/content/Intent;
    :cond_6
    const-string v2, "BatteryPercentage"

    const-string v4, "0"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 252
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIconRedraw:Landroid/preference/CheckBoxPreference;

    if-ne v2, p2, :cond_a

    .line 253
    const-string v2, "StatusbarSettingActivity"

    const-string v5, "mIconRedraw click !"

    invoke-static {v2, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v5, "statusbar_notification_icon_redraw"

    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIconRedraw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    move v4, v3

    :cond_8
    invoke-static {v2, v5, v4}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 256
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mIconRedraw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 257
    const-string v2, "IconRedraw"

    const-string v4, "1"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 259
    :cond_9
    const-string v2, "IconRedraw"

    const-string v4, "0"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 263
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSchedule:Landroid/preference/CheckBoxPreference;

    if-ne v2, p2, :cond_d

    .line 264
    const-string v2, "StatusbarSettingActivity"

    const-string v5, "mSchedule click !"

    invoke-static {v2, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v5, "show_schedule"

    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSchedule:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    move v4, v3

    :cond_b
    invoke-static {v2, v5, v4}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.providers.calendar.intent.CalendarProvider2"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "updateNoti"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSchedule:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 271
    const-string v2, "Schedule"

    const-string v4, "1"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 273
    :cond_c
    const-string v2, "Schedule"

    const-string v4, "0"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 277
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    if-ne v2, p2, :cond_11

    .line 278
    const-string v2, "StatusbarSettingActivity"

    const-string v5, "mNetworkFlow click !"

    invoke-static {v2, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v6, "data_usage_show_flow"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    :goto_3
    invoke-static {v5, v6, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.action.show_network_flow_statusbar"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .restart local v0    # "broadcast":Landroid/content/Intent;
    const-string v2, "show"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    move v4, v3

    :cond_e
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 286
    const-string v2, "NetworkFlow"

    const-string v4, "1"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_f
    move v2, v4

    .line 279
    goto :goto_3

    .line 288
    .restart local v0    # "broadcast":Landroid/content/Intent;
    :cond_10
    const-string v2, "NetworkFlow"

    const-string v4, "0"

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->writeData(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 293
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_11
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto/16 :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getNotificationTipStyle()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->addNotificationTopview(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 177
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2, v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v0

    .line 178
    .local v0, "isSlot1Insert":Z
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v1

    .line 181
    .local v1, "isSlot2Insert":Z
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkSpeed:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v6, "data_usage_show_speed"

    invoke-static {v2, v6, v4}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 182
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v6, "data_usage_show_flow"

    invoke-static {v2, v6, v4}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 185
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 186
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 187
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 193
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 181
    goto :goto_0

    :cond_1
    move v2, v4

    .line 182
    goto :goto_1

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mContext:Landroid/content/Context;

    const-string v6, "data_usage_show_flow"

    invoke-static {v5, v6, v4}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->mNetworkFlow:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2
.end method
