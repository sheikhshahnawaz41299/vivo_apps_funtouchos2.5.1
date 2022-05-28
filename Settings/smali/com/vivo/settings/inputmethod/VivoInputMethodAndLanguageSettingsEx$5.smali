.class Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$5;
.super Ljava/lang/Object;
.source "VivoInputMethodAndLanguageSettingsEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 222
    iput-object p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$5;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$5;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    invoke-static {v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->access$300(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$5;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    invoke-static {v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->access$500(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;)Landroid/preference/VivoCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx$5;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;

    invoke-static {v0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;->access$302(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettingsEx;Z)Z

    goto :goto_0
.end method
