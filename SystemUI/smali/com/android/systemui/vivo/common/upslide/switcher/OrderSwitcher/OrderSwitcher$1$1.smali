.class Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1$1;
.super Ljava/lang/Object;
.source "OrderSwitcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1$1;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method
