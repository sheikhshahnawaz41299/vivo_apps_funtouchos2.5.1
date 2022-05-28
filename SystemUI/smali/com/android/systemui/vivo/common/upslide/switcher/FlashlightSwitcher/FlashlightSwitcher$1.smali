.class Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;
.super Ljava/lang/Object;
.source "FlashlightSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    const-string v1, "FlashlightSwitcher"

    const-string v2, "mFlashlightClickListener.onClick()"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 78
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e023b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 88
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->isFlashlightOn()Z

    move-result v0

    .line 82
    .local v0, "isFlashlightOn":Z
    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    const-string v2, "FlashlightSwitcher"

    const-string v3, "0"

    const-string v4, "0"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/FlashlightSwitcher/FlashlightSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    const-string v2, "FlashlightSwitcher"

    const-string v3, "0"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
