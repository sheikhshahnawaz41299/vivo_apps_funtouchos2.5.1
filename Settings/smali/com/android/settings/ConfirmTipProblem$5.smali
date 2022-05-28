.class Lcom/android/settings/ConfirmTipProblem$5;
.super Ljava/lang/Object;
.source "ConfirmTipProblem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmTipProblem;->createDailog()Landroid/app/Dialog;
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
    .line 182
    iput-object p1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "summaries":[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$400(Lcom/android/settings/ConfirmTipProblem;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 194
    :goto_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_1

    .line 195
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v1

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 206
    :goto_1
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1, p2}, Lcom/android/settings/ConfirmTipProblem;->access$502(Lcom/android/settings/ConfirmTipProblem;I)I

    .line 207
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 208
    return-void

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmTipProblem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 200
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 201
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 202
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$600(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 204
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$5;->this$0:Lcom/android/settings/ConfirmTipProblem;

    iget-object v1, v1, Lcom/android/settings/ConfirmTipProblem;->myHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
