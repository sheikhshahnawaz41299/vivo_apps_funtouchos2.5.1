.class public Lcom/android/settings/sim/SimBootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimBootReceiver.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimBootReceiver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 149
    new-instance v0, Lcom/android/settings/sim/SimBootReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimBootReceiver$1;-><init>(Lcom/android/settings/sim/SimBootReceiver;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimBootReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/sim/SimBootReceiver;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/sim/SimBootReceiver;->detectChangeAndNotify()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 146
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 147
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v7, 0x10000000

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 122
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0200a1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0a002f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0b0777

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0b0778

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 128
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-direct {v3, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v3, "resultIntent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    const/4 v5, 0x0

    invoke-static {p1, v5, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 137
    .local v4, "resultPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 138
    const-string v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 140
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 141
    return-void
.end method

.method private detectChangeAndNotify()V
    .locals 15

    .prologue
    const/high16 v14, 0x10000000

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 58
    iget-object v11, p0, Lcom/android/settings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v6

    .line 59
    .local v6, "numSlots":I
    iget-object v11, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "device_provisioned"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_1

    move v2, v9

    .line 61
    .local v2, "isInProvisioning":Z
    :goto_0
    const/4 v4, 0x0

    .line 62
    .local v4, "notificationSent":Z
    const/4 v5, 0x0

    .line 63
    .local v5, "numSIMsDetected":I
    const/4 v3, -0x1

    .line 64
    .local v3, "lastSIMSlotDetected":I
    const-string v11, "SimBootReceiver"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "detectChangeAndNotify numSlots = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isInProvisioning = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v11, 0x2

    if-lt v6, v11, :cond_0

    if-eqz v2, :cond_2

    .line 116
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isInProvisioning":Z
    .end local v3    # "lastSIMSlotDetected":I
    .end local v4    # "notificationSent":Z
    .end local v5    # "numSIMsDetected":I
    :cond_1
    move v2, v10

    .line 59
    goto :goto_0

    .line 72
    .restart local v2    # "isInProvisioning":Z
    .restart local v3    # "lastSIMSlotDetected":I
    .restart local v4    # "notificationSent":Z
    .restart local v5    # "numSIMsDetected":I
    :cond_2
    iget-object v11, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/sim/SimBootReceiver;->cancelNotification(Landroid/content/Context;)V

    .line 75
    iget-object v11, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 77
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v0

    .line 79
    .local v0, "dataSelected":Z
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v8

    .line 83
    .local v8, "smsSelected":Z
    if-eqz v0, :cond_3

    if-nez v8, :cond_0

    .line 91
    :cond_3
    iget-object v11, p0, Lcom/android/settings/sim/SimBootReceiver;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v11}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v7

    .line 92
    .local v7, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v9, :cond_0

    .line 96
    iget-object v11, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v11}, Lcom/android/settings/sim/SimBootReceiver;->createNotification(Landroid/content/Context;)V

    .line 98
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v9, :cond_4

    .line 100
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    sget-object v9, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v11, 0x3

    invoke-virtual {v1, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    sget-object v11, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v9

    invoke-virtual {v1, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    iget-object v9, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 105
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    if-nez v0, :cond_0

    .line 109
    new-instance v1, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    const-class v11, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v9, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    sget-object v9, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    iget-object v9, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string v0, "SimBootReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive()... action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/sim/SimBootReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 52
    iput-object p1, p0, Lcom/android/settings/sim/SimBootReceiver;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method
