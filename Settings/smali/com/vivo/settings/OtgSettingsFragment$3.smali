.class Lcom/vivo/settings/OtgSettingsFragment$3;
.super Landroid/os/Handler;
.source "OtgSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/OtgSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/OtgSettingsFragment;


# direct methods
.method constructor <init>(Lcom/vivo/settings/OtgSettingsFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vivo/settings/OtgSettingsFragment$3;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment$3;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    iget-object v0, v0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment$3;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    iget-object v0, v0, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->endLoading()V

    .line 117
    :cond_0
    return-void
.end method
