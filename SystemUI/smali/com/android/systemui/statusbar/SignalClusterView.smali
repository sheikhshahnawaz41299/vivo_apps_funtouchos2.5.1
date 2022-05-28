.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String; = "SignalClusterView"


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescription:I

.field private mAirplaneIconId:I

.field private mEndPadding:I

.field private mEndPaddingNothingVisible:I

.field private mIsAirplaneMode:Z

.field mMobileSignalGroup:Landroid/widget/LinearLayout;

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNoSims:Landroid/widget/ImageView;

.field private mNoSimsVisible:Z

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private mSecondaryTelephonyPadding:I

.field mVpn:Landroid/widget/ImageView;

.field private mVpnVisible:Z

.field private mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiAirplaneSpacer:Landroid/view/View;

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 52
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/SignalClusterView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/SignalClusterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/SignalClusterView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method private apply()V
    .locals 11

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 262
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v5, :cond_0

    .line 316
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_4

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v8, "SignalClusterView"

    const-string v9, "vpn: %s"

    new-array v10, v1, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_5

    const-string v5, "VISIBLE"

    :goto_2
    aput-object v5, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_6

    .line 267
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 268
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 274
    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v8, "SignalClusterView"

    const-string v9, "wifi: %s sig=%d"

    const/4 v5, 0x2

    new-array v10, v5, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_7

    const-string v5, "VISIBLE"

    :goto_4
    aput-object v5, v10, v6

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_2
    const/4 v0, 0x0

    .line 280
    .local v0, "anyMobileVisible":Z
    const/4 v2, 0x0

    .line 281
    .local v2, "firstMobileTypeId":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 282
    .local v4, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->apply(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 283
    if-nez v0, :cond_3

    .line 284
    invoke-static {v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$500(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    .line 285
    const/4 v0, 0x1

    goto :goto_5

    .end local v0    # "anyMobileVisible":Z
    .end local v2    # "firstMobileTypeId":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_4
    move v5, v7

    .line 264
    goto :goto_1

    .line 265
    :cond_5
    const-string v5, "GONE"

    goto :goto_2

    .line 271
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 274
    :cond_7
    const-string v5, "GONE"

    goto :goto_4

    .line 290
    .restart local v0    # "anyMobileVisible":Z
    .restart local v2    # "firstMobileTypeId":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_e

    .line 291
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 292
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:I

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:I

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    :goto_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v5, :cond_f

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_f

    .line 300
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :goto_8
    if-eqz v0, :cond_9

    if-nez v2, :cond_a

    :cond_9
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v5, :cond_10

    :cond_a
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v5, :cond_10

    .line 306
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :goto_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v8, :cond_b

    move v7, v6

    :cond_b
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v5, :cond_c

    if-nez v0, :cond_c

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v5, :cond_11

    .line 315
    .local v1, "anythingVisible":Z
    :cond_c
    :goto_a
    if-eqz v1, :cond_12

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    :goto_b
    invoke-virtual {p0, v6, v6, v5, v6}, Lcom/android/systemui/statusbar/SignalClusterView;->setPaddingRelative(IIII)V

    goto/16 :goto_0

    .line 292
    .end local v1    # "anythingVisible":Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_6

    .line 296
    :cond_e
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 302
    :cond_f
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_8

    .line 308
    :cond_10
    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_11
    move v1, v6

    .line 313
    goto :goto_a

    .line 315
    .restart local v1    # "anythingVisible":Z
    :cond_12
    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    goto :goto_b
.end method

.method private getOrInflateState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 194
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$900(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 198
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v1

    goto :goto_0
.end method

.method private inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 202
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V

    .line 203
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-object v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 223
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 226
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 228
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 111
    const v2, 0x7f1100e4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 112
    const v2, 0x7f1100e5

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 113
    const v2, 0x7f1100e6

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 114
    const v2, 0x7f1100eb

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 115
    const v2, 0x7f1100e9

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    .line 116
    const v2, 0x7f1100ea

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    .line 117
    const v2, 0x7f1100e7

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    .line 118
    const v2, 0x7f1100e8

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 120
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 123
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 124
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    .line 129
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 130
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    .line 131
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 133
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    .line 135
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 136
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    .line 105
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x0

    .line 233
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 235
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 240
    .local v1, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 241
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1000(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_2
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1100(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 244
    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$1100(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 248
    .end local v1    # "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 249
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 253
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    .line 148
    return-void
.end method

.method public setIsAirplaneMode(ZII)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I
    .param p3, "contentDescription"    # I

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 213
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 214
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:I

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 217
    return-void
.end method

.method public setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "typeIcon"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;
    .param p5, "typeContentDescription"    # Ljava/lang/String;
    .param p6, "isTypeIconWide"    # Z
    .param p7, "subId"    # I

    .prologue
    .line 163
    invoke-direct {p0, p7}, Lcom/android/systemui/statusbar/SignalClusterView;->getOrInflateState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    .line 164
    .local v0, "state":Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$302(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 165
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$402(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 166
    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$502(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    .line 167
    invoke-static {v0, p4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$602(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    invoke-static {v0, p5}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$702(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    .line 169
    invoke-static {v0, p6}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->access$802(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 172
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 3
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 85
    return-void
.end method

.method public setNoSims(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    .line 177
    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3
    .param p1, "sc"    # Lcom/android/systemui/statusbar/policy/SecurityController;

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    .line 92
    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 183
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 186
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 187
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 188
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_1
    return-void
.end method

.method public setWifiIndicators(ZILjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 153
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 154
    iput-object p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 157
    return-void
.end method
