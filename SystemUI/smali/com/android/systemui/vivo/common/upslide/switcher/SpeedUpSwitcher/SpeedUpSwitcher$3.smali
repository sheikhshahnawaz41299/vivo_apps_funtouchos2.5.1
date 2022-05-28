.class Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;
.super Ljava/lang/Object;
.source "SpeedUpSwitcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->setOnLongClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const-wide/16 v6, 0x3e8

    .line 181
    :try_start_0
    const-string v2, "SpeedUpSwitcher"

    const-string v3, "mSpeedUpLongClickListener"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$202(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;Z)Z

    .line 184
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.applicationmanager.APPLICATIONMANAGER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 188
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$1500(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$1600(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$1700(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v2

    const-string v3, "CuSwitcher"

    const-string v4, "1"

    const-string v5, "1"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$1800(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v8

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "SpeedUpSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSpeedUpLongClickListener, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$1800(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;->access$1800(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpeedUpSwitcher/SpeedUpSwitcher$3;)V

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v2
.end method
