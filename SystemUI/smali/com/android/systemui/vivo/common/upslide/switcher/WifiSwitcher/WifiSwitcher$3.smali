.class Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;
.super Ljava/lang/Object;
.source "WifiSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->showWifiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 327
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 329
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->collapseUpSlideView()V

    .line 331
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.VIVO_WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$1800(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 338
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->access$1900(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->toggleState(Landroid/content/Context;)V

    .line 339
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->refreshDisplay()V

    .line 340
    return-void

    .line 332
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
