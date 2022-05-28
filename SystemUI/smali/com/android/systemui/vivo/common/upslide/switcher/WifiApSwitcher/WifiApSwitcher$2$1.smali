.class Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2$1;
.super Ljava/lang/Object;
.source "WifiApSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 64
    const-string v0, "WifiApSwitcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange >>> mWifiApState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiApSwitcher/WifiApSwitcher;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 68
    :cond_0
    return-void
.end method
