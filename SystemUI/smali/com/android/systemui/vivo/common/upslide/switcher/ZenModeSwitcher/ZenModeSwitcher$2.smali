.class Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$2;
.super Ljava/lang/Object;
.source "ZenModeSwitcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->setOnLongClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    :try_start_0
    const-string v2, "com.android.settings.Settings$VivoZenModeSettingsActivity"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getCurrentActivity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x30000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 102
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 104
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ZenModeSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mWifiLongClickListener, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
