.class Lcom/vivo/settings/OtgSettingsFragment$2;
.super Ljava/util/TimerTask;
.source "OtgSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/OtgSettingsFragment;->onResume()V
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
    .line 73
    iput-object p1, p0, Lcom/vivo/settings/OtgSettingsFragment$2;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vivo/settings/OtgSettingsFragment$2;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    invoke-static {v0}, Lcom/vivo/settings/OtgSettingsFragment;->access$100(Lcom/vivo/settings/OtgSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/settings/OtgSettingsFragment$2$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/OtgSettingsFragment$2$1;-><init>(Lcom/vivo/settings/OtgSettingsFragment$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
