.class Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2$1;
.super Ljava/lang/Object;
.source "BluetoothSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$002(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;Z)Z

    .line 107
    return-void
.end method
