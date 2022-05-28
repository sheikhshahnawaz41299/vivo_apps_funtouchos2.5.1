.class public Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;
.super Landroid/widget/LinearLayout;
.source "VivoSignalClusterViewRight.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoNetworkController"


# instance fields
.field private mFlag:I

.field private mHD:Landroid/widget/ImageView;

.field private mHDVisible:Z

.field private mMobileActivity:[Landroid/widget/ImageView;

.field private mMobileActivityId:[I

.field private mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileType:[Landroid/widget/ImageView;

.field private mMobileTypeId:[I

.field private mMobileVisible:[Z

.field private mNumPhones:I

.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

.field private mVoLte:Landroid/widget/ImageView;

.field private mVoLteVisible:Z

.field private mWifi:Landroid/widget/ImageView;

.field private mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field private mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiToWifi:Z

.field private mWifiUnAvailable:Z

.field private mWifiUnAvailableIcon:Landroid/widget/ImageView;

.field private mWifiUnAvailableIconId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLteVisible:Z

    .line 35
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHDVisible:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiVisible:Z

    .line 40
    iput v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiStrengthId:I

    iput v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivityId:I

    .line 41
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiToWifi:Z

    .line 44
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailable:Z

    .line 45
    iput v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIconId:I

    .line 54
    iput v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    .line 69
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 70
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    .line 71
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 72
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileType:[Landroid/widget/ImageView;

    .line 73
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivity:[Landroid/widget/ImageView;

    .line 74
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileVisible:[Z

    .line 75
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileTypeId:[I

    .line 76
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivityId:[I

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileVisible:[Z

    aput-boolean v2, v1, v0

    .line 80
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileTypeId:[I

    aput v2, v1, v0

    .line 81
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivityId:[I

    aput v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 89
    const v1, 0x7f11024a

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    .line 90
    const v1, 0x7f11024b

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    .line 91
    const v1, 0x7f1100e5

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiGroup:Landroid/view/ViewGroup;

    .line 92
    const v1, 0x7f1100e6

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifi:Landroid/widget/ImageView;

    .line 93
    const v1, 0x7f11024c

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivity:Landroid/widget/ImageView;

    .line 94
    const v1, 0x7f11024d

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIcon:Landroid/widget/ImageView;

    .line 96
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileGroup:[Landroid/view/ViewGroup;

    const v1, 0x7f11024e

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v3

    .line 97
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileType:[Landroid/widget/ImageView;

    const v1, 0x7f11024f

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 98
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivity:[Landroid/widget/ImageView;

    const v1, 0x7f110250

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v3

    .line 100
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileGroup:[Landroid/view/ViewGroup;

    const v1, 0x7f110251

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    aput-object v1, v2, v0

    .line 102
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileType:[Landroid/widget/ImageView;

    const v1, 0x7f110252

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 103
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivity:[Landroid/widget/ImageView;

    const v1, 0x7f110253

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aput-object v1, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    .line 110
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    .line 111
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiGroup:Landroid/view/ViewGroup;

    .line 112
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifi:Landroid/widget/ImageView;

    .line 113
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivity:Landroid/widget/ImageView;

    .line 114
    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIcon:Landroid/widget/ImageView;

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 118
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 119
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 123
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mFlag:I

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->updateVoLteIcon()V

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->updateHDIcon()V

    .line 286
    return-void
.end method

.method public setHDIcon(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 250
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHDVisible:Z

    .line 251
    if-eqz p1, :cond_2

    .line 252
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 253
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    const v1, 0x7f020235

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :cond_0
    :goto_1
    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    const v1, 0x7f020234

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setMobileDataIndicators(ZIIII)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "voiceTypeIconWithSlot"    # I
    .param p3, "dataTypeIconWithSlot"    # I
    .param p4, "dataActivityIcon"    # I
    .param p5, "subscription"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileVisible:[Z

    aput-boolean p1, v0, p5

    .line 185
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileTypeId:[I

    const/4 v1, -0x1

    if-ne p3, v1, :cond_1

    .end local p2    # "voiceTypeIconWithSlot":I
    :goto_0
    aput p2, v0, p5

    .line 186
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivityId:[I

    aput p4, v0, p5

    .line 188
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileGroup:[Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p5

    if-nez v0, :cond_2

    .line 201
    :cond_0
    :goto_1
    return-void

    .restart local p2    # "voiceTypeIconWithSlot":I
    :cond_1
    move p2, p3

    .line 185
    goto :goto_0

    .line 190
    .end local p2    # "voiceTypeIconWithSlot":I
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileVisible:[Z

    aget-boolean v0, v0, p5

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileType:[Landroid/widget/ImageView;

    aget-object v0, v0, p5

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileType:[Landroid/widget/ImageView;

    aget-object v0, v0, p5

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileTypeId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p5

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p5

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivityId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, p5

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public setVoLte(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v2, 0x0

    .line 215
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLteVisible:Z

    .line 216
    if-eqz p1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 218
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    const v1, 0x7f020236

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    const-string v0, "VivoNetworkController"

    const-string v1, "set volte visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    const v1, 0x7f020233

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    const-string v0, "VivoNetworkController"

    const-string v1, "set volte gone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setWifiIndicators(ZII)V
    .locals 5
    .param p1, "visible"    # Z
    .param p2, "strengthIcon"    # I
    .param p3, "activityIcon"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 144
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiVisible:Z

    .line 145
    iput p2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiStrengthId:I

    .line 146
    iput p3, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivityId:I

    .line 148
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiVisible:Z

    if-eqz v1, :cond_5

    .line 150
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mNumPhones:I

    if-ge v0, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifi:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifi:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiStrengthId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivity:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivityId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiToWifi:Z

    if-eqz v1, :cond_4

    .line 160
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 166
    .end local v0    # "i":I
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setWifiToWifi(Z)V
    .locals 0
    .param p1, "wifiToWifi"    # Z

    .prologue
    .line 289
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiToWifi:Z

    .line 290
    return-void
.end method

.method public setWifiUnAvailableIcon(ZI)V
    .locals 3
    .param p1, "wifiUnAvailable"    # Z
    .param p2, "wifiUnAvailableIconId"    # I

    .prologue
    .line 126
    const-string v0, "VivoNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiUnAvailableIcon, wifiUnAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mWifiVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wifiUnAvailableIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailable:Z

    .line 129
    iput p2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIconId:I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailable:Z

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiUnAvailableIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateHDIcon()V
    .locals 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHDVisible:Z

    if-eqz v0, :cond_0

    .line 270
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    const v1, 0x7f020235

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mHD:Landroid/widget/ImageView;

    const v1, 0x7f020234

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateMobileDataIconQuickly(IIII)V
    .locals 2
    .param p1, "voiceTypeIconWithSlot"    # I
    .param p2, "dataTypeIconWithSlot"    # I
    .param p3, "dataActivityIcon"    # I
    .param p4, "subscription"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileTypeId:[I

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .end local p1    # "voiceTypeIconWithSlot":I
    :goto_0
    aput p1, v0, p4

    .line 205
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivityId:[I

    aput p3, v0, p4

    .line 206
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileType:[Landroid/widget/ImageView;

    aget-object v0, v0, p4

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileType:[Landroid/widget/ImageView;

    aget-object v0, v0, p4

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileTypeId:[I

    aget v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p4

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v0, v0, p4

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mMobileActivityId:[I

    aget v1, v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    :cond_1
    return-void

    .restart local p1    # "voiceTypeIconWithSlot":I
    :cond_2
    move p1, p2

    .line 204
    goto :goto_0
.end method

.method public updateVoLteIcon()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLteVisible:Z

    if-eqz v0, :cond_0

    .line 237
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    const v1, 0x7f020236

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mVoLte:Landroid/widget/ImageView;

    const v1, 0x7f020233

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateWifiIconQuickly(II)V
    .locals 2
    .param p1, "strengthIcon"    # I
    .param p2, "activityIcon"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiStrengthId:I

    .line 172
    iput p2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivityId:I

    .line 173
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifi:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiStrengthId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivity:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;->mWifiActivityId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    :cond_1
    return-void
.end method
