.class Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoInputMethodAndLanguageSettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;


# direct methods
.method constructor <init>(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$1;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$1;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    const-string v1, "input_method_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->access$002(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$1;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    invoke-static {v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->access$100(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)V

    .line 64
    return-void
.end method
