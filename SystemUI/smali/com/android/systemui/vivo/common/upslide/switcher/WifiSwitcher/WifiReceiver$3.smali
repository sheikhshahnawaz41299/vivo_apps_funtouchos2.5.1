.class Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$3;
.super Ljava/lang/Object;
.source "WifiReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->handleScanResults()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "WifiReceiver"

    const-string v2, "entry wifi settings activity."

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VIVO_WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    const-string v1, "fromwhere"

    const-string v2, "statusbar"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setUserTurnOn(Z)V

    .line 150
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setScanResultList(Ljava/util/List;)V

    .line 151
    return-void
.end method
