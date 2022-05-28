.class Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;
.super Ljava/lang/Thread;
.source "SimcardFlowHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->startNetSpeedDetailActivty()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.iqoo.secure"

    const-string v2, "com.iqoo.secure.datausage.DataUsageShowAppSpeed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 312
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 313
    invoke-static {}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateUtils.getInstance().isKeyguardShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", KeyguardNotificationManager.getInstance(mContext).isShowing() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->access$100(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->access$100(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->access$200(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->access$200(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;->this$0:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->access$100(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 324
    return-void

    .line 320
    :catch_0
    move-exception v1

    goto :goto_0
.end method
