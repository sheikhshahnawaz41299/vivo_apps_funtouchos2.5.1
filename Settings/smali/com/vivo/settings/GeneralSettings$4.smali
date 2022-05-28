.class Lcom/vivo/settings/GeneralSettings$4;
.super Landroid/os/AsyncTask;
.source "GeneralSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/GeneralSettings;->updateNfcStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/GeneralSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/GeneralSettings;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/vivo/settings/GeneralSettings$4;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$4;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$700(Lcom/vivo/settings/GeneralSettings;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 398
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/GeneralSettings$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$4;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$600(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$4;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$600(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b087c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 405
    :cond_0
    return-void

    .line 403
    :cond_1
    const v0, 0x7f0b087a

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 398
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/GeneralSettings$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
