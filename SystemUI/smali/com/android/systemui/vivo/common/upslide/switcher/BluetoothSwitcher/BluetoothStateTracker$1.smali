.class Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;
.super Landroid/os/AsyncTask;
.source "BluetoothStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->toggleState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 34
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 35
    .local v0, "enabledFlag":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v1

    .line 37
    .local v1, "wasSetSuccessful":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 38
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    if-eqz v0, :cond_1

    const/16 v2, 0xb

    :goto_1
    invoke-static {v3, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->access$102(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;I)I

    .line 43
    :goto_2
    const/4 v2, 0x0

    return-object v2

    .line 35
    .end local v1    # "wasSetSuccessful":Z
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v1

    goto :goto_0

    .line 38
    .restart local v1    # "wasSetSuccessful":Z
    :cond_1
    const/16 v2, 0xd

    goto :goto_1

    .line 40
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothStateTracker;)V

    goto :goto_2
.end method
