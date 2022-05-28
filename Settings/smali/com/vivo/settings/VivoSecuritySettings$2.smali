.class Lcom/vivo/settings/VivoSecuritySettings$2;
.super Ljava/lang/Object;
.source "VivoSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoSecuritySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoSecuritySettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoSecuritySettings;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/vivo/settings/VivoSecuritySettings$2;->this$0:Lcom/vivo/settings/VivoSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 148
    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$2;->this$0:Lcom/vivo/settings/VivoSecuritySettings;

    invoke-static {v0}, Lcom/vivo/settings/VivoSecuritySettings;->access$300(Lcom/vivo/settings/VivoSecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$2;->this$0:Lcom/vivo/settings/VivoSecuritySettings;

    invoke-static {v0}, Lcom/vivo/settings/VivoSecuritySettings;->access$400(Lcom/vivo/settings/VivoSecuritySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 150
    return-void
.end method
