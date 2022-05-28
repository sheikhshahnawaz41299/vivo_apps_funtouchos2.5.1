.class Lcom/android/keyguard/KeyguardSimPukView$2;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Lcom/android/keyguard/PasswordTextView$ITextChangedWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged()V
    .locals 5

    .prologue
    .line 312
    const-string v2, "KeyguardSimPukView"

    const-string v3, "afterTextChanged------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "entry":Ljava/lang/String;
    const-string v2, "KeyguardSimPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afterTextChanged entry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v1, 0x0

    .line 316
    .local v1, "minlenth":I
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$1700(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->access$1800(Lcom/android/keyguard/KeyguardSimPukView$StateMachine;)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$1700(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_0

    .line 317
    const/16 v1, 0x8

    .line 321
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/keyguard/KeyguardSimPukView;Z)V

    .line 326
    :goto_1
    return-void

    .line 319
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/keyguard/KeyguardSimPukView;Z)V

    goto :goto_1
.end method
