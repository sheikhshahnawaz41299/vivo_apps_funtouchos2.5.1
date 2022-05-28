.class Lcom/vivo/settings/applications/ShowOrHideAppService$1;
.super Landroid/os/Handler;
.source "ShowOrHideAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/applications/ShowOrHideAppService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/ShowOrHideAppService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 69
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 71
    :pswitch_0
    const-string v5, "ShowOrHideAppService"

    const-string v7, "dealing with message mode judging ! "

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$000(Lcom/vivo/settings/applications/ShowOrHideAppService;)Lcom/vivo/settings/applications/DataUtils;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByHidedVal(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 73
    .local v3, "savedAppsName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    if-nez v3, :cond_1

    move v5, v6

    :goto_1
    invoke-static {v7, v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$102(Lcom/vivo/settings/applications/ShowOrHideAppService;I)I

    .line 74
    const-string v5, "ShowOrHideAppService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "savedAppsSize size is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v8}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$100(Lcom/vivo/settings/applications/ShowOrHideAppService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-virtual {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "apps"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 76
    .local v4, "toHideAppsValue":I
    const-string v5, "ShowOrHideAppService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "toHideAppsValue is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    if-ne v4, v9, :cond_2

    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$100(Lcom/vivo/settings/applications/ShowOrHideAppService;)I

    move-result v5

    if-nez v5, :cond_2

    .line 78
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-virtual {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "apps"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 83
    :cond_0
    :goto_2
    invoke-static {}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 84
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$300(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 86
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$400(Lcom/vivo/settings/applications/ShowOrHideAppService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 73
    .end local v4    # "toHideAppsValue":I
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1

    .line 79
    .restart local v4    # "toHideAppsValue":I
    :cond_2
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$100(Lcom/vivo/settings/applications/ShowOrHideAppService;)I

    move-result v5

    if-lez v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-virtual {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "apps"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 88
    :cond_3
    if-ne v4, v9, :cond_4

    .line 90
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$300(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 93
    :cond_4
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$400(Lcom/vivo/settings/applications/ShowOrHideAppService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 98
    .end local v3    # "savedAppsName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "toHideAppsValue":I
    :pswitch_1
    invoke-static {}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$200()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$100(Lcom/vivo/settings/applications/ShowOrHideAppService;)I

    move-result v5

    if-lez v5, :cond_7

    .line 99
    const-string v5, "ShowOrHideAppService"

    const-string v6, "in visit mode and there is some hidden app , so need to fobbidden internet suffing !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$000(Lcom/vivo/settings/applications/ShowOrHideAppService;)Lcom/vivo/settings/applications/DataUtils;

    move-result-object v5

    const-string v6, "com.android.bbkmusic"

    invoke-virtual {v5, v6}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByPkgName(Ljava/lang/String;)Z

    move-result v1

    .line 101
    .local v1, "isExsit":Z
    const-string v5, "ShowOrHideAppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " music isExsit is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Lcom/vivo/settings/applications/ShowOrHideAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 103
    .local v2, "mAm":Landroid/app/ActivityManager;
    if-eqz v1, :cond_5

    .line 104
    const-string v5, "com.android.bbkmusic"

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 106
    :cond_5
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$000(Lcom/vivo/settings/applications/ShowOrHideAppService;)Lcom/vivo/settings/applications/DataUtils;

    move-result-object v5

    const-string v6, "com.ting.mp3.oemc.android"

    invoke-virtual {v5, v6}, Lcom/vivo/settings/applications/DataUtils;->queryFromHideAppsListByPkgName(Ljava/lang/String;)Z

    move-result v0

    .line 107
    .local v0, "isBaiDuExsit":Z
    const-string v5, "ShowOrHideAppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ting isExsit is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v0, :cond_6

    .line 109
    const-string v5, "com.ting.mp3.oemc.android"

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 111
    :cond_6
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$500(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 112
    const-string v5, "ShowOrHideAppService"

    const-string v6, "to call sendNetWorkingBroadcast !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$600(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 114
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$700(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 115
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$800(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 119
    .end local v0    # "isBaiDuExsit":Z
    .end local v1    # "isExsit":Z
    .end local v2    # "mAm":Landroid/app/ActivityManager;
    :goto_3
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$900(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 121
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$1000(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    goto/16 :goto_0

    .line 117
    :cond_7
    const-string v5, "ShowOrHideAppService"

    const-string v6, "in visit mode and there is some hidden app , so only need to clear recent task !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 125
    :pswitch_2
    invoke-static {}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$200()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$100(Lcom/vivo/settings/applications/ShowOrHideAppService;)I

    move-result v5

    if-lez v5, :cond_8

    .line 126
    const-string v5, "ShowOrHideAppService"

    const-string v6, "not in visit mode , and there is some hidden app , need to do recovery internet suffing !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$500(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 128
    const-string v5, "ShowOrHideAppService"

    const-string v6, "  to call sendNetWorkingBroadcast !"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$600(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 130
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$700(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 131
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$800(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 136
    :goto_4
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$1000(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    goto/16 :goto_0

    .line 133
    :cond_8
    const-string v5, "ShowOrHideAppService"

    const-string v6, "not in visit mode , and there is no hidden app , nothing need to do now !!!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 140
    :pswitch_3
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$300(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    .line 141
    iget-object v5, p0, Lcom/vivo/settings/applications/ShowOrHideAppService$1;->this$0:Lcom/vivo/settings/applications/ShowOrHideAppService;

    invoke-static {v5}, Lcom/vivo/settings/applications/ShowOrHideAppService;->access$1000(Lcom/vivo/settings/applications/ShowOrHideAppService;)V

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
