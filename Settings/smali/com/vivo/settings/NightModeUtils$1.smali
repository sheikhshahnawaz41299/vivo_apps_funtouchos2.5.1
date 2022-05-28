.class Lcom/vivo/settings/NightModeUtils$1;
.super Ljava/lang/Object;
.source "NightModeUtils.java"

# interfaces
.implements Lvivo/common/FtColorManager$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/NightModeUtils;->checkNightMode(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/NightModeUtils;


# direct methods
.method constructor <init>(Lcom/vivo/settings/NightModeUtils;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/vivo/settings/NightModeUtils$1;->this$0:Lcom/vivo/settings/NightModeUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lvivo/common/FtColorManager;)V
    .locals 3
    .param p1, "colorManager"    # Lvivo/common/FtColorManager;

    .prologue
    const/4 v0, 0x1

    .line 16
    iget-object v1, p0, Lcom/vivo/settings/NightModeUtils$1;->this$0:Lcom/vivo/settings/NightModeUtils;

    invoke-static {v1}, Lcom/vivo/settings/NightModeUtils;->access$000(Lcom/vivo/settings/NightModeUtils;)Lcom/vivo/settings/NightModeUtils$NightModeListener;

    move-result-object v1

    invoke-virtual {p1}, Lvivo/common/FtColorManager;->getActiveMode()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-interface {v1, v0}, Lcom/vivo/settings/NightModeUtils$NightModeListener;->updateNMState(Z)V

    .line 17
    const-string v0, "NightModeUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNightMode ColorManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {p1}, Lvivo/common/FtColorManager;->releaseInstance(Lvivo/common/FtColorManager;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    return-void

    .line 16
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
