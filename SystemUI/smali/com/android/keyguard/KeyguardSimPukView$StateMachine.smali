.class Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 146
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 147
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 148
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 149
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p2, "x1"    # Lcom/android/keyguard/KeyguardSimPukView$1;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardSimPukView$StateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .prologue
    .line 144
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return v0
.end method


# virtual methods
.method public next()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "msg":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$800(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 158
    sget v0, Lcom/android/keyguard/R$string;->vivo_password_enter_new_pin_code:I

    .line 191
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/keyguard/KeyguardSimPukView;Z)V

    .line 193
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(Z)V

    .line 194
    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mPinPukTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 200
    :cond_1
    return-void

    .line 161
    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_0

    .line 163
    :cond_3
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_5

    .line 164
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 168
    sget v0, Lcom/android/keyguard/R$string;->vivo_password_Confirm_pin_code:I

    goto :goto_0

    .line 171
    :cond_4
    sget v0, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    .line 173
    :cond_5
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 175
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 178
    sget v0, Lcom/android/keyguard/R$string;->vivo_password_enter_puk_code:I

    .line 180
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1000(Lcom/android/keyguard/KeyguardSimPukView;)V

    goto :goto_0

    .line 182
    :cond_6
    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 185
    sget v0, Lcom/android/keyguard/R$string;->vivo_mismatchPin:I

    goto :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1202(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1302(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1400(Lcom/android/keyguard/KeyguardSimPukView;)V

    .line 207
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1500(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1600(Lcom/android/keyguard/KeyguardSimPukView;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    .line 211
    return-void
.end method
