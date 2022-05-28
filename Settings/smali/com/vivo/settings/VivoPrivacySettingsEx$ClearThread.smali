.class Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;
.super Ljava/lang/Thread;
.source "VivoPrivacySettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoPrivacySettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;


# direct methods
.method private constructor <init>(Lcom/vivo/settings/VivoPrivacySettingsEx;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/settings/VivoPrivacySettingsEx;Lcom/vivo/settings/VivoPrivacySettingsEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vivo/settings/VivoPrivacySettingsEx;
    .param p2, "x1"    # Lcom/vivo/settings/VivoPrivacySettingsEx$1;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;-><init>(Lcom/vivo/settings/VivoPrivacySettingsEx;)V

    return-void
.end method


# virtual methods
.method public clearSet()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-static {v0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->access$400(Lcom/vivo/settings/VivoPrivacySettingsEx;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    const-string v0, "PrivacySettings"

    const-string v1, "clearSet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->start()V

    .line 282
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    iget-object v3, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-virtual {v3}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.bbk.masterclear.restore_settings_cellbroadcast_activate"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    const-string v3, "PrivacySettings"

    const-string v4, "close bluetooth"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 291
    const-string v3, "PrivacySettings"

    const-string v4, "restore modem"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v3, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    const-string v4, "phone"

    invoke-static {v3, v4}, Lcom/vivo/settings/VivoPrivacySettingsEx;->access$500(Lcom/vivo/settings/VivoPrivacySettingsEx;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 293
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    iget-object v3, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-virtual {v3}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 296
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 297
    iget-object v3, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-virtual {v3}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 303
    const-string v3, "persist.sys.timezone"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v3, "persist.sys.usb.config"

    const-string v4, "charging"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v3, "persist.service.adb.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v3, "persist.sys.is_allow_pkg_in_sd"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v3, "persist.radio.data.iccid"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    const-string v3, "PrivacySettings"

    const-string v4, "resetAndRebootPhone"

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-virtual {v3}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/settings/VivoPrivacySettingsEx;->access$600(Landroid/content/Context;)Z

    .line 319
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PrivacySettings"

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
