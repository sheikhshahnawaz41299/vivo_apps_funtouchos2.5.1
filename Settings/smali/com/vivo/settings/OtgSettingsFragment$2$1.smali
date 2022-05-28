.class Lcom/vivo/settings/OtgSettingsFragment$2$1;
.super Ljava/lang/Object;
.source "OtgSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/OtgSettingsFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vivo/settings/OtgSettingsFragment$2;


# direct methods
.method constructor <init>(Lcom/vivo/settings/OtgSettingsFragment$2;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vivo/settings/OtgSettingsFragment$2$1;->this$1:Lcom/vivo/settings/OtgSettingsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment$2$1;->this$1:Lcom/vivo/settings/OtgSettingsFragment$2;

    iget-object v0, v0, Lcom/vivo/settings/OtgSettingsFragment$2;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    iget-object v0, v0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const-string v0, "OtgSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimerisEnabled() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/vivo/settings/OtgSettingsFragment;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment$2$1;->this$1:Lcom/vivo/settings/OtgSettingsFragment$2;

    iget-object v0, v0, Lcom/vivo/settings/OtgSettingsFragment$2;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    iget-object v0, v0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-static {}, Lcom/vivo/settings/OtgSettingsFragment;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 83
    :cond_0
    return-void
.end method
