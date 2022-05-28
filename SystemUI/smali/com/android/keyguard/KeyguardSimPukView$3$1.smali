.class Lcom/android/keyguard/KeyguardSimPukView$3$1;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$3;->onSimLockChangedResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$3;II)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$attemptsRemaining:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 505
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1902(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 506
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$2000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$2000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 509
    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:I

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$300(Lcom/android/keyguard/KeyguardSimPukView;)V

    .line 542
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$2402(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 543
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$1502(Lcom/android/keyguard/KeyguardSimPukView;Z)Z

    .line 513
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$result:I

    if-ne v0, v2, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$attemptsRemaining:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$2100(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPinPukTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$2200(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->vivo_password_enter_puk_code:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    :goto_1
    const-string v0, "KeyguardSimPukView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "verifyPasswordAndUnlock  UpdateSim.onSimCheckResponse:  attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->val$attemptsRemaining:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1700(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    goto :goto_0

    .line 534
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPinPukTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView$3;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$2300(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
