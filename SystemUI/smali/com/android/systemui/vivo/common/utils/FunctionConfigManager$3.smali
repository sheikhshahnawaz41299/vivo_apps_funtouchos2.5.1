.class Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$3;
.super Landroid/database/ContentObserver;
.source "FunctionConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$3;->this$0:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$3;->this$0:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->access$000(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    const/16 v2, 0x7d2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 64
    return-void
.end method
