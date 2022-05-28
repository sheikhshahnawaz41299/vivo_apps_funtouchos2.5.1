.class Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$4;
.super Ljava/lang/Object;
.source "KeyguardFindPhonePswView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;
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
    .line 337
    iput-object p1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$4;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lcom/android/keyguard/R$id;->button_fppsw_confirm:I

    if-ne v1, v2, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$4;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$000(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$4;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$000(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "sPsw":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$4;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v1, v0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$500(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;Ljava/lang/String;)V

    goto :goto_0
.end method
