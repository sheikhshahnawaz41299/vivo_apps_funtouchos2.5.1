.class Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;
.super Ljava/lang/Object;
.source "OrderSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 55
    const-string v0, "OrderSwitcher"

    const-string v1, "mOrderClickListener.onClick()"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 72
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v0

    const-string v1, "OrderSwitcher"

    const-string v2, "0"

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
