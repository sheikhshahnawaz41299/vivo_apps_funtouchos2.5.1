.class Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;
.super Ljava/lang/Object;
.source "SmartShotSwitcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->setOnLongClickListener()V
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
    .line 86
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

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

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->access$002(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;Z)Z

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.vivo.smartshot"

    const-string v3, "com.vivo.smartshot.ui.SmartShotSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 97
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v5

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SmartShotSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSmartShotLongClickListener, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SmartShotSwitcher/SmartShotSwitcher$2;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
