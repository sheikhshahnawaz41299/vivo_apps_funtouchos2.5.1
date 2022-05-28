.class Lcom/vivo/settings/VivoDeviceInfoSettings$MyHandler;
.super Landroid/os/Handler;
.source "VivoDeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoDeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vivo/settings/VivoDeviceInfoSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vivo/settings/VivoDeviceInfoSettings;)V
    .locals 1
    .param p1, "activity"    # Lcom/vivo/settings/VivoDeviceInfoSettings;

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 201
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    .line 202
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/VivoDeviceInfoSettings;

    .line 207
    .local v0, "status":Lcom/vivo/settings/VivoDeviceInfoSettings;
    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 211
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    invoke-virtual {v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->updateTimes()V

    .line 214
    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/vivo/settings/VivoDeviceInfoSettings$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
