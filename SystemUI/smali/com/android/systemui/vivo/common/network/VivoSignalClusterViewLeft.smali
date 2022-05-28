.class public Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;
.super Landroid/widget/LinearLayout;
.source "VivoSignalClusterViewLeft.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoNetworkController"


# instance fields
.field private mAirplaneModeView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mCsLayoutSIM1:Landroid/widget/LinearLayout;

.field private mCsLayoutSIM2:Landroid/widget/LinearLayout;

.field private mCsNetTypeSIM1:Landroid/widget/ImageView;

.field private mCsNetTypeSIM2:Landroid/widget/ImageView;

.field private mCsSignalTypeSIM1:Landroid/widget/ImageView;

.field private mCsSignalTypeSIM2:Landroid/widget/ImageView;

.field private mDataSignalIconId:[I

.field private mDataTypeIconId:[I

.field private mFlag:I

.field private mLayoutSIM1:Landroid/widget/LinearLayout;

.field private mLayoutSIM2:Landroid/widget/LinearLayout;

.field private mNetworkSpeedView:Landroid/widget/TextView;

.field private mNoSimView:Landroid/widget/TextView;

.field private mPhoneSignalIconId:[I

.field private mPsLayoutSIM1:Landroid/widget/LinearLayout;

.field private mPsLayoutSIM2:Landroid/widget/LinearLayout;

.field private mPsNetTypeSIM1:Landroid/widget/ImageView;

.field private mPsNetTypeSIM2:Landroid/widget/ImageView;

.field private mPsSignalTypeSIM1:Landroid/widget/ImageView;

.field private mPsSignalTypeSIM2:Landroid/widget/ImageView;

.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

.field private mVoiceTypeIconId:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mContext:Landroid/content/Context;

    .line 70
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getPhoneCount()I

    move-result v1

    .line 73
    .local v1, "mNumPhones":I
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    .line 74
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    .line 75
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    .line 76
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aput v3, v2, v0

    .line 80
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aput v3, v2, v0

    .line 81
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aput v3, v2, v0

    .line 82
    iget-object v2, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aput v3, v2, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method private IsShowNoSIMText()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "isSIM1Insert":Z
    const/4 v1, 0x0

    .line 263
    .local v1, "isSIM2Insert":Z
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v0

    .line 265
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 266
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v1

    .line 267
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isNetEntryVersion()Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 270
    goto :goto_0

    .line 272
    :cond_2
    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isUnicomTestVersion()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isNetEntryVersion()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    .line 275
    goto :goto_0
.end method

.method private apply(I)V
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->showAirplaneModeIcon()V

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->showSignalIcon(I)V

    goto :goto_0
.end method

.method private showAirplaneModeIcon()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 232
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->updateAirplaneModeIcon()V

    .line 245
    return-void
.end method

.method private showNoSIMText()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 280
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 283
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    :cond_2
    return-void

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    const v1, -0xb8b8b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private showSignalIcon(I)V
    .locals 11
    .param p1, "subscription"    # I

    .prologue
    const v10, 0x7f0f0129

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 297
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v4

    if-nez v4, :cond_1

    if-ne p1, v9, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v0, 0x0

    .line 301
    .local v0, "isSIM1Insert":Z
    const/4 v2, 0x0

    .line 302
    .local v2, "isSIM2Insert":Z
    const/4 v1, 0x0

    .line 303
    .local v1, "isSIM1RadioOn":Z
    const/4 v3, 0x0

    .line 304
    .local v3, "isSIM2RadioOn":Z
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v7}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v0

    .line 305
    if-eqz v0, :cond_2

    .line 306
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v7}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v1

    .line 308
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 309
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v2

    .line 310
    if-eqz v2, :cond_3

    .line 311
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v3

    .line 315
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->IsShowNoSIMText()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->showNoSIMText()V

    goto :goto_0

    .line 319
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    if-eqz v4, :cond_5

    .line 320
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 324
    :cond_5
    if-nez p1, :cond_1b

    .line 325
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_6

    .line 326
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 328
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_7

    .line 329
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_8

    .line 332
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 334
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_9

    .line 335
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    :cond_9
    if-nez v0, :cond_f

    .line 339
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->alwayShowSIMIcon()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 340
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_a

    .line 341
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_b

    .line 344
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    :cond_b
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    .line 347
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    :cond_c
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v7}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getShowDualSignal(I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 395
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_d

    .line 396
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    :cond_d
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 401
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 350
    :cond_e
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_c

    .line 351
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 354
    :cond_f
    if-nez v1, :cond_13

    .line 355
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->alwayShowSIMIcon()Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v2, :cond_10

    if-eqz v3, :cond_10

    .line 357
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_c

    .line 358
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 361
    :cond_10
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_11

    .line 362
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    :cond_11
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_12

    .line 365
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :cond_12
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    .line 368
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 372
    :cond_13
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_14

    .line 373
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    :cond_14
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_15

    .line 376
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 378
    :cond_15
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_16

    .line 379
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 381
    :cond_16
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v7}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getShowDualSignal(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 382
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    .line 384
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v4, v4, p1

    if-ne v4, v6, :cond_17

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v4, v4, p1

    if-ne v4, v6, :cond_17

    .line 385
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 389
    :cond_17
    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v4, v4, p1

    if-ne v4, v6, :cond_18

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v4, v4, p1

    :goto_2
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_18
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v4, v4, p1

    goto :goto_2

    .line 405
    :cond_19
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1a

    .line 406
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 408
    :cond_1a
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 409
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 413
    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_1c

    .line 414
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    :cond_1c
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_1d

    .line 417
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    :cond_1d
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_1e

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_1e

    .line 420
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 422
    :cond_1e
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_1f

    .line 423
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    :cond_1f
    if-nez v2, :cond_25

    .line 426
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->alwayShowSIMIcon()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 427
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_20

    .line 428
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 430
    :cond_20
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_21

    .line 431
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    :cond_21
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_22

    .line 434
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    :cond_22
    :goto_3
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getShowDualSignal(I)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 481
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_23

    .line 482
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 484
    :cond_23
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 487
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f012a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0

    .line 437
    :cond_24
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_22

    .line 438
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 441
    :cond_25
    if-nez v3, :cond_2a

    .line 442
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->alwayShowSIMIcon()Z

    move-result v4

    if-nez v4, :cond_26

    if-nez v0, :cond_29

    .line 443
    :cond_26
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_27

    .line 444
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    :cond_27
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_28

    .line 447
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    :cond_28
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_22

    .line 450
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 453
    :cond_29
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_22

    .line 454
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 458
    :cond_2a
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_2b

    .line 459
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    :cond_2b
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_2c

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_2c

    .line 462
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    :cond_2c
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v4, v4, p1

    if-eq v4, v6, :cond_2d

    .line 465
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    :cond_2d
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v4, v9}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getShowDualSignal(I)Z

    move-result v4

    if-nez v4, :cond_22

    .line 468
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v4, :cond_22

    .line 470
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v4, v4, p1

    if-ne v4, v6, :cond_2e

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v4, v4, p1

    if-ne v4, v6, :cond_2e

    .line 471
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 475
    :cond_2e
    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v4, v4, p1

    if-ne v4, v6, :cond_2f

    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v4, v4, p1

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_2f
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v4, v4, p1

    goto :goto_4

    .line 491
    :cond_30
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_31

    .line 492
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 494
    :cond_31
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    .line 495
    iget-object v4, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v7, v7, v7, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method private updateAirplaneModeIcon()V
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mFlag:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    const v1, 0x7f020599

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    const v1, 0x7f020598

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public applyQuickly(III)V
    .locals 2
    .param p1, "changedVoiceSignalIconId"    # I
    .param p2, "changedDataSignalIconId"    # I
    .param p3, "subscription"    # I

    .prologue
    const/4 v1, -0x1

    .line 503
    if-eq p1, v1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aput p1, v0, p3

    .line 506
    :cond_0
    if-eq p2, v1, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aput p2, v0, p3

    .line 510
    :cond_1
    if-nez p3, :cond_4

    .line 511
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM1:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM1:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 515
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 525
    :cond_3
    :goto_0
    return-void

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM2:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 519
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 521
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM2:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 89
    const v1, 0x7f110249

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f1100eb

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    .line 91
    const v1, 0x7f11023a

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    .line 93
    const v1, 0x7f11023b

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    .line 94
    const v1, 0x7f11023c

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsLayoutSIM1:Landroid/widget/LinearLayout;

    .line 95
    const v1, 0x7f11023f

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM1:Landroid/widget/LinearLayout;

    .line 96
    const v1, 0x7f11023d

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    .line 97
    const v1, 0x7f11023e

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM1:Landroid/widget/ImageView;

    .line 98
    const v1, 0x7f110240

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    .line 99
    const v1, 0x7f110241

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM1:Landroid/widget/ImageView;

    .line 101
    const v1, 0x7f110242

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    .line 102
    const v1, 0x7f110243

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsLayoutSIM2:Landroid/widget/LinearLayout;

    .line 103
    const v1, 0x7f110246

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM2:Landroid/widget/LinearLayout;

    .line 104
    const v1, 0x7f110244

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    .line 105
    const v1, 0x7f110245

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM2:Landroid/widget/ImageView;

    .line 106
    const v1, 0x7f110247

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    .line 107
    const v1, 0x7f110248

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM2:Landroid/widget/ImageView;

    .line 109
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 110
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->apply(I)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    .line 117
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mAirplaneModeView:Landroid/widget/ImageView;

    .line 118
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    .line 120
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM1:Landroid/widget/LinearLayout;

    .line 121
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsLayoutSIM1:Landroid/widget/LinearLayout;

    .line 122
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM1:Landroid/widget/LinearLayout;

    .line 123
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    .line 124
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM1:Landroid/widget/ImageView;

    .line 125
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    .line 126
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM1:Landroid/widget/ImageView;

    .line 128
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mLayoutSIM2:Landroid/widget/LinearLayout;

    .line 129
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsLayoutSIM2:Landroid/widget/LinearLayout;

    .line 130
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsLayoutSIM2:Landroid/widget/LinearLayout;

    .line 131
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    .line 132
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM2:Landroid/widget/ImageView;

    .line 133
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    .line 134
    iput-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM2:Landroid/widget/ImageView;

    .line 136
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 137
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 528
    iput p1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mFlag:I

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->updateAirplaneModeIcon()V

    .line 530
    return-void
