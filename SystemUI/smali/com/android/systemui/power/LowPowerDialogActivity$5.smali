.class Lcom/android/systemui/power/LowPowerDialogActivity$5;
.super Lcom/vivo/services/hallstate/IHallEventListener$Stub;
.source "LowPowerDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/LowPowerDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/LowPowerDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/LowPowerDialogActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/systemui/power/LowPowerDialogActivity$5;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-direct {p0}, Lcom/vivo/services/hallstate/IHallEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHallStateChanged(Lcom/vivo/services/hallstate/HallEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/vivo/services/hallstate/HallEvent;

    .prologue
    .line 171
    invoke-virtual {p1}, Lcom/vivo/services/hallstate/HallEvent;->isCovered()Z

    move-result v0

    .line 172
    .local v0, "isCovered":Z
    const-string v1, "hall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCovered is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    if-nez v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity$5;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-virtual {v1}, Lcom/android/systemui/power/LowPowerDialogActivity;->finish()V

    .line 177
    :cond_0
    return-void
.end method
