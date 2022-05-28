.class Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$3;
.super Ljava/lang/Object;
.source "VivoInputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 210
    iput-object p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$3;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$3;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->access$302(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;Z)Z

    .line 214
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 215
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$3;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-static {v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->access$400(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 216
    return-void
.end method
