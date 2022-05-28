.class public Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;
.super Landroid/database/ContentObserver;
.source "FlashlightSettingsObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlashlightSettingsObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "flashlightSwitcher"    # Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 19
    iput-object p3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mContext:Landroid/content/Context;

    .line 20
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    .line 21
    return-void
.end method

.method private getLastFlashlightState()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->getLastFlashlightState()I

    move-result v0

    goto :goto_0
.end method

.method private isScreenOn()Z
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 45
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 48
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    goto :goto_0
.end method

.method private turnOffFlashlight()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->turnOffFlashlight()V

    .line 55
    :cond_0
    return-void
.end method

.method private updateFlashlightState()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->upateFlashlightState()V

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    .line 32
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mFlashlightSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->isFlashlightOn()Z

    move-result v0

    .line 33
    .local v0, "isFlashlightOn":Z
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->getLastFlashlightState()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 34
    .local v1, "lastFlashlightState":Z
    :goto_0
    const-string v2, "FlashlightSettingsObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flash settings changed isFlashlightOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastFlashlightState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->turnOffFlashlight()V

    .line 38
    :cond_0
    if-eq v0, v1, :cond_1

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->updateFlashlightState()V

    .line 41
    :cond_1
    return-void

    .line 33
    .end local v1    # "lastFlashlightState":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startObserving()V
    .locals 3

    .prologue
    .line 25
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 26
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "FlashState"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    return-void
.end method
