.class Lcom/android/systemui/keyguard/KeyguardService$1;
.super Lcom/android/internal/policy/IKeyguardService$Stub;
.source "KeyguardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardService;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardService;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    .line 73
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss()V

    .line 97
    return-void
.end method

.method public dispatch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 191
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 139
    return-void
.end method

.method public hideKeyguardByFingerprint(I)V
    .locals 1
    .param p1, "hide"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->hideKeyguardByFingerprint(I)V

    .line 197
    return-void
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isDismissable()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public keyguardDone(ZZ)V
    .locals 1
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 85
    return-void
.end method

.method public onActivityDrawn()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onActivityDrawn()V

    .line 163
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onBootCompleted()V

    .line 151
    return-void
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStarted()V

    .line 103
    return-void
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onDreamingStopped()V

    .line 109
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 114
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOff(I)V

    .line 115
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 121
    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->onSystemReady()V

    .line 133
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setCurrentUser(I)V

    .line 145
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setKeyguardEnabled(Z)V

    .line 127
    return-void
.end method

.method public setOccluded(Z)V
    .locals 1
    .param p1, "isOccluded"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(Z)V

    .line 91
    return-void
.end method

.method public showAssistant()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 187
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->startKeyguardExitAnimation(JJ)V

    .line 157
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardService;->checkPermission()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->this$0:Lcom/android/systemui/keyguard/KeyguardService;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardService;->access$000(Lcom/android/systemui/keyguard/KeyguardService;)Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    .line 79
    return-void
.end method
