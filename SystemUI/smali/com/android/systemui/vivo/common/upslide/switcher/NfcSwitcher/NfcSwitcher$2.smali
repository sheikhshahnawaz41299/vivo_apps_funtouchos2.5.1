.class Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;
.super Ljava/lang/Object;
.source "NfcSwitcher.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->setOnLongClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v6, 0x1

    .line 102
    :try_start_0
    const-string v2, "NfcSwitcher"

    const-string v3, "mNfcLongClickListener"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$002(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;Z)Z

    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.NFC_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    .line 107
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)V

    .line 109
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/CollectDataUtils;

    move-result-object v2

    const-string v3, "NfcSwitcher"

    const-string v4, "1"

    const-string v5, "1"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/CollectDataUtils;->sendData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v6

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "NfcSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNfcLongClickListener, e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/NfcSwitcher/NfcSwitcher$2;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
