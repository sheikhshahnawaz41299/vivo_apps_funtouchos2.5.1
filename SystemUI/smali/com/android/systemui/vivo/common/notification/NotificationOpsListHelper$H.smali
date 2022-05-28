.class Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;
.super Landroid/os/Handler;
.source "NotificationOpsListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;-><init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 199
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v8, v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V

    .line 202
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v8, v8, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/util/List;)V

    .line 203
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 204
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    goto :goto_0

    .line 208
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 209
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "replacing"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 210
    .local v6, "replacing":Z
    const-string v7, "pkg"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "removePkg":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 212
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7, v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$700(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V

    .line 217
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v8, v8, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/util/List;)V

    .line 218
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 219
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    goto :goto_0

    .line 215
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7, v5}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$800(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "removePkg":Ljava/lang/String;
    .end local v6    # "replacing":Z
    :pswitch_2
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 224
    .local v4, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 227
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v8, v8, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/util/List;)V

    .line 228
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$900(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 229
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 230
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    goto/16 :goto_0

    .line 234
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :pswitch_3
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 235
    .restart local v4    # "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v7, v7, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$800(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/lang/String;)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 238
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v8, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v8, v8, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->mContentInfos:Ljava/util/List;

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;Ljava/util/List;)V

    .line 239
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    .line 240
    iget-object v7, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$600(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V

    goto/16 :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
