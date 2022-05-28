.class Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$11;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSmartUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0

    .prologue
    .line 612
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 616
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 618
    .local v0, "replacing":Z
    if-nez v0, :cond_0

    .line 619
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3802(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    const-string v1, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$11;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 624
    .end local v0    # "replacing":Z
    :cond_0
    return-void
.end method
