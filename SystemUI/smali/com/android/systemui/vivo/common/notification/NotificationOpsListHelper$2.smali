.class Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;
.super Ljava/lang/Object;
.source "NotificationOpsListHelper.java"

# interfaces
.implements Landroid/content/ISmartShowContext$OnOpsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDualInstanceAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualInstanceAdded, pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$1200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 628
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 629
    return-void
.end method

.method public onDualInstanceConfigChanged(Ljava/lang/String;IIZ)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualInstanceConfigChanged, pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public onDualInstanceRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDualInstanceRemoved, pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$1300(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 635
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 636
    return-void
.end method
