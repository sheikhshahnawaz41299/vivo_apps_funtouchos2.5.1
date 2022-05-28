.class public Lcom/android/systemui/vivo/common/utils/StateUtils;
.super Ljava/lang/Object;
.source "StateUtils.java"


# static fields
.field private static sInstance:Lcom/android/systemui/vivo/common/utils/StateUtils;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mState:I

    .line 24
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/systemui/vivo/common/utils/StateUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/StateUtils;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/android/systemui/vivo/common/utils/StateUtils;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/StateUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/StateUtils;

    .line 19
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/StateUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/StateUtils;

    return-object v0
.end method

.method public static isKeyguardShowing(I)Z
    .locals 2
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 64
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKeyguardShowingWithShade(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 68
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKeyguardShowingWithoutShade(I)Z
    .locals 1
    .param p0, "state"    # I

    .prologue
    const/4 v0, 0x1

    .line 72
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getStatusBarState()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mState:I

    return v0
.end method

.method public isKeyguardShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 51
    iget v1, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardShowingWithShade()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardShowingWithoutShade()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 59
    iget v1, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 28
    return-void
.end method

.method public setStatsBarState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mState:I

    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarVisible(Z)V

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mState:I

    if-eq v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 44
    :cond_1
    return-void

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithShade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/StateUtils;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarVisible(Z)V

    goto :goto_0
.end method
