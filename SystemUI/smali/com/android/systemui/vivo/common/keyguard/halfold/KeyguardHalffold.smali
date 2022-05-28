.class public Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;
.super Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
.source "KeyguardHalffold.java"


# static fields
.field private static final DURATION_MEDIUM:I = 0x1f4

.field private static final HIDE_CHARGING_INFO_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "KeyguardHalffold"


# instance fields
.field private final MSG_REFLESH_MSG_CALL:I

.field private callBg:Landroid/widget/ImageView;

.field private mBatteryLevel:I

.field private mCallNum:I

.field private mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

.field private mChargingInfoAnim:Landroid/animation/ObjectAnimator;

.field private mChargingInfoView:Landroid/widget/TextView;

.field private mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private mDateString:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHomePressFirst:J

.field private mIsBouncer:Z

.field private mIsCharged:Z

.field private mMsgNum:I

.field private mOnResume:Z

.field private mPluggedIn:Z

.field private missCallNumText:Landroid/widget/TextView;

.field private missMsgNumText:Landroid/widget/TextView;

.field private mmsBg:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mPluggedIn:Z

    .line 38
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mBatteryLevel:I

    .line 39
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mIsCharged:Z

    .line 41
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mOnResume:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mHomePressFirst:J

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->MSG_REFLESH_MSG_CALL:I

    .line 55
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mContext:Landroid/content/Context;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mDateString:Ljava/lang/String;

    .line 80
    return-void
.end method

.method private cancelChargingInfoAnim()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 309
    :cond_0
    return-void
.end method

.method private chargingInfoAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->cancelChargingInfoAnim()V

    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mIsBouncer:Z

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 303
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    .line 298
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private hideView()V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "KeyguardHalffold"

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private refreshBatteryStringAndIcon()V
    .locals 6

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 259
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mIsCharged:Z

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0178

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mDateString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void
.end method

.method private resetStatusInfo()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->updateStatusLines()V

    .line 181
    return-void
.end method

.method private updateStatusLines()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "updateStatusLines"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->logd(Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mPluggedIn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mOnResume:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->startChargingAnimation()V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->stopChargingAnimation()V

    goto :goto_0
.end method


# virtual methods
.method public needsInput()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryChanged(ZZIZ)V
    .locals 2
    .param p1, "pluggedIn"    # Z
    .param p2, "isCharged"    # Z
    .param p3, "batteryLevel"    # I
    .param p4, "isBatteryLow"    # Z

    .prologue
    .line 216
    const-string v0, "onRefreshBatteryInfo"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->logd(Ljava/lang/String;)V

    .line 217
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mPluggedIn:Z

    if-eq v0, p1, :cond_0

    .line 218
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mPluggedIn:Z

    .line 219
    if-eqz p1, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->chargingInfoAnim()V

    .line 226
    :cond_0
    :goto_0
    iput p3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mBatteryLevel:I

    .line 227
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mIsCharged:Z

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->refreshBatteryStringAndIcon()V

    .line 229
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->setChageState(ZZI)V

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->updateStatusLines()V

    .line 231
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 269
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->onBouncerChanged(Z)V

    .line 270
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mIsBouncer:Z

    .line 287
    return-void
.end method

.method public onCleanup()V
    .locals 0

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->cleanup()V

    .line 250
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mDateString:Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->refreshTimeAndDateDisplay()V

    .line 116
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mIsCharged:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0178

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 84
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->onFinishInflate()V

    .line 85
    const v4, 0x7f110155

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    .line 86
    const v4, 0x7f110156

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    .line 87
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mChargingInfoView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    const v4, 0x7f11005b

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .line 89
    const v4, 0x7f110152

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->missCallNumText:Landroid/widget/TextView;

    .line 90
    const v4, 0x7f110154

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->missMsgNumText:Landroid/widget/TextView;

    .line 91
    const v4, 0x7f110151

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->callBg:Landroid/widget/ImageView;

    .line 92
    const v4, 0x7f110153

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mmsBg:Landroid/widget/ImageView;

    .line 93
    const v4, 0x7f110062

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mDate:Landroid/widget/TextView;

    .line 94
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->setLayerType(ILandroid/graphics/Paint;)V

    .line 95
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    .local v2, "p":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    invoke-virtual {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->setFocusable(Z)V

    .line 100
    invoke-virtual {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->setFocusableInTouchMode(Z)V

    .line 101
    const/high16 v4, 0x60000

    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->setDescendantFocusability(I)V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 103
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 104
    .local v0, "density":F
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 105
    .local v3, "width":I
    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-int v4, v4

    const/16 v5, 0x140

    if-ne v4, v5, :cond_0

    .line 106
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x42700000    # 60.0f

    mul-float/2addr v5, v0

    float-to-int v5, v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 108
    :cond_0
    return-void
.end method

.method public onHide(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->onHide(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->onPause()V

    .line 245
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 197
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->logd(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mOnResume:Z

    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->stopAllAnimation()V

    .line 200
    return-void
.end method

.method public onRefreshInfo(II)V
    .locals 2
    .param p1, "msgNum"    # I
    .param p2, "callNum"    # I

    .prologue
    .line 235
    const-string v0, "refreshInfo"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->logd(Ljava/lang/String;)V

    .line 236
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mCallNum:I

    .line 237
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mMsgNum:I

    .line 238
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 239
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 185
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->logd(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mOnResume:Z

    .line 187
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->resetStatusInfo()V

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->startNormalAnimation()V

    .line 189
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mCallNum:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->onGetCallEvent(I)V

    .line 190
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mMsgNum:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->onGetMsgEvent(I)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 313
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->chargingInfoAnim()V

    .line 316
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 208
    const-string v0, "onTimeChanged"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->logd(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->refreshTimeAndDateDisplay()V

    .line 211
    return-void
.end method

.method public refreshInCallViews()V
    .locals 5

    .prologue
    .line 141
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshInCallViews  call num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mCallNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->logd(Ljava/lang/String;)V

    .line 142
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mCallNum:I

    .line 143
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->missCallNumText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->callBg:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    .end local v1    # "n":I
    :goto_0
    return-void

    .line 148
    .restart local v1    # "n":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->onGetCallEvent(I)V

    .line 149
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->callBg:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->missCallNumText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->missCallNumText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshMsgViews()V
    .locals 5

    .prologue
    .line 161
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshMsgViews  msg num = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mMsgNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->logd(Ljava/lang/String;)V

    .line 162
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mMsgNum:I

    .line 163
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mmsBg:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->missMsgNumText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    .end local v1    # "n":I
    :goto_0
    return-void

    .line 168
    .restart local v1    # "n":I
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->onGetMsgEvent(I)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->mmsBg:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->missMsgNumText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->missMsgNumText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
