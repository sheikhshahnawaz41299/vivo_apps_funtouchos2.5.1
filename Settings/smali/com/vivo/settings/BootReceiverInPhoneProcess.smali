.class public Lcom/vivo/settings/BootReceiverInPhoneProcess;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiverInPhoneProcess.java"


# static fields
.field private static final MSG_CHECK_USB_TETHER:I = 0x64

.field private static final TAG:Ljava/lang/String; = "BootReceiverInPhoneProcess"

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static newSimNumber:I

.field private static newSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput v0, Lcom/vivo/settings/BootReceiverInPhoneProcess;->newSimNumber:I

    .line 19
    sput v0, Lcom/vivo/settings/BootReceiverInPhoneProcess;->newSimSlot:I

    .line 57
    new-instance v0, Lcom/vivo/settings/BootReceiverInPhoneProcess$1;

    invoke-direct {v0}, Lcom/vivo/settings/BootReceiverInPhoneProcess$1;-><init>()V

    sput-object v0, Lcom/vivo/settings/BootReceiverInPhoneProcess;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/vivo/settings/BootReceiverInPhoneProcess;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    const-string v2, "BootReceiverInPhoneProcess"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    sput-object p1, Lcom/vivo/settings/BootReceiverInPhoneProcess;->mContext:Landroid/content/Context;

    .line 34
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    :cond_2
    sget-object v2, Lcom/vivo/settings/BootReceiverInPhoneProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "vivo.settings.service.AUTO_DATE_TIME_FROM_VIVO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "autoTime":Landroid/content/Intent;
    sget-object v2, Lcom/vivo/settings/AutoDateTimeService;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    sget-object v2, Lcom/vivo/settings/BootReceiverInPhoneProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 49
    .end local v1    # "autoTime":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/android/settings/AppFeature;->isNeedRndisAndDiag()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    sget-object v2, Lcom/vivo/settings/BootReceiverInPhoneProcess;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/vivo/settings/BootReceiverInPhoneProcess;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 52
    const-string v2, "BootReceiverInPhoneProcess"

    const-string v3, "should MSG_CHECK_USB_TETHER"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
