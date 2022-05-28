.class Lcom/android/systemui/vivo/common/utils/BlurManager$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "BlurManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/utils/BlurManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/utils/BlurManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/utils/BlurManager;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/BlurManager$1;->this$0:Lcom/android/systemui/vivo/common/utils/BlurManager;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 81
    const-string v0, "BlurManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RotationWatcher, onRotationChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/utils/BlurManager$1;->this$0:Lcom/android/systemui/vivo/common/utils/BlurManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/BlurManager;->access$000(Lcom/android/systemui/vivo/common/utils/BlurManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager$1;->this$0:Lcom/android/systemui/vivo/common/utils/BlurManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->access$000(Lcom/android/systemui/vivo/common/utils/BlurManager;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager$1;->this$0:Lcom/android/systemui/vivo/common/utils/BlurManager;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/utils/BlurManager;->access$002(Lcom/android/systemui/vivo/common/utils/BlurManager;I)I

    .line 84
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager$1;->this$0:Lcom/android/systemui/vivo/common/utils/BlurManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->access$000(Lcom/android/systemui/vivo/common/utils/BlurManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager$1;->this$0:Lcom/android/systemui/vivo/common/utils/BlurManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/BlurManager;->access$002(Lcom/android/systemui/vivo/common/utils/BlurManager;I)I

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/BlurManager$1;->this$0:Lcom/android/systemui/vivo/common/utils/BlurManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->access$100(Lcom/android/systemui/vivo/common/utils/BlurManager;)V

    .line 89
    :cond_1
    return-void
.end method
