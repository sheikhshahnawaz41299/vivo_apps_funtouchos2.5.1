.class Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$2;
.super Landroid/os/Handler;
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
    .line 73
    iput-object p1, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$2;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    const-string v0, "InputMethodAndLanguageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMessage what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings$2;->this$0:Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;

    invoke-static {v0}, Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;->access$200(Lcom/vivo/settings/inputmethod/VivoInputMethodAndLanguageSettings;)V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
