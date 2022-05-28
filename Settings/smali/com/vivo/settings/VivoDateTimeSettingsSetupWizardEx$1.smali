.class Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$1;
.super Ljava/lang/Object;
.source "VivoDateTimeSettingsSetupWizardEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$1;->this$0:Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$1;->this$0:Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->access$000(Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;Z)V

    .line 84
    return-void
.end method
