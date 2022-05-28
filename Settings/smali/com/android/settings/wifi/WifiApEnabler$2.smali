.class Lcom/android/settings/wifi/WifiApEnabler$2;
.super Landroid/os/Handler;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApEnabler;->access$500(Lcom/android/settings/wifi/WifiApEnabler;)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler$2;->this$0:Lcom/android/settings/wifi/WifiApEnabler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->access$302(Lcom/android/settings/wifi/WifiApEnabler;Z)Z

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
