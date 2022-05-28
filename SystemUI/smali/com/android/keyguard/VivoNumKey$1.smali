.class Lcom/android/keyguard/VivoNumKey$1;
.super Ljava/lang/Object;
.source "VivoNumKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoNumKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoNumKey;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoNumKey;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "thisView"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v1}, Lcom/android/keyguard/VivoNumKey;->access$000(Lcom/android/keyguard/VivoNumKey;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick mDigit = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v3}, Lcom/android/keyguard/VivoNumKey;->access$100(Lcom/android/keyguard/VivoNumKey;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";mTextViewResId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v3}, Lcom/android/keyguard/VivoNumKey;->access$200(Lcom/android/keyguard/VivoNumKey;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v1}, Lcom/android/keyguard/VivoNumKey;->access$300(Lcom/android/keyguard/VivoNumKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v1}, Lcom/android/keyguard/VivoNumKey;->access$200(Lcom/android/keyguard/VivoNumKey;)I

    move-result v1

    if-lez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-virtual {v1}, Lcom/android/keyguard/VivoNumKey;->getRootView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v2}, Lcom/android/keyguard/VivoNumKey;->access$200(Lcom/android/keyguard/VivoNumKey;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/keyguard/PasswordTextView;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    .end local v0    # "v":Landroid/view/View;
    invoke-static {v1, v0}, Lcom/android/keyguard/VivoNumKey;->access$302(Lcom/android/keyguard/VivoNumKey;Lcom/android/keyguard/PasswordTextView;)Lcom/android/keyguard/PasswordTextView;

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v1}, Lcom/android/keyguard/VivoNumKey;->access$300(Lcom/android/keyguard/VivoNumKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v1}, Lcom/android/keyguard/VivoNumKey;->access$300(Lcom/android/keyguard/VivoNumKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v2, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v2}, Lcom/android/keyguard/VivoNumKey;->access$400(Lcom/android/keyguard/VivoNumKey;)Lcom/android/keyguard/KeyguardSecurityModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v2, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v2}, Lcom/android/keyguard/VivoNumKey;->access$400(Lcom/android/keyguard/VivoNumKey;)Lcom/android/keyguard/KeyguardSecurityModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v1}, Lcom/android/keyguard/VivoNumKey;->access$300(Lcom/android/keyguard/VivoNumKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_2

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v1}, Lcom/android/keyguard/VivoNumKey;->access$300(Lcom/android/keyguard/VivoNumKey;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-static {v2}, Lcom/android/keyguard/VivoNumKey;->access$100(Lcom/android/keyguard/VivoNumKey;)I

    move-result v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextView;->append(C)V

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-virtual {v1}, Lcom/android/keyguard/VivoNumKey;->userActivity()V

    .line 69
    iget-object v1, p0, Lcom/android/keyguard/VivoNumKey$1;->this$0:Lcom/android/keyguard/VivoNumKey;

    invoke-virtual {v1}, Lcom/android/keyguard/VivoNumKey;->doHapticKeyClick()V

    goto :goto_0
.end method
