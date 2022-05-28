.class Lcom/android/keyguard/KeyguardSimPinView$4;
.super Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(II)V
    .locals 6
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I

    .prologue
    .line 560
    const-string v1, "KeyguardSimPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSimCheckResponse  dummy One result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attemptsRemaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    if-ltz p2, :cond_0

    .line 564
    const-string v0, ""

    .line 565
    .local v0, "displayMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v1, p2}, Lcom/android/keyguard/KeyguardSimPinView;->access$902(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 568
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->vivo_pinpuk_attempts:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardSimPinView;->access$900(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$4;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    return-void
.end method
