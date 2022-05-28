.class Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;
.super Ljava/lang/Object;
.source "NotificationOpsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->updateConfigList([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

.field final synthetic val$identifiers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;->val$identifiers:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 139
    const/4 v8, 0x0

    .line 140
    .local v8, "index":I
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;->val$identifiers:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v5, v6, v7

    .line 141
    .local v5, "identification":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

    const-string v2, "StatusBar"

    const-string v3, "1"

    const-string v4, "1.0.0"

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/vivo/common/notification/FileParser;->getConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 148
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;->val$identifiers:[Ljava/lang/String;

    array-length v0, v0

    if-ne v8, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    :cond_0
    const-string v0, "Notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v0, v10}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$702(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 140
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 154
    :cond_2
    const-string v0, "DesktopIcon"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$2;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v0, v10}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$802(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    .line 159
    .end local v5    # "identification":Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method
