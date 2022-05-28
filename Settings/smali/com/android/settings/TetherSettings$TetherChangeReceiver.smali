.class Lcom/android/settings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/TetherSettings;
    .param p2, "x1"    # Lcom/android/settings/TetherSettings$1;

    .prologue
    .line 436
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 439
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "action":Ljava/lang/String;
    const-string v9, "TetherSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive act="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const-string v9, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 443
    const-string v7, "availableArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 445
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "activeArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 447
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "erroredArray"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 449
    .local v5, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-static {v10, v7, v8, v9}, Lcom/android/settings/TetherSettings;->access$1200(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 453
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v8, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v8}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$1302(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 454
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1500(Lcom/android/settings/TetherSettings;)V

    .line 533
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    const-string v9, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 456
    iget-object v8, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v8, v7}, Lcom/android/settings/TetherSettings;->access$1602(Lcom/android/settings/TetherSettings;Z)Z

    .line 457
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 458
    :cond_2
    const-string v9, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 459
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$1602(Lcom/android/settings/TetherSettings;Z)Z

    .line 460
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)V

    goto :goto_0

    .line 461
    :cond_3
    const-string v9, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 462
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    const-string v10, "connected"

    invoke-virtual {p2, v10, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/TetherSettings;->access$1802(Lcom/android/settings/TetherSettings;Z)Z

    .line 463
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)V

    .line 465
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v9

    if-nez v9, :cond_5

    .line 467
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v10}, Lcom/android/settings/TetherSettings;->access$1800(Lcom/android/settings/TetherSettings;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v10}, Lcom/android/settings/TetherSettings;->access$2000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v10}, Lcom/android/settings/TetherSettings;->access$2100(Lcom/android/settings/TetherSettings;)Z

    move-result v10

    if-nez v10, :cond_4

    :goto_1
    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_1

    .line 469
    :cond_5
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1800(Lcom/android/settings/TetherSettings;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 470
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$2202(Lcom/android/settings/TetherSettings;Z)Z

    .line 471
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 473
    :cond_6
    const-string v9, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 474
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 475
    const-string v9, "android.bluetooth.adapter.extra.STATE"

    const/high16 v10, -0x80000000

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 496
    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    .line 478
    :sswitch_0
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 479
    .local v3, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v3, :cond_8

    .line 480
    invoke-virtual {v3, v7}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 481
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$102(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_2

    .line 483
    :cond_8
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$2300(Lcom/android/settings/TetherSettings;)V

    goto :goto_2

    .line 489
    .end local v3    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$102(Lcom/android/settings/TetherSettings;Z)Z

    goto :goto_2

    .line 497
    :cond_9
    const-string v9, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 498
    const-string v9, "apn"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, "dataApnKey":Ljava/lang/String;
    const-string v9, "internet"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 503
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9, v8}, Lcom/android/settings/TetherSettings;->access$2202(Lcom/android/settings/TetherSettings;Z)Z

    .line 504
    const-class v9, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v10, "state"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 506
    .local v6, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v9, "TetherSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dataApnKey = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    sget-object v9, Lcom/android/settings/TetherSettings$11;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 527
    :goto_3
    :pswitch_0
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1700(Lcom/android/settings/TetherSettings;)V

    .line 528
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v10}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v10}, Lcom/android/settings/TetherSettings;->access$1800(Lcom/android/settings/TetherSettings;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v10}, Lcom/android/settings/TetherSettings;->access$2000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v10}, Lcom/android/settings/TetherSettings;->access$2100(Lcom/android/settings/TetherSettings;)Z

    move-result v10

    if-nez v10, :cond_a

    :goto_4
    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 509
    :pswitch_1
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 510
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 513
    :pswitch_2
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 514
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 515
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$2000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    .line 520
    :pswitch_3
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 521
    iget-object v9, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v9}, Lcom/android/settings/TetherSettings;->access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    :cond_a
    move v7, v8

    .line 528
    goto :goto_4

    .line 529
    .end local v4    # "dataApnKey":Ljava/lang/String;
    .end local v6    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_b
    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 530
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v8, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v8}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/settings/TetherSettings;->access$1302(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 531
    iget-object v7, p0, Lcom/android/settings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v7}, Lcom/android/settings/TetherSettings;->access$1500(Lcom/android/settings/TetherSettings;)V

    goto/16 :goto_0

    .line 475
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
