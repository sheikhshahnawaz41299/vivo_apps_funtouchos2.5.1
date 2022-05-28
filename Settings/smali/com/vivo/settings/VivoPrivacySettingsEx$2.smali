.class Lcom/vivo/settings/VivoPrivacySettingsEx$2;
.super Ljava/lang/Object;
.source "VivoPrivacySettingsEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoPrivacySettingsEx;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoPrivacySettingsEx;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$2;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 238
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$2;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-static {v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->access$300(Lcom/vivo/settings/VivoPrivacySettingsEx;)Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 239
    const-string v0, "PrivacySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$2;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-static {v2}, Lcom/vivo/settings/VivoPrivacySettingsEx;->access$300(Lcom/vivo/settings/VivoPrivacySettingsEx;)Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$2;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-static {v0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->access$300(Lcom/vivo/settings/VivoPrivacySettingsEx;)Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;->clearSet()V

    .line 243
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$2;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->removeDialog(I)V

    goto :goto_0
.end method
