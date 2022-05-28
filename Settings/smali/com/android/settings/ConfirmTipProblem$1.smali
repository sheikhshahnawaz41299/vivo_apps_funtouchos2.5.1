.class Lcom/android/settings/ConfirmTipProblem$1;
.super Landroid/os/Handler;
.source "ConfirmTipProblem.java"


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
    .line 44
    iput-object p1, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v0}, Lcom/android/settings/ConfirmTipProblem;->access$000(Lcom/android/settings/ConfirmTipProblem;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/settings/ConfirmTipProblem;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v0}, Lcom/android/settings/ConfirmTipProblem;->access$002(Lcom/android/settings/ConfirmTipProblem;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v0}, Lcom/android/settings/ConfirmTipProblem;->access$000(Lcom/android/settings/ConfirmTipProblem;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v1}, Lcom/android/settings/ConfirmTipProblem;->access$100(Lcom/android/settings/ConfirmTipProblem;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v0}, Lcom/android/settings/ConfirmTipProblem;->access$000(Lcom/android/settings/ConfirmTipProblem;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/android/settings/ConfirmTipProblem;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v0}, Lcom/android/settings/ConfirmTipProblem;->access$002(Lcom/android/settings/ConfirmTipProblem;Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-static {v0}, Lcom/android/settings/ConfirmTipProblem;->access$000(Lcom/android/settings/ConfirmTipProblem;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmTipProblem$1;->this$0:Lcom/android/settings/ConfirmTipProblem;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmTipProblem;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