.end method

.method public setMobileDataIndicators(IIIII)V
    .locals 3
    .param p1, "phoneSignalStrengthId"    # I
    .param p2, "dataSignalStrengthIcon"    # I
    .param p3, "voiceTypeIcon"    # I
    .param p4, "dataTypeIcon"    # I
    .param p5, "subscription"    # I

    .prologue
    .line 141
    const-string v0, "VivoNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataIndicators, subscription = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", phoneSignalStrengthId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dataSignalStrengthIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aput p1, v0, p5

    .line 147
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aput p2, v0, p5

    .line 148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aput p3, v0, p5

    .line 149
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aput p4, v0, p5

    .line 151
    invoke-direct {p0, p5}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->apply(I)V

    .line 152
    return-void
.end method

.method public setNetworkSpeed(Ljava/lang/String;)V
    .locals 3
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    .line 542
    move-object v0, p1

    .line 543
    .local v0, "networkSpeed":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 544
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    iget v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mFlag:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 552
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 554
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    const v2, -0xb8b8b9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNetworkSpeedView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 539
    :cond_1
    return-void
.end method

.method public updateMobileDataIconQuickly(IIIII)V
    .locals 4
    .param p1, "phoneSignalStrengthId"    # I
    .param p2, "dataSignalStrengthIcon"    # I
    .param p3, "voiceTypeIcon"    # I
    .param p4, "dataTypeIcon"    # I
    .param p5, "subscription"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 156
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aput p1, v0, p5

    .line 157
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aput p2, v0, p5

    .line 158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aput p3, v0, p5

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aput p4, v0, p5

    .line 161
    if-nez p5, :cond_8

    .line 162
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM1:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM1:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getShowDualSignal(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v0, v0, p5

    if-ne v0, v2, :cond_7

    .line 184
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    :cond_3
    :goto_1
    return-void

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v0, v0, p5

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v0, v0, p5

    if-ne v0, v2, :cond_5

    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 178
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM1:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v0, v0, p5

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v0, v0, p5

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v0, v0, p5

    goto :goto_2

    .line 186
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM2:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsSignalTypeSIM2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataSignalIconId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM2:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 194
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsSignalTypeSIM2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPhoneSignalIconId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 197
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getShowDualSignal(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 210
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v0, v0, p5

    if-ne v0, v2, :cond_f

    .line 212
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 201
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v0, v0, p5

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v0, v0, p5

    if-ne v0, v2, :cond_d

    .line 202
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 206
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mPsNetTypeSIM2:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v0, v0, p5

    if-ne v0, v2, :cond_e

    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v0, v0, p5

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mDataTypeIconId:[I

    aget v0, v0, p5

    goto :goto_4

    .line 214
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mCsNetTypeSIM2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mVoiceTypeIconId:[I

    aget v1, v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public updateResource()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    const v1, 0x7f0e01dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 563
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->mNoSimView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 565
    :cond_0
    return-void
.end method
