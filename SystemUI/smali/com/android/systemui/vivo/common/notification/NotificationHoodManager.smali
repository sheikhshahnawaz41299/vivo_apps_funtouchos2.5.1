.class public Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;
.super Ljava/lang/Object;
.source "NotificationHoodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$BreathInterpolator;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "NotificationHoodManager"

.field private static sInstance:Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;


# instance fields
.field private mBreathAnimator:Landroid/animation/ValueAnimator;

.field private mChronometer:Landroid/widget/Chronometer;

.field private mHoodClicked:Z

.field private mHoodContentIntent:Landroid/app/PendingIntent;

.field private mHoodPkg:Ljava/lang/String;

.field private mHoodState:I

.field private mJumpTip:Landroid/widget/TextView;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mStateTip:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodClicked:Z

    .line 60
    const v0, 0x7f040053

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    const v1, 0x7f110143

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mJumpTip:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    const v1, 0x7f110144

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mStateTip:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    const v1, 0x7f110145

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->sInstance:Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    return-object v0
.end method

.method private runBreathAnimator()V
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "NotificationHoodManager"

    const-string v2, "BreathAnimator is running ,return"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void

    .line 171
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    .line 172
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 174
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->setupEndValues()V

    .line 176
    new-instance v0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$BreathInterpolator;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$BreathInterpolator;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;)V

    .line 177
    .local v0, "breathInterpolator":Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$BreathInterpolator;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager$1;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 171
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private stopBreathAnimator()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mBreathAnimator:Landroid/animation/ValueAnimator;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 163
    return-void
.end method


# virtual methods
.method public getHoodPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getViewRoot()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public hasHoodClicked()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodClicked:Z

    return v0
.end method

.method public isHoodAvailableForNotification(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 72
    const-string v1, "com.android.incallui"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2712

    if-ne p2, v1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    const-string v1, "com.android.bbksoundrecorder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x2711

    if-eq p2, v1, :cond_0

    .line 76
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHoodClick()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodContentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    const-string v0, "NotificationHoodManager"

    const-string v1, "onHoodClick()"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodClicked:Z

    .line 225
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.bbksoundrecorder"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->dismissKeyguard()V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->sendIntent()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetHoodClicked()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodClicked:Z

    .line 256
    return-void
.end method

.method public sendIntent()V
    .locals 1

    .prologue
    .line 239
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 240
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodContentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodClicked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showDevelopMode(Z)V
    .locals 1
    .param p1, "isModeOn"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->runBreathAnimator()V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->stopBreathAnimator()V

    goto :goto_0
.end method

.method public updateHoodDisplay(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 8
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "isRemove"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 80
    if-eqz p2, :cond_0

    .line 81
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->stop()V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->stopBreathAnimator()V

    .line 85
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodState:I

    .line 87
    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodPkg:Ljava/lang/String;

    .line 88
    iput-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodContentIntent:Landroid/app/PendingIntent;

    .line 156
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v2, 0x0

    .line 93
    .local v2, "ticker":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_1
    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodState:I

    .line 99
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodPkg:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodContentIntent:Landroid/app/PendingIntent;

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->updateTextResources()V

    .line 104
    const-string v3, "com.android.incallui"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 105
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    const v4, 0x7f02023d

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 106
    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodState:I

    packed-switch v3, :pswitch_data_0

    .line 151
    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->isModeOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->runBreathAnimator()V

    .line 155
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 109
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3, v6}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_1

    .line 117
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3, v6}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mStateTip:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 122
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mStateTip:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 124
    if-eqz v2, :cond_3

    .line 125
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 126
    .local v0, "baseTime":J
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 127
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->start()V

    goto :goto_1

    .line 131
    .end local v0    # "baseTime":J
    :cond_5
    const-string v3, "com.android.bbksoundrecorder"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    const v4, 0x7f02023e

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 133
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mStateTip:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 135
    if-eqz v2, :cond_6

    .line 136
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 137
    .restart local v0    # "baseTime":J
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3, v0, v1}, Landroid/widget/Chronometer;->setBase(J)V

    .line 139
    .end local v0    # "baseTime":J
    :cond_6
    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodState:I

    packed-switch v3, :pswitch_data_1

    :pswitch_3
    goto :goto_1

    .line 142
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->start()V

    goto/16 :goto_1

    .line 146
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v3}, Landroid/widget/Chronometer;->stop()V

    goto/16 :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 139
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public updateTextResources()V
    .locals 2

    .prologue
    .line 195
    const-string v0, "com.android.incallui"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mJumpTip:Landroid/widget/TextView;

    const v1, 0x7f0e01ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodState:I

    packed-switch v0, :pswitch_data_0

    .line 212
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 218
    :goto_1
    return-void

    .line 199
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mStateTip:Landroid/widget/TextView;

    const v1, 0x7f0e01bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 202
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mStateTip:Landroid/widget/TextView;

    const v1, 0x7f0e01bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 205
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mStateTip:Landroid/widget/TextView;

    const v1, 0x7f0e01be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "com.android.bbksoundrecorder"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mHoodPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mJumpTip:Landroid/widget/TextView;

    const v1, 0x7f0e01bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->mRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_1

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
