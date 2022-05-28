.class Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$3;
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
    .line 111
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$3;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "change"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 115
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$3;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->access$000(Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.vivo.smartmultiwindow.appconfig"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "config":Ljava/lang/String;
    const-string v4, "SmartMultiWindowUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSmartMultiWindowConfigObserver, config change = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "segs":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$3;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    iget-object v4, v4, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    array-length v4, v1

    if-le v4, v2, :cond_0

    .line 119
    iget-object v4, p0, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils$3;->this$0:Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    iget-object v4, v4, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->mAppConfigList:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const-string v6, "1"

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "segs":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v0    # "config":Ljava/lang/String;
    .restart local v1    # "segs":[Ljava/lang/String;
    :cond_1
    move v2, v3

    .line 119
    goto :goto_0

    .line 121
    .end local v0    # "config":Ljava/lang/String;
    .end local v1    # "segs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method
