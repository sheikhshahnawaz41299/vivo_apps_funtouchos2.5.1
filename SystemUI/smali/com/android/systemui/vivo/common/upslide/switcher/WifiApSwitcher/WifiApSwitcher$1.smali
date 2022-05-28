.class Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$1;
.super Landroid/os/Handler;
.source "WifiApSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)V

    .line 46
    :cond_0
    return-void
.end method
