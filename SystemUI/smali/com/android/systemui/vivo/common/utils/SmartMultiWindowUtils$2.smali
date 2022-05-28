.class Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "change"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->access$000(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.vivo.smartmultiwindow.audosplit"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 100
    .local v0, "config":I
    const-string v3, "SmartMultiWindowUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSmartMultiWindowConfigObserver, main config = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    if-ne v1, v0, :cond_2

    :goto_0
    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->access$102(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "config":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->access$100(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$2;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->access$200(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;)V

    .line 108
    :cond_1
    return-void

    .restart local v0    # "config":I
    :cond_2
    move v1, v2

    .line 101
    goto :goto_0

    .line 102
    .end local v0    # "config":I
    :catch_0
    move-exception v1

    goto :goto_1
.end method
