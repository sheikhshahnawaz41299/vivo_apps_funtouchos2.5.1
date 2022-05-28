.class final Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessPointControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;

    .prologue
    .line 247
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 273
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$402(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Z)Z

    .line 278
    :cond_1
    return-void
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 251
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    if-nez v1, :cond_2

    .line 252
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AccessPointController"

    const-string v2, "Registering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 263
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    .line 269
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    if-eqz v1, :cond_1

    .line 265
    invoke-static {}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AccessPointController"

    const-string v2, "Unregistering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 267
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->mRegistered:Z

    goto :goto_0
.end method
