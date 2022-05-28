.class Lcom/android/settings/ConfirmTipProblem$6;
.super Ljava/lang/Object;
.source "ConfirmTipProblem.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmTipProblem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmTipProblem;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmTipProblem;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/ConfirmTipProblem$6;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/16 v3, 0x80

    const/4 v4, 0x0

    .line 229
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem$6;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v2}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem$6;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v2}, Lcom/android/settings/ConfirmTipProblem;->access$100(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "eText":Ljava/lang/String;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 232
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 233
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem$6;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v2}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem$6;->this$0:Lcom/android/settings/ConfirmTipProblem;

    const v3, 0x7f0b0976

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 236
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem$6;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v2}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 238
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem$6;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v2, v4}, Lcom/android/settings/ConfirmTipProblem;->setTitleRightButtonEnable(Z)V

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ConfirmTipProblem$6;->this$0:Lcom/android/settings/ConfirmTipProblem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/ConfirmTipProblem;->setTitleRightButtonEnable(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 220
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 225
    return-void
.end method
