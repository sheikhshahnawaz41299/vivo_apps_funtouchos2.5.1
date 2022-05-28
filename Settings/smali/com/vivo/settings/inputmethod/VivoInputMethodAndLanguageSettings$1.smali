.class Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoInputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$1;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const-string v0, "InputMethodAndLanguageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "android.intent.action.INPUT_METHOD_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$1;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    const-string v1, "input_method_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->access$002(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$1;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-static {v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->access$100(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V

    .line 70
    :cond_0
    return-void
.end method
