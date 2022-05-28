.class Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher$1;
.super Ljava/lang/Object;
.source "RebootSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RebootSwitcher.onClick()"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "isUserAMonkey"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/RebootSwitcher/RebootSwitcher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v1

    const-string v2, "RebootSwitcher"

    const-string v3, "0"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
