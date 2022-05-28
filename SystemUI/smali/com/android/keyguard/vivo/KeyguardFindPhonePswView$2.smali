.class Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$2;
.super Ljava/lang/Object;
.source "KeyguardFindPhonePswView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$2;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$2;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$200(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$2;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$300(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 217
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 211
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 208
    return-void
.end method
