.class Lcom/vivo/settings/notification/VivoZenModeCondition$1;
.super Landroid/service/notification/IConditionListener$Stub;
.source "VivoZenModeCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/notification/VivoZenModeCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/notification/VivoZenModeCondition;


# direct methods
.method constructor <init>(Lcom/vivo/settings/notification/VivoZenModeCondition;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeCondition$1;->this$0:Lcom/vivo/settings/notification/VivoZenModeCondition;

    invoke-direct {p0}, Landroid/service/notification/IConditionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsReceived([Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeCondition$1;->this$0:Lcom/vivo/settings/notification/VivoZenModeCondition;

    invoke-static {v0}, Lcom/vivo/settings/notification/VivoZenModeCondition;->access$100(Lcom/vivo/settings/notification/VivoZenModeCondition;)Lcom/vivo/settings/notification/VivoZenModeCondition$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/vivo/settings/notification/VivoZenModeCondition$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
