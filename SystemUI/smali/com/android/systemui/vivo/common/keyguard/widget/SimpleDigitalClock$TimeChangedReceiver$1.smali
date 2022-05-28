.class Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "SimpleDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;Landroid/content/Intent;Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 65
    .local v0, "timezoneChanged":Z
    if-eqz v0, :cond_0

    .line 66
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v3, "time-zone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "tz":Ljava/lang/String;
    const-string v2, "SimpleDigitalClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time zone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v1    # "tz":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->updateTime()V

    .line 71
    return-void
.end method
