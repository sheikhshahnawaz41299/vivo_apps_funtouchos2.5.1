.class Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;
.super Ljava/lang/Object;
.source "PortraitSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 64
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->getIntermediateState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string v2, "PortraitSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switcher_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in intermediate state, forbid click."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    .line 71
    .local v1, "on":Z
    const-string v2, "PortraitSwitcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPortraitClickListener.onClick(), on = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;

    move-result-object v5

    if-nez v1, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v5, v2}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v2, "status.bar.portrait.changed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "it":Landroid/content/Intent;
    const-string v2, "state"

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->turnToIntermediateState()V

    .line 80
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/PortraitSwitcher/PortraitSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v2

    const-string v3, "PortraitSwitcher"

    const-string v4, "0"

    const-string v5, "1"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "it":Landroid/content/Intent;
    :cond_1
    move v2, v4

    .line 73
    goto :goto_1

    .restart local v0    # "it":Landroid/content/Intent;
    :cond_2
    move v3, v4

    .line 75
    goto :goto_2
.end method
