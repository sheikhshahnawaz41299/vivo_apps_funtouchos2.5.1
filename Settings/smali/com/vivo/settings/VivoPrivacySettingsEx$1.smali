.class Lcom/vivo/settings/VivoPrivacySettingsEx$1;
.super Landroid/os/Handler;
.source "VivoPrivacySettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoPrivacySettingsEx;
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
    .line 103
    iput-object p1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$1;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    .line 106
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$1;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-static {v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->access$000(Lcom/vivo/settings/VivoPrivacySettingsEx;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx$1;->this$0:Lcom/vivo/settings/VivoPrivacySettingsEx;

    invoke-static {v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->access$100(Lcom/vivo/settings/VivoPrivacySettingsEx;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
