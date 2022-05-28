.class Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$2;
.super Ljava/lang/Object;
.source "VivoDateTimeSettingsSetupWizardEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->onResume()V
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
    .line 113
    iput-object p1, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$2;->this$0:Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx$2;->this$0:Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;->access$000(Lcom/vivo/settings/VivoDateTimeSettingsSetupWizardEx;Z)V

    .line 118
    return-void
.end method
