.class Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;
.super Ljava/lang/Object;
.source "GpsSwitcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->setOnLongClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

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

    .line 116
    :try_start_0
    const-string v2, "GpsSwitcher"

    const-string v3, "mGpsLongClickListener"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->access$002(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;Z)Z

    .line 118
    const-string v2, "com.android.settings.Settings$LocationSettingsActivity"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getCurrentActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 123
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :goto_0
    return v5

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "GpsSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGpsLongClickListener, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/GpsSwitcher/GpsSwitcher$3;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
