.class Lcom/vivo/settings/MasterClear$ClearThread;
.super Ljava/lang/Thread;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/MasterClear;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/vivo/settings/MasterClear$ClearThread;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/MasterClear;Lcom/vivo/settings/MasterClear$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/MasterClear;
    .param p2, "x1"    # Lcom/vivo/settings/MasterClear$1;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/vivo/settings/MasterClear$ClearThread;-><init>(Lcom/vivo/settings/MasterClear;)V

    return-void
.end method


# virtual methods
.method public clearSet()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vivo/settings/MasterClear$ClearThread;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v0}, Lcom/vivo/settings/MasterClear;->access$700(Lcom/vivo/settings/MasterClear;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 189
    invoke-virtual {p0}, Lcom/vivo/settings/MasterClear$ClearThread;->start()V

    .line 190
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 194
    iget-object v3, p0, Lcom/vivo/settings/MasterClear$ClearThread;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v3}, Lcom/vivo/settings/MasterClear;->access$200(Lcom/vivo/settings/MasterClear;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.bbk.masterclear.restore_settings_cellbroadcast_activate"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    const-string v3, "MasterClear"

    const-string v4, "close bluetooth"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 199
    const-string v3, "MasterClear"

    const-string v4, "restore modem"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/vivo/settings/MasterClear$ClearThread;->this$0:Lcom/vivo/settings/MasterClear;

    const-string v4, "phone"

    invoke-static {v3, v4}, Lcom/vivo/settings/MasterClear;->access$800(Lcom/vivo/settings/MasterClear;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 201
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    iget-object v3, p0, Lcom/vivo/settings/MasterClear$ClearThread;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v3}, Lcom/vivo/settings/MasterClear;->access$200(Lcom/vivo/settings/MasterClear;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    iget-object v3, p0, Lcom/vivo/settings/MasterClear$ClearThread;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v3}, Lcom/vivo/settings/MasterClear;->access$200(Lcom/vivo/settings/MasterClear;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "MasterClear"

    const-string v4, "close lock screen"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v3, "MasterClear"

    const-string v4, "restore time zone"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const-string v3, "persist.sys.timezone"

    const-string v4, "Asia/Shanghai"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v3, "persist.sys.usb.config"

    const-string v4, "charging"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "persist.service.adb.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v3, "persist.radio.data.iccid"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v3, "persist.vivo.enable_fast_charge"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v3, "MasterClear"

    const-string v4, "sleep 2 seconds"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Lcom/vivo/settings/MasterClear$ClearThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    const-string v3, "MasterClear"

    const-string v4, "resetAndRebootPhone"

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Lcom/vivo/settings/MasterClear$ClearThread;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v3}, Lcom/vivo/settings/MasterClear;->access$200(Lcom/vivo/settings/MasterClear;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/settings/MasterClear;->access$900(Landroid/content/Context;)Z

    .line 230
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "MasterClear"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
