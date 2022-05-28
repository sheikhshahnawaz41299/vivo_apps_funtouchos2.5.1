.class Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "SmartMultiWindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$1;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string v1, "SmartMultiWindowUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "com.android.action.loadwhitelisttodatabase"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$1;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->init()V

    .line 65
    :cond_0
    return-void
.end method
