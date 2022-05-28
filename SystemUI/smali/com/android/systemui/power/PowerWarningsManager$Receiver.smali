.class final Lcom/android/systemui/power/PowerWarningsManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerWarningsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerWarningsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerWarningsManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerWarningsManager;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerWarningsManager;Lcom/android/systemui/power/PowerWarningsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/power/PowerWarningsManager;
    .param p2, "x1"    # Lcom/android/systemui/power/PowerWarningsManager$1;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerWarningsManager$Receiver;-><init>(Lcom/android/systemui/power/PowerWarningsManager;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 360
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 361
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.bbk.audiofx.hifi.display"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string v1, "intent.action.super_power_save_send"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    const-string v1, "com.android.service.hallobserver.lock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    const-string v1, "com.android.service.hallobserver.unlock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-static {v1}, Lcom/android/systemui/power/PowerWarningsManager;->access$100(Lcom/android/systemui/power/PowerWarningsManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-static {v3}, Lcom/android/systemui/power/PowerWarningsManager;->access$400(Lcom/android/systemui/power/PowerWarningsManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 366
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 370
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.bbk.audiofx.hifi.display"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerWarningsManager;->access$502(Lcom/android/systemui/power/PowerWarningsManager;Z)Z

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const-string v1, "intent.action.super_power_save_send"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    const-string v2, "entered"

    const-string v3, "sps_action"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerWarningsManager;->access$602(Lcom/android/systemui/power/PowerWarningsManager;Z)Z

    goto :goto_0

    .line 375
    :cond_2
    const-string v1, "com.android.service.hallobserver.lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerWarningsManager;->access$702(Lcom/android/systemui/power/PowerWarningsManager;Z)Z

    .line 377
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-static {v1, v3}, Lcom/android/systemui/power/PowerWarningsManager;->access$802(Lcom/android/systemui/power/PowerWarningsManager;Z)Z

    .line 378
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-virtual {v1}, Lcom/android/systemui/power/PowerWarningsManager;->dismissLowBatteryWarning()V

    goto :goto_0

    .line 379
    :cond_3
    const-string v1, "com.android.service.hallobserver.unlock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-static {v1, v3}, Lcom/android/systemui/power/PowerWarningsManager;->access$702(Lcom/android/systemui/power/PowerWarningsManager;Z)Z

    .line 381
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-static {v1}, Lcom/android/systemui/power/PowerWarningsManager;->access$800(Lcom/android/systemui/power/PowerWarningsManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/android/systemui/power/PowerWarningsManager$Receiver;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/power/PowerWarningsManager;->showLowBatteryWarning(Z)V

    goto :goto_0
.end method
