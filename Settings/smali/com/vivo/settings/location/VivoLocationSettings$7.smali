.class Lcom/vivo/settings/location/VivoLocationSettings$7;
.super Landroid/os/Handler;
.source "VivoLocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/location/VivoLocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/location/VivoLocationSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/location/VivoLocationSettings;)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/vivo/settings/location/VivoLocationSettings$7;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 485
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 490
    :goto_0
    return-void

    .line 487
    :pswitch_0
    iget-object v0, p0, Lcom/vivo/settings/location/VivoLocationSettings$7;->this$0:Lcom/vivo/settings/location/VivoLocationSettings;

    invoke-static {v0}, Lcom/vivo/settings/location/VivoLocationSettings;->access$500(Lcom/vivo/settings/location/VivoLocationSettings;)V

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
