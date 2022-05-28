.class Lcom/vivo/settings/BootCombineReceiver$2;
.super Ljava/lang/Object;
.source "BootCombineReceiver.java"

# interfaces
.implements Lvivo/common/FtColorManager$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/BootCombineReceiver;->updateNightModeState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/BootCombineReceiver;


# direct methods
.method constructor <init>(Lcom/vivo/settings/BootCombineReceiver;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/vivo/settings/BootCombineReceiver$2;->this$0:Lcom/vivo/settings/BootCombineReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lvivo/common/FtColorManager;)V
    .locals 1
    .param p1, "colorManager"    # Lvivo/common/FtColorManager;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/vivo/settings/BootCombineReceiver$2;->this$0:Lcom/vivo/settings/BootCombineReceiver;

    invoke-static {v0, p1}, Lcom/vivo/settings/BootCombineReceiver;->access$102(Lcom/vivo/settings/BootCombineReceiver;Lvivo/common/FtColorManager;)Lvivo/common/FtColorManager;

    .line 418
    return-void
.end method
