.class Lcom/vivo/settings/applications/ApplicationNotifiData$3;
.super Ljava/lang/Object;
.source "ApplicationNotifiData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/applications/ApplicationNotifiData;->updateConfigList([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

.field final synthetic val$identifiers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/ApplicationNotifiData;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$3;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    iput-object p2, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$3;->val$identifiers:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 354
    const/4 v8, 0x0

    .line 355
    .local v8, "index":I
    iget-object v6, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$3;->val$identifiers:[Ljava/lang/String;

    .local v6, "arr$":[Ljava/lang/String;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_2

    aget-object v5, v6, v7

    .line 356
    .local v5, "identification":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    .line 357
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$3;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-static {v0}, Lcom/vivo/settings/applications/ApplicationNotifiData;->access$400(Lcom/vivo/settings/applications/ApplicationNotifiData;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "content://com.vivo.daemonservice.unifiedconfigprovider/configs"

    const-string v2, "StatusBar"

    const-string v3, "1"

    const-string v4, "1.0.0"

    invoke-static/range {v0 .. v5}, Lcom/vivo/settings/applications/ApplicationNotifiData;->getConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 363
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$3;->val$identifiers:[Ljava/lang/String;

    array-length v0, v0

    if-ne v8, v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$3;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-static {v0}, Lcom/vivo/settings/applications/ApplicationNotifiData;->access$500(Lcom/vivo/settings/applications/ApplicationNotifiData;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    :cond_0
    const-string v0, "Notification"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$3;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-static {v0, v10}, Lcom/vivo/settings/applications/ApplicationNotifiData;->access$202(Lcom/vivo/settings/applications/ApplicationNotifiData;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 355
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 372
    .end local v5    # "identification":Ljava/lang/String;
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method
