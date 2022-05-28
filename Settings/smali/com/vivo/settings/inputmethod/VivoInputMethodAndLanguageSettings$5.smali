.class Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$5;
.super Ljava/lang/Object;
.source "VivoInputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 225
    iput-object p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$5;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$5;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-static {v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->access$300(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$5;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-static {v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->access$500(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$5;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-static {v0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->access$302(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;Z)Z

    goto :goto_0
.end method
