.class Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;
.super Ljava/lang/Object;
.source "BluetoothSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const-string v1, "BluetoothSwitcher"

    const-string v2, "click bt during long click, return"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v1, "BluetoothSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBtClickListener.onClick(), state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->getTriState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 65
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->getTriState()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)V

    .line 76
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->toggleState()V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->refreshDisplay()V

    goto :goto_0

    .line 70
    .restart local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
