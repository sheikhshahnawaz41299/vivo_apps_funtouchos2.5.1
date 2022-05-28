.class Lcom/android/keyguard/EmergencyButton$3;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/EmergencyButton;


# direct methods
.method constructor <init>(Lcom/android/keyguard/EmergencyButton;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "action":Ljava/lang/String;
    const-string v3, "EmergencyButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v3, p1}, Lcom/android/keyguard/EmergencyButton;->access$202(Lcom/android/keyguard/EmergencyButton;Landroid/content/Context;)Landroid/content/Context;

    .line 190
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v3}, Lcom/android/keyguard/EmergencyButton;->access$300(Lcom/android/keyguard/EmergencyButton;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v2

    .line 196
    .local v2, "state":Landroid/telephony/ServiceState;
    const-string v3, "EmergencyButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast  state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    if-nez v3, :cond_4

    .line 200
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v4}, Lcom/android/keyguard/EmergencyButton;->access$400(Lcom/android/keyguard/EmergencyButton;)I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lcom/android/keyguard/EmergencyButton;->access$402(Lcom/android/keyguard/EmergencyButton;I)I

    .line 201
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/keyguard/EmergencyButton;->gEmergency:Z

    .line 202
    const-string v3, "EmergencyButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "if mEmergency="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v5}, Lcom/android/keyguard/EmergencyButton;->access$400(Lcom/android/keyguard/EmergencyButton;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v3}, Lcom/android/keyguard/EmergencyButton;->access$500(Lcom/android/keyguard/EmergencyButton;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v1

    .line 211
    .local v1, "phoneState":I
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v3, v1}, Lcom/android/keyguard/EmergencyButton;->access$100(Lcom/android/keyguard/EmergencyButton;I)V

    goto :goto_0

    .line 204
    .end local v1    # "phoneState":I
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    iget-object v4, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v4}, Lcom/android/keyguard/EmergencyButton;->access$400(Lcom/android/keyguard/EmergencyButton;)I

    move-result v4

    const v5, 0xfffe

    and-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/keyguard/EmergencyButton;->access$402(Lcom/android/keyguard/EmergencyButton;I)I

    .line 205
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v3}, Lcom/android/keyguard/EmergencyButton;->access$400(Lcom/android/keyguard/EmergencyButton;)I

    move-result v3

    const v4, 0xffff

    and-int/2addr v3, v4

    if-nez v3, :cond_5

    .line 206
    iget-object v3, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/keyguard/EmergencyButton;->gEmergency:Z

    .line 208
    :cond_5
    const-string v3, "EmergencyButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "else mEmergency="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/EmergencyButton$3;->this$0:Lcom/android/keyguard/EmergencyButton;

    invoke-static {v5}, Lcom/android/keyguard/EmergencyButton;->access$400(Lcom/android/keyguard/EmergencyButton;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
