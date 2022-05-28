.class Lcom/vivo/settings/GeneralSettings$3;
.super Ljava/lang/Object;
.source "GeneralSettings.java"

# interfaces
.implements Lcom/vivo/settings/ServiceRunningTools$Callback;


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
    .line 387
    iput-object p1, p0, Lcom/vivo/settings/GeneralSettings$3;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceRunnintResult(Z)V
    .locals 2
    .param p1, "isRunning"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/vivo/settings/GeneralSettings$3;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v0}, Lcom/vivo/settings/GeneralSettings;->access$100(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz p1, :cond_0

    const v0, 0x7f0b087c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 390
    return-void

    .line 389
    :cond_0
    const v0, 0x7f0b087a

    goto :goto_0
.end method
