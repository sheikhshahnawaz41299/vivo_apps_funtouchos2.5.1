.class Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$8;
.super Lcom/vivo/services/hallstate/IHallEventListener$Stub;
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
    .line 314
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-direct {p0}, Lcom/vivo/services/hallstate/IHallEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHallStateChanged(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 317
    iget v1, p1, Lcom/vivo/services/hallstate/HallEvent;->state:I

    .line 318
    .local v1, "status":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "protect_lock"

    invoke-static {v4, v5, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 319
    .local v0, "on":Z
    :goto_0
    const-string v4, "KeyguardSmartUpdateMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HallStatus is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", window = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", on = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v4, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$802(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    .line 323
    if-ne v1, v2, :cond_2

    .line 324
    const-string v2, "KeyguardSmartUpdateMonitor"

    const-string v3, "callback because of registering and hall state is open, ignore."

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_1
    return-void

    .end local v0    # "on":Z
    :cond_1
    move v0, v3

    .line 318
    goto :goto_0

    .line 329
    .restart local v0    # "on":Z
    :cond_2
    if-eqz v0, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    goto :goto_1
.end method
