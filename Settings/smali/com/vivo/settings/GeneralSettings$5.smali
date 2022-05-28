.class Lcom/vivo/settings/GeneralSettings$5;
.super Ljava/lang/Object;
.source "GeneralSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/GeneralSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/GeneralSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/GeneralSettings;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/vivo/settings/GeneralSettings$5;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$5;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$800(Lcom/vivo/settings/GeneralSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$5;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$600(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$5;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$600(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$5;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$700(Lcom/vivo/settings/GeneralSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b087c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 420
    :cond_0
    return-void

    .line 418
    :cond_1
    const v0, 0x7f0b087a

    goto :goto_0
.end method
