.class Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;
.super Ljava/lang/Object;
.source "SwitcherHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onVisitModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

.field final synthetic val$isVisitModeOn:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;Z)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;->val$isVisitModeOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;->val$isVisitModeOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    move-result-object v0

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->isAppHidedInVisitMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->hide()V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->hide()V

    .line 399
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WechatScanSwitcher/WechatScanSwitcher;->show()V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/OrderSwitcher/OrderSwitcher;->show()V

    goto :goto_0
.end method
