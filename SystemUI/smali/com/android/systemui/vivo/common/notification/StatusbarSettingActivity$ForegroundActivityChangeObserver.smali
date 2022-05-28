.class Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;
.super Ljava/lang/Object;
.source "StatusbarSettingActivity.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/utils/ForegroundActivityObserver$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForegroundActivityChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$1;

    .prologue
    .line 479
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;-><init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "oldPkg"    # Ljava/lang/String;
    .param p2, "newPkg"    # Ljava/lang/String;

    .prologue
    .line 482
    const-string v0, "StatusbarSettingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusbarSettingActivity oldPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$1400(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$ForegroundActivityChangeObserver;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->finish()V

    .line 486
    :cond_0
    return-void
.end method
