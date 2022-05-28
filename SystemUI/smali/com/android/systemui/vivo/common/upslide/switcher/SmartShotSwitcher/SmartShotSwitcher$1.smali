.class Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$1;
.super Ljava/lang/Object;
.source "SmartShotSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->setOnClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    const-string v2, "SmartShotSwitcher"

    const-string v3, "click SmartShot during long click, return"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)V

    .line 73
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "vivo.action.ACTION_FLOAT_MAIN_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v2, "com.vivo.smartshot"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SmartShotSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start smart shot service error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
