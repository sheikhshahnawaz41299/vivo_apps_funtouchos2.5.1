.class Lcom/android/keyguard/VivoGenericLoginUnlock$3;
.super Ljava/lang/Object;
.source "VivoGenericLoginUnlock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoGenericLoginUnlock;->loginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoGenericLoginUnlock;)V
    .locals 0

    .prologue
    .line 460
    iput-object p1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$3;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$3;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$602(Lcom/android/keyguard/VivoGenericLoginUnlock;Z)Z

    .line 465
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$3;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v1}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$700(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 466
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$3;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v1}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$500(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/keyguard/VivoGenericLoginUnlock$3$1;

    iget-object v4, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$3;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v4}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$800(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/keyguard/VivoGenericLoginUnlock$3$1;-><init>(Lcom/android/keyguard/VivoGenericLoginUnlock$3;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 472
    iget-object v1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$3;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v1}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$900(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 475
    return-void
.end method
