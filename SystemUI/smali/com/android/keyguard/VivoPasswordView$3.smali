.class Lcom/android/keyguard/VivoPasswordView$3;
.super Landroid/os/CountDownTimer;
.source "VivoPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoPasswordView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPasswordView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView$3;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$3;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, " "

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 476
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$3;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-virtual {v0}, Lcom/android/keyguard/VivoPasswordView;->resetState()V

    .line 477
    const-string v0, "VivoPasswordView"

    const-string v1, "onFinish = "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$3;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 479
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 466
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 467
    .local v0, "secondsRemaining":I
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$3;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 469
    const-string v1, "VivoPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secondsRemaining = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$3;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 471
    return-void
.end method
