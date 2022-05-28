.class public Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "FlashlightSwitcher.java"


# static fields
.field private static final FLASH_LIGHT_CLASS:Ljava/lang/String; = "com.vivo.daemonService.flashlight.VivoFlashlightService"

.field private static final FLASH_LIGHT_PACKAGENAME:Ljava/lang/String; = "com.vivo.daemonService"

.field public static final KEY_FLASHLIGHT_STATE:Ljava/lang/String; = "FlashState"

.field private static final TAG:Ljava/lang/String; = "FlashlightSwitcher"


# instance fields
.field private mBatteryLevel:I

.field private mFlashlight:Landroid/hardware/Flashlight;

.field private mFlashlightSettingsObserver:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;

.field private mHandler:Landroid/os/Handler;

.field private mLastFlashlightState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mBatteryLevel:I

    .line 177
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    .prologue
    .line 22
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->switchFlashlight()V

    return-void
.end method

.method private switchFlashlight()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.flashlight.ACTION_SWITCH_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.vivo.daemonService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "com.vivo.daemonService"

    const-string v2, "com.vivo.daemonService.flashlight.VivoFlashlightService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    return-void
.end method

.method private updateFlashlightButton(Z)V
    .locals 7
    .param p1, "flashState"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 98
    const-string v1, "FlashlightSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update Switcher_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mName:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flashState is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mTextColorLight:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_2

    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 106
    :goto_1
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 108
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_0
    return-void

    .line 99
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mTextColorDark:I

    goto :goto_0

    .line 104
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private updateSystemSettings(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 131
    const-string v0, "FlashlightSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettingsFlashState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    const-string v1, "FlashState"

    invoke-static {v0, v1, p1}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 133
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mLastFlashlightState:I

    .line 134
    return-void
.end method


# virtual methods
.method public getFlashlightState()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mFlashlight:Landroid/hardware/Flashlight;

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mFlashlight:Landroid/hardware/Flashlight;

    invoke-virtual {v0}, Landroid/hardware/Flashlight;->getFlashlightState()I

    move-result v0

    goto :goto_0
.end method

.method public getLastFlashlightState()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mLastFlashlightState:I

    return v0
.end method

.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0205f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 55
    return-void
.end method

.method public init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V
    .locals 3
    .param p1, "helper"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;->init(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V

    .line 39
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mFlashlightSettingsObserver:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mFlashlightSettingsObserver:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->startObserving()V

    .line 41
    return-void
.end method

.method public isFlashlightOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->getFlashlightState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBatteryChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    :try_start_0
    const-string v1, "level"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mBatteryLevel:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mBatteryLevel:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->turnOffFlashlight()V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const-string v1, "FlashlightSwitcher"

    const-string v2, "Failed to process battery changed event."

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFlashlightStateChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 165
    const-string v2, "FlashlightOn"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 166
    .local v0, "state":Z
    const-string v2, "FlashlightSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFlashlightStateChanged(), state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->updateFlashlightButton(Z)V

    .line 168
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->updateSystemSettings(I)V

    .line 169
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/hardware/Flashlight;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/Flashlight;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mFlashlight:Landroid/hardware/Flashlight;

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->getSwitcherIcon()V

    .line 66
    return-void
.end method

.method public refreshDisplay()V
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->isFlashlightOn()Z

    move-result v0

    .line 46
    .local v0, "isFlashlightOn":Z
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->updateFlashlightButton(Z)V

    .line 47
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 90
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 95
    return-void
.end method

.method public turnOffFlashlight()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.flashlight.ACTION_CLOSE_FLASHLIGHT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.vivo.daemonService"

    const-string v2, "com.vivo.daemonService.flashlight.VivoFlashlightService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 126
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->updateSystemSettings(I)V

    .line 127
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->updateFlashlightButton(Z)V

    .line 128
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public upateFlashlightState()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->isFlashlightOn()Z

    move-result v0

    .line 173
    .local v0, "state":Z
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->updateFlashlightButton(Z)V

    .line 174
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->updateSystemSettings(I)V

    .line 175
    return-void

    .line 174
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
