.class public final Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;
.super Ljava/lang/Object;
.source "WifiStateTracker.java"


# static fields
.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_INTERMEDIATE:I = 0x5

.field public static final STATE_TURNING_OFF:I = 0x3

.field public static final STATE_TURNING_ON:I = 0x2

.field public static final STATE_UNKNOWN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    .line 18
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mActualState:Ljava/lang/Boolean;

    .line 19
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 31
    return-void
.end method

.method private wifiStateToFiveState(I)I
    .locals 1
    .param p1, "wifiState"    # I

    .prologue
    .line 196
    packed-switch p1, :pswitch_data_0

    .line 206
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 198
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 204
    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 146
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 149
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x5

    .line 123
    const-string v1, "status_wifi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get tri-state, mInTransition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 140
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 136
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 188
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, "wifiState":I
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 154
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestStateChange, desiredState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 156
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 157
    const-string v1, "WifiStateTracker"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v2, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;ZLandroid/net/wifi/WifiManager;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newState"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    .line 73
    .local v0, "wasInTransition":Z
    const-string v1, "status_wifi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set wifi-state, newState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", wasInTransition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mInTransition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIntendedState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    packed-switch p2, :pswitch_data_0

    .line 93
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 94
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 95
    const-string v1, "WifiStateTracker"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const-string v1, "WifiStateTracker"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 106
    :cond_1
    return-void

    .line 76
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    .line 77
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 80
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    .line 81
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 84
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    .line 85
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 88
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    .line 89
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 100
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    .line 101
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 40
    .local v0, "currentState":I
    const/4 v1, 0x0

    .line 41
    .local v1, "newState":Z
    const-string v3, "status_wifi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggle wifi-state, currState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIntendedState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mInTransition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    packed-switch v0, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 57
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 58
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 63
    :goto_1
    return-void

    .line 44
    :pswitch_1
    const/4 v1, 0x0

    .line 45
    goto :goto_0

    .line 47
    :pswitch_2
    const/4 v1, 0x1

    .line 48
    goto :goto_0

    .line 50
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 60
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->mInTransition:Z

    .line 61
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
