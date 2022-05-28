.class Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;
.super Ljava/lang/Thread;
.source "EyeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->updateNightModeState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

.field final synthetic val$on:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    iput-boolean p3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;->val$on:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;->val$on:Z

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;Z)I

    move-result v0

    .line 120
    .local v0, "colorMode":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Lvivo/common/FtColorManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lvivo/common/FtColorManager;->setActiveMode(I)I

    move-result v1

    .line 121
    .local v1, "result":I
    if-nez v1, :cond_0

    .line 122
    const-string v2, "EyeSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNightModeState >>> SUCCESS TO SET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Lvivo/common/FtColorManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lvivo/common/FtColorManager;->setDefaultMode(I)I

    .line 124
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/EyeSwitcher/EyeSwitcher;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vivo.night.mode.change.intent"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const-string v2, "EyeSwitcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNightModeState >>> FAIL TO SET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
