.class public Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;
.super Landroid/widget/RelativeLayout;
.source "KeyguardCarrierInfoView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field private static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field private static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field private static final EXTRA_SIM_ID:Ljava/lang/String; = "phone"

.field private static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field private static final MSG_UPDATE_INFO:I = 0x0

.field private static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field private static final SIM_ID_0:I = 0x0

.field private static final SIM_ID_1:I = 0x1

.field private static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"

.field private static final STATUS_BAR_UPDATE_ACTION:Ljava/lang/String; = "status.bar.update.plmn.spn"

.field private static final TAG:Ljava/lang/String; = "KeyguardCarrierInfoView"


# instance fields
.field private attached:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInfoLayoutPadding:I

.field private mInfoViewPadding:I

.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

.field private mSim0View:Landroid/widget/TextView;

.field private mSim1View:Landroid/widget/TextView;

.field private mTopMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->attached:Z

    .line 48
    const/16 v2, 0x1c

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mTopMargin:I

    .line 49
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mInfoViewPadding:I

    .line 50
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mInfoLayoutPadding:I

    .line 53
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mContext:Landroid/content/Context;

    .line 126
    invoke-static {p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->adjustParams()V

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->getInfoView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSim0View:Landroid/widget/TextView;

    .line 132
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 133
    .local v0, "ll":Landroid/widget/LinearLayout;
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 134
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mInfoLayoutPadding:I

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mInfoLayoutPadding:I

    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 135
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSim0View:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 140
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 141
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mTopMargin:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->updateCarrierInfo(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private adjustParams()V
    .locals 3

    .prologue
    .line 147
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 148
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 149
    .local v0, "density":F
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mTopMargin:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mTopMargin:I

    .line 150
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mInfoViewPadding:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mInfoViewPadding:I

    .line 151
    return-void
.end method

.method private getInfoView()Landroid/widget/TextView;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 154
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "view":Landroid/widget/TextView;
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 156
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mInfoViewPadding:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mInfoViewPadding:I

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 159
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 160
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 161
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 162
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    .line 163
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 164
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 165
    return-object v0
.end method

.method private getSimCardName(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCmccSIM(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMCardCMCCByPhoneId(I)Z

    move-result v0

    return v0
.end method

.method private isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v0

    return v0
.end method

.method private isNoSim()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isSimInserted(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isSimInserted(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isSimInserted(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private isSimInserted(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v0

    return v0
.end method

.method private isSubActive(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v0

    return v0
.end method

.method private shouldShowInfo(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isSubActive(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 199
    .local v0, "isSubActive":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "isSubActive":Z
    :cond_0
    move v0, v2

    .line 198
    goto :goto_0

    .restart local v0    # "isSubActive":Z
    :cond_1
    move v1, v2

    .line 199
    goto :goto_1
.end method

.method private updateCarrierInfo(ILjava/lang/String;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "plmn"    # Ljava/lang/String;

    .prologue
    .line 169
    const-string v1, ""

    .line 170
    .local v1, "simName":Ljava/lang/String;
    const-string v0, ""

    .line 172
    .local v0, "info":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    if-eqz p2, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->getSimCardName(I)Ljava/lang/String;

    move-result-object v1

    .line 175
    if-nez v1, :cond_4

    const-string v1, ""

    .line 179
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->isNoSim()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 182
    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isCmccEntry()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    :cond_2
    :goto_1
    const-string v2, "KeyguardCarrierInfoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCarrierInfo slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", info:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-nez p1, :cond_6

    .line 195
    :cond_3
    :goto_2
    return-void

    .line 175
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 185
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->shouldShowInfo(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 192
    :cond_6
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSim0View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 245
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 246
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 255
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 256
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "KeyguardCarrierInfoView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSim0View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 266
    return-void
.end method

.method public updateSimInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 269
    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSim0View:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    :cond_0
    return-void
.end method

.method public updateViewsColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->mSim0View:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 231
    return-void
.end method
