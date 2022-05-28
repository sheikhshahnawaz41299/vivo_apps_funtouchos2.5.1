.class Lcom/vivo/settings/VivoPrivacySettingsEx$3;
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
    .line 246
    iput-object p1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$3;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$3;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->removeDialog(I)V

    .line 250
    return-void
.end method
