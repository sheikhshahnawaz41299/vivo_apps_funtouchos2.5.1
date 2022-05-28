.class Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$2;->this$0:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$2;->this$0:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->access$100(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;I)V

    .line 56
    return-void
.end method
