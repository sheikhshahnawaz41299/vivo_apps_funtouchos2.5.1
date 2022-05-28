.class Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$1;
.super Ljava/lang/Object;
.source "KeyguardFindPhonePswView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 199
    iput-object p1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$1;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$1;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    iget-object v0, v0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$1;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$000(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$1;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$100(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 203
    return-void
.end method
