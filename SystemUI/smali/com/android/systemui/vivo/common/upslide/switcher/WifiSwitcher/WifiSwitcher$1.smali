.class Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;
.super Ljava/lang/Object;
.source "WifiSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 127
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 128
    const-string v6, "WifiSwitcher"

    const-string v7, "click too fastly"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-boolean v6, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->sWifiApSwitcherClicked:Z

    if-eqz v6, :cond_2

    .line 133
    const-string v6, "WifiSwitcher"

    const-string v7, "WifiApSwitcher.sWifiApSwitcherClicked is true"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    const-string v6, "WifiSwitcher"

    const-string v7, "click wifi during long click, return"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    const-string v6, "WifiSwitcher"

    const-string v7, "mWifiClickListener.onClick()"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 143
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    .line 144
    .local v1, "state":I
    const-string v6, "WifiSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "click wifi-button, ActualState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v6, 0x2

    if-eq v1, v6, :cond_0

    const/4 v6, 0x3

    if-eq v1, v6, :cond_0

    .line 149
    if-nez v1, :cond_a

    .line 151
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 152
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    .line 153
    .local v5, "wifiApState":I
    const/16 v6, 0xc

    if-eq v5, v6, :cond_4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_5

    .line 155
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->collapseUpSlideView()V

    .line 156
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)V

    goto :goto_0

    .line 162
    .end local v5    # "wifiApState":I
    :cond_5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_1
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isCmccTestVersion()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 169
    invoke-static {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->setEntered(Z)V

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.settings.VIVO_WIFI_SETTINGS"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    const-string v6, "fromwhere"

    const-string v7, "statusbar"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->collapseUpSlideView()V

    .line 177
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 179
    .local v2, "now":J
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)J

    move-result-wide v6

    sub-long v6, v2, v6

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_8

    .line 180
    const-string v6, "WifiSwitcher"

    const-string v7, "The scan result is too old , so we request a new scan"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$900(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 182
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$900(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 183
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$902(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;Ljava/util/List;)Ljava/util/List;

    .line 185
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/net/wifi/WifiManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 187
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6, v10}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$1002(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;Z)Z

    .line 188
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$1102(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;J)J

    .line 189
    const-string v6, "WifiSwitcher"

    const-string v7, "onClick startScan"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v2    # "now":J
    :cond_9
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$1500(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->toggleState(Landroid/content/Context;)V

    .line 213
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->refreshDisplay()V

    goto/16 :goto_0

    .line 192
    :cond_a
    if-ne v1, v10, :cond_0

    .line 194
    const-string v6, "WifiSwitcher"

    const-string v7, "state == STATE_ENABLED"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$1200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    invoke-static {v6, v7, v9}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 198
    .local v4, "wfd_enabled":I
    const-string v6, "WifiSwitcher"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state == STATE_ENABLED"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    if-lez v4, :cond_9

    .line 200
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$1300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->WIFI_DISPLAY_ON:Ljava/lang/String;

    invoke-static {v6, v7, v9}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$Global;->putInt(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 203
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$1400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->toggleState(Landroid/content/Context;)V

    .line 204
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->refreshDisplay()V

    goto/16 :goto_0

    .line 164
    .end local v4    # "wfd_enabled":I
    :catch_0
    move-exception v6

    goto/16 :goto_1
.end method
