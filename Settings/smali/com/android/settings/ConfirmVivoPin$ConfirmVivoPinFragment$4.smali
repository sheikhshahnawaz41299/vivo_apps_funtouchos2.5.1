.class Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;
.super Landroid/os/CountDownTimer;
.source "ConfirmVivoPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;JJ)V
    .locals 0
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 590
    invoke-static {v2}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->access$302(Z)Z

    .line 591
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->access$200(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->access$400(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->access$502(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;I)I

    .line 593
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    iget-object v0, v0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 594
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 579
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 580
    .local v0, "secondsCountdown":I
    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->access$200(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;->this$0:Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    invoke-virtual {v2}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b033f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    :cond_0
    return-void
.end method
