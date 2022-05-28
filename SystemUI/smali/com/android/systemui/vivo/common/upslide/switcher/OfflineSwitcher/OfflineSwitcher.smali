.class public Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "OfflineSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OfflineSwitcher"


# instance fields
.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 23
    invoke-static {p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mName:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->onOfflineModeChangeFinished()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private onOfflineModeChangeFinished()V
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->setIntermediateState(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->refreshDisplay()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "status.bar.update.plmn.spn"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method private updateOfflineSwitcher()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->getIntermediateState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    const-string v2, "OfflineSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switcher_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mName:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in intermediate state, forbid update."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 108
    .local v1, "on":Z
    const-string v2, "OfflineSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Switcher_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mName:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", on is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mTextColorLight:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_3

    .line 112
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 116
    :goto_2
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 109
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mTextColorDark:I

    goto :goto_1

    .line 114
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205fb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f0205fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->getSwitcherIcon()V

    .line 55
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->updateOfflineSwitcher()V

    .line 29
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 94
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public switchOfflineMode(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 130
    .local v1, "newState":Z
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 131
    .local v0, "currState":Z
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->getIntermediateState()Z

    move-result v2

    .line 132
    .local v2, "switching":Z
    const-string v3, "OfflineSwitcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try switching airplane mode in AT, newState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", switching = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-nez v2, :cond_0

    if-eq v1, v0, :cond_0

    .line 134
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 136
    :cond_0
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 42
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->setIntermediateState(Z)V

    .line 44
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 45
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->mTextColorLight:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 50
    :cond_0
    return-void
.end method
