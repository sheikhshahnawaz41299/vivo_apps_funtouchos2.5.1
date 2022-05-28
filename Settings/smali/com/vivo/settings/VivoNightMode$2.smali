.class Lcom/vivo/settings/VivoNightMode$2;
.super Ljava/lang/Object;
.source "VivoNightMode.java"

# interfaces
.implements Lvivo/common/FtColorManager$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/VivoNightMode;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoNightMode;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoNightMode;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/vivo/settings/VivoNightMode$2;->this$0:Lcom/vivo/settings/VivoNightMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lvivo/common/FtColorManager;)V
    .locals 3
    .param p1, "colorManager"    # Lvivo/common/FtColorManager;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode$2;->this$0:Lcom/vivo/settings/VivoNightMode;

    invoke-static {v0, p1}, Lcom/vivo/settings/VivoNightMode;->access$202(Lcom/vivo/settings/VivoNightMode;Lvivo/common/FtColorManager;)Lvivo/common/FtColorManager;

    .line 115
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode$2;->this$0:Lcom/vivo/settings/VivoNightMode;

    invoke-static {v0}, Lcom/vivo/settings/VivoNightMode;->access$100(Lcom/vivo/settings/VivoNightMode;)V

    .line 116
    const-string v0, "VivoNightMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume ColorManager = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method
