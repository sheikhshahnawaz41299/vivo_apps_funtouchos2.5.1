.class public Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;
.super Ljava/lang/Object;
.source "NotificationIconRedrawHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEllipsisIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mEllipsisIconVisible:Z

.field private mHasIrreleventIcon:Z

.field private mHasMoreIcon:Z

.field private mIconMerger:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

.field private mIconRedrawEnabled:Z

.field private mIconRedrawObserver:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

.field private mPopular3PNotificationIconsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "NotificationIconRedrawHelper"

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mHasIrreleventIcon:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mHasMoreIcon:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconVisible:Z

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconRedrawEnabled:Z

    .line 203
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconRedrawObserver:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    .line 60
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/FileParser;->readNotificationIconInfo(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mPopular3PNotificationIconsMap:Ljava/util/HashMap;

    .line 62
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isRedrawNotificatinIconEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconRedrawEnabled:Z

    .line 63
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconRedrawObserver:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->registerIconRedrawConfigObserver(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconRedrawEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconRedrawEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    .line 70
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    return-object v0
.end method

.method private getRedrawNotiIconId(ILjava/lang/String;)I
    .locals 3
    .param p1, "flag"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 185
    .local v1, "notificationIconPair":[I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mPopular3PNotificationIconsMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "notificationIconPair":[I
    check-cast v1, [I

    .line 186
    .restart local v1    # "notificationIconPair":[I
    const/4 v0, 0x0

    .line 187
    .local v0, "notificationIconId":I
    if-eqz v1, :cond_0

    .line 188
    if-nez p1, :cond_1

    .line 189
    const/4 v2, 0x0

    aget v0, v1, v2

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    const/4 v2, 0x1

    aget v0, v1, v2

    goto :goto_0

    .line 184
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private isPopularThirdPartyApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mPopular3PNotificationIconsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mPopular3PNotificationIconsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 200
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIsThereIrreleventIcon()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mHasIrreleventIcon:Z

    return v0
.end method

.method public initEllipsisIconView(I)V
    .locals 4
    .param p1, "flag"    # I

    .prologue
    .line 112
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.systemui/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 114
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->updateEllipsisIconColor(I)V

    .line 116
    return-void
.end method

.method public isCaCertNotification(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 213
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10400f3

    if-ne p2, v0, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEllipsisIconView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mHasMoreIcon:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoogleMusicInteractNotification(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 220
    const-string v0, "com.google.android.music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSyncErrorNotification(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 232
    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->icon:I

    const v1, 0x1080653

    if-ne v0, v1, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshEllipsisIcon()V
    .locals 4

    .prologue
    .line 97
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mHasIrreleventIcon:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mHasMoreIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 98
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconVisible:Z

    if-eq v2, v1, :cond_1

    .line 99
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconVisible:Z

    .line 101
    :cond_1
    if-eqz v1, :cond_3

    .line 102
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconMerger:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->removeView(Landroid/view/View;)V

    .line 103
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 105
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconMerger:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    return-void

    .line 97
    .end local v1    # "visible":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 107
    .restart local v1    # "visible":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconMerger:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setIsThereIrreleventIcon(Z)V
    .locals 0
    .param p1, "has"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mHasIrreleventIcon:Z

    .line 85
    return-void
.end method

.method public setIsThereMoreIcon(Z)V
    .locals 1
    .param p1, "has"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mHasMoreIcon:Z

    .line 89
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconMerger:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->setMoreViewVisible(Z)V

    .line 90
    return-void
.end method

.method public setRedrawStyleIcon(ILcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 12
    .param p1, "flag"    # I
    .param p2, "ent"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 127
    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v10

    .line 128
    .local v10, "statusBarIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v3, v5, Landroid/app/Notification;->icon:I

    .line 129
    .local v3, "iconId":I
    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "iconPackage":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, "appPkgName":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 133
    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/StatusBarIconView;->clearColorFilter()V

    .line 137
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    .line 138
    .local v9, "isSystemApp":Z
    invoke-static {v7}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->is3partAppAsSystem(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 139
    .local v8, "is3partAppAsSystemList":Z
    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {p0, v7, v5}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->isCaCertNotification(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v7, v5}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->isSyncErrorNotification(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 141
    :cond_1
    const/4 v9, 0x0

    .line 148
    :cond_2
    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v7, v5}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->isGoogleMusicInteractNotification(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 180
    :cond_3
    :goto_0
    return v2

    .line 153
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconRedrawEnabled:Z

    if-eqz v5, :cond_6

    if-eqz v9, :cond_5

    if-eqz v8, :cond_6

    .line 154
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->isPopularThirdPartyApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 155
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-direct {p0, p1, v7}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->getRedrawNotiIconId(ILjava/lang/String;)I

    move-result v3

    .line 157
    if-eqz v3, :cond_3

    .line 164
    :cond_6
    iget-object v5, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->redrawStatusbarIcon(Z)V

    .line 165
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v4, v2, Landroid/app/Notification;->iconLevel:I

    .line 166
    .local v4, "level":I
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconRedrawEnabled:Z

    if-nez v2, :cond_7

    if-eqz v9, :cond_8

    if-nez v8, :cond_8

    .line 167
    :cond_7
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v11}, Lcom/android/systemui/statusbar/StatusBarIconView;->redrawStatusbarIcon(Z)V

    .line 168
    if-nez p1, :cond_9

    .line 169
    const/4 v4, 0x1

    .line 175
    :cond_8
    :goto_1
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, v10, Lcom/android/internal/statusbar/StatusBarIcon;->user:Landroid/os/UserHandle;

    iget v5, v10, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    iget-object v6, v10, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 178
    .local v0, "newStatusBarIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v2, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move v2, v11

    .line 180
    goto :goto_0

    .line 170
    .end local v0    # "newStatusBarIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_9
    if-ne p1, v11, :cond_8

    .line 171
    const/4 v4, 0x2

    goto :goto_1
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationIconMerger()Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconMerger:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mIconMerger:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->setIconRedrawHelper(Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;)V

    .line 77
    return-void
.end method

.method public updateEllipsisIconColor(I)V
    .locals 7
    .param p1, "flag"    # I

    .prologue
    const/4 v4, 0x0

    .line 119
    if-nez p1, :cond_0

    const v3, 0x7f02049e

    .line 120
    .local v3, "iconId":I
    :goto_0
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    const-string v1, "com.android.systemui"

    new-instance v2, Landroid/os/UserHandle;

    const/4 v5, -0x1

    invoke-direct {v2, v5}, Landroid/os/UserHandle;-><init>(I)V

    const-string v6, "systemui.irrelevent.icon"

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 122
    .local v0, "ellipsisIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->redrawStatusbarIcon(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->mEllipsisIconView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 124
    return-void

    .line 119
    .end local v0    # "ellipsisIcon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v3    # "iconId":I
    :cond_0
    const v3, 0x7f02049f

    goto :goto_0
.end method
