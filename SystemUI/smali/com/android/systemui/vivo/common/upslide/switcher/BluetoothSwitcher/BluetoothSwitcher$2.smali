.class Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;
.super Ljava/lang/Object;
.source "BluetoothSwitcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->setOnLongClickListener()V
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
    .line 85
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 90
    :try_start_0
    const-string v2, "BluetoothSwitcher"

    const-string v3, "mBtLongClickListener"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$002(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;Z)Z

    .line 92
    const-string v2, "com.android.bluetoothsettings.Settings$BluetoothSettingsActivity"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getCurrentActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    :goto_0
    return v5

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BluetoothSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBtLongClickListener, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/BluetoothSwitcher/BluetoothSwitcher$2;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
