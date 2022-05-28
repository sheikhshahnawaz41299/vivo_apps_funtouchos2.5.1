.class public Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
.super Ljava/lang/Object;
.source "KeyguardNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    }
.end annotation


# static fields
.field public static final STATE_KEYGUARD:I = 0x1

.field public static final STATE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardNotificationManager"

.field public static mKeyguardNotificationCount:I

.field private static sInstance:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;


# instance fields
.field private mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

.field private mCallbacks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mMusicData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mNotificationUpdateObserver:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

.field private mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

.field private mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mStackAlphaAnimation:Landroid/animation/ObjectAnimator;

.field private mStackHeight:I

.field private mStackItemHeight:I

.field private mState:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCallbacks:Ljava/util/HashSet;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mState:I

    .line 63
    new-instance v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$1;-><init>(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationUpdateObserver:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    .line 173
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackItemHeight:I

    .line 175
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getNotificationTopPadding(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mTopPadding:I

    .line 176
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackItemHeight:I

    int-to-double v0, v0

    const-wide v2, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackHeight:I

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->notifyKeyguardNotificationAppear(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isMissedCall(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->notifyMissedCallNotificationChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Landroid/service/notification/StatusBarNotification;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isUnreadSms(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->notifyUnreadSmsNotificationChanged(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->notifyKeyguardNotificationDisappear(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    sget-object v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->sInstance:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->sInstance:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    .line 169
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->sInstance:Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    return-object v0
.end method

.method private isMissedCall(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 433
    const-string v0, "com.android.phone"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 434
    const/4 v0, 0x1

    .line 435
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSmsPkg(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 445
    const-string v0, "com.android.mms.service"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    :cond_0
    const/4 v0, 0x1

    .line 448
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUnreadSms(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 439
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isSmsPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    .line 440
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyKeyguardNotificationAppear(Z)V
    .locals 3
    .param p1, "doNotChangeKeyguardBackground"    # Z

    .prologue
    .line 409
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;

    .line 410
    .local v0, "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;->onKeyguardNotificationAppear(Z)V

    goto :goto_0

    .line 412
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    :cond_0
    return-void
.end method

.method private notifyKeyguardNotificationDisappear(Z)V
    .locals 3
    .param p1, "doNotChangeKeyguardBackground"    # Z

    .prologue
    .line 415
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;

    .line 416
    .local v0, "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;->onKeyguardNotificationDisappear(Z)V

    goto :goto_0

    .line 418
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    :cond_0
    return-void
.end method

.method private notifyMissedCallNotificationChanged(Z)V
    .locals 3
    .param p1, "has"    # Z

    .prologue
    .line 421
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;

    .line 422
    .local v0, "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;->onMissedCallNotificationChanged(Z)V

    goto :goto_0

    .line 424
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    :cond_0
    return-void
.end method

.method private notifyUnreadSmsNotificationChanged(Z)V
    .locals 3
    .param p1, "has"    # Z

    .prologue
    .line 427
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;

    .line 428
    .local v0, "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;->onUnreadSmsNotificationChanged(Z)V

    goto :goto_0

    .line 430
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    :cond_0
    return-void
.end method

.method private recoverStackIfWasHide(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 486
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 488
    if-eqz p1, :cond_3

    .line 489
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackAlphaAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackAlphaAnimation:Landroid/animation/ObjectAnimator;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackAlphaAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 494
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackAlphaAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 499
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 503
    :cond_2
    return-void

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    goto :goto_0
.end method

.method private requestNotificationEdgeUpdate()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateScrollerTopPadding()V

    .line 517
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissKeyguard()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "KeyguardNotificationManager"

    const-string v1, "dismissKeyguard"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 224
    :cond_0
    return-void
.end method

.method public enterKeyguardState()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->enterKeyguardState(Z)V

    .line 232
    return-void
.end method

.method public enterKeyguardState(Z)V
    .locals 9
    .param p1, "doNotChangeKeyguardBackground"    # Z

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 235
    const-string v5, "KeyguardNotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enterKeyguardState, doNotChangeKeyguardBackground = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", StatusBarState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getStatusBarState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v5, 0x2

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getStatusBarState()I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 240
    const/4 p1, 0x1

    .line 244
    :cond_0
    iget v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mState:I

    if-eq v5, v3, :cond_10

    .line 245
    iput v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mState:I

    .line 247
    sput v4, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    .line 248
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->notifyKeyguardNotificationDisappear(Z)V

    .line 251
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v5, :cond_1

    .line 252
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClockVisibility()V

    .line 253
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopupsWithoutAnimator()V

    .line 254
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5, v4, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleUpSlideGuideView(ZZ)V

    .line 255
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissUpSlideDialogs()V

    .line 259
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v5, :cond_2

    .line 260
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 262
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 279
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz p1, :cond_8

    .line 280
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->isKeyguardNotification:I

    if-ne v3, v5, :cond_5

    move v2, v3

    .line 282
    .local v2, "show":Z
    :goto_1
    const-string v5, "KeyguardNotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isKeyguardNotification = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->isKeyguardNotification:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", show = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", pkg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_6

    move v5, v4

    :goto_2
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 286
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 287
    if-eqz v2, :cond_3

    .line 288
    sget v5, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    if-nez v5, :cond_4

    .line 289
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->notifyKeyguardNotificationAppear(Z)V

    .line 291
    :cond_4
    sget v5, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardNotificationCount:I

    .line 293
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v5}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isMissedCall(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 294
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->notifyMissedCallNotificationChanged(Z)V

    goto/16 :goto_0

    .end local v2    # "show":Z
    :cond_5
    move v2, v4

    .line 280
    goto :goto_1

    .restart local v2    # "show":Z
    :cond_6
    move v5, v6

    .line 285
    goto :goto_2

    .line 295
    :cond_7
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v5}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isUnreadSms(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 296
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->notifyUnreadSmsNotificationChanged(Z)V

    goto/16 :goto_0

    .line 300
    .end local v2    # "show":Z
    :cond_8
    const-string v5, "KeyguardNotificationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enterKeyguardState, row.setVisibility(View.GONE), pkg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    .line 304
    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iput v4, v5, Landroid/app/Notification;->isKeyguardNotification:I

    goto/16 :goto_0

    .line 309
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v3, :cond_a

    .line 310
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getOngoingData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    .line 312
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 313
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_3

    .line 316
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_b
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v3, :cond_c

    .line 317
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getCalendarData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    .line 319
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 320
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_4

    .line 323
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v3, :cond_e

    .line 324
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getMusicData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    .line 326
    :cond_e
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 327
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_5

    .line 330
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->hideAllPartitionTitles()V

    .line 331
    const-string v3, "KeyguardNotificationManager"

    const-string v4, "enterKeyguardState, registerObserver"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->getInstance()Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationUpdateObserver:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->registerObserver(Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;)V

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->requestNotificationEdgeUpdate()V

    .line 336
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_10
    return-void
.end method

.method public exitKeyguardState()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->exitKeyguardState(Z)V

    .line 340
    return-void
.end method

.method public exitKeyguardState(Z)V
    .locals 6
    .param p1, "doNotChangeKeyguardBackground"    # Z

    .prologue
    const/4 v5, 0x0

    .line 343
    const-string v2, "KeyguardNotificationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitKeyguardState, doNotChangeKeyguardBackground = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mState:I

    if-eqz v2, :cond_a

    .line 346
    iput v5, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mState:I

    .line 348
    invoke-direct {p0, v5}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->recoverStackIfWasHide(Z)V

    .line 351
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopupsWithoutAnimator()V

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getNotificationData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 359
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 360
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_0

    .line 363
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v2, :cond_3

    .line 364
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getOngoingData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    .line 366
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 367
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_1

    .line 370
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v2, :cond_5

    .line 371
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getCalendarData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    .line 373
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 374
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_2

    .line 377
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    if-nez v2, :cond_7

    .line 378
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getMusicData()Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    .line 380
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 381
    .restart local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    goto :goto_3

    .line 384
    .end local v0    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->notifyKeyguardNotificationDisappear(Z)V

    .line 386
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v2

    if-nez v2, :cond_9

    .line 387
    const-string v2, "KeyguardNotificationManager"

    const-string v3, "exitKeyguardState, unregisterObserver"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->getInstance()Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationUpdateObserver:Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->unregisterObserver(Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager$Observer;)V

    .line 391
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->updatePartitionTitles()V

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->requestNotificationEdgeUpdate()V

    .line 395
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_a
    return-void
.end method

.method public getStackHeight()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackHeight:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mState:I

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mTopPadding:I

    return v0
.end method

.method public isKeyguardOccluded()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    .line 216
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecureForSystemUI()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecureForSystemUI()Z

    move-result v0

    .line 201
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyguardNotificationClick(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "clickRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 520
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;

    .line 522
    .local v0, "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;->onKeyguardNotificationClick(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 525
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onMusicPanelVisibilityChanged(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 457
    const-string v0, "KeyguardNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicPanelVisibilityChanged visible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz p1, :cond_0

    .line 459
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mTopPadding:I

    iget v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackItemHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->setTopPadding(I)V

    .line 460
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackHeight:I

    iget v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackItemHeight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->setStackHeight(I)V

    .line 465
    :goto_0
    return-void

    .line 462
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mTopPadding:I

    iget v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackItemHeight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->setTopPadding(I)V

    .line 463
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackHeight:I

    iget v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackItemHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->setStackHeight(I)V

    goto :goto_0
.end method

.method public registerCallback(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mKeyguardCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 187
    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "pv"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 511
    return-void
.end method

.method public setStackHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 479
    iput p1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackHeight:I

    .line 480
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStackHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setStackHeight(F)V

    .line 483
    :cond_0
    return-void
.end method

.method public setStackScrollLayout(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 454
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 182
    return-void
.end method

.method public setTopPadding(I)V
    .locals 4
    .param p1, "top"    # I

    .prologue
    const/4 v3, 0x0

    .line 468
    iput p1, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mTopPadding:I

    .line 469
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mStack:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FIZZ)V

    .line 472
    :cond_0
    return-void
.end method

.method public shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x1

    .line 405
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->mCallbacks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 533
    return-void
.end method
