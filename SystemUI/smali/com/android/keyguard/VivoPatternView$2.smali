.class Lcom/android/keyguard/VivoPatternView$2;
.super Landroid/os/CountDownTimer;
.source "VivoPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoPatternView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPatternView;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/keyguard/VivoPatternView$2;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 454
    const-string v0, "VivoPatternView"

    const-string v1, "onFinish  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$2;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/UnLockPatternView;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$2;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget-object v0, v0, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v1, " "

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 458
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    .line 446
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 447
    .local v0, "secondsRemaining":I
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView$2;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 449
    const-string v1, "VivoPatternView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "millisUntilFinished ==  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void
.end method
