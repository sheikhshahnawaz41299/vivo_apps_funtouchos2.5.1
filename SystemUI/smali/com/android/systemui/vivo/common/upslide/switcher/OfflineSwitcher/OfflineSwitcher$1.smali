.class Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;
.super Ljava/lang/Object;
.source "OfflineSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->getIntermediateState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    const-string v1, "OfflineSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switcher_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in intermediate state, forbid click."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 70
    .local v0, "on":Z
    const-string v1, "OfflineSwitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOfflineClickListener.onClick(), on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;Z)V

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$1;->start()V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->turnToIntermediateState()V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 87
    if-eqz v0, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    const-string v2, "OfflineSwitcher"

    const-string v3, "0"

    const-string v4, "0"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/OfflineSwitcher/OfflineSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    const-string v2, "OfflineSwitcher"

    const-string v3, "0"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
