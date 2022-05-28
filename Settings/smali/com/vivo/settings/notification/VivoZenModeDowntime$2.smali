.class Lcom/vivo/settings/notification/VivoZenModeDowntime$2;
.super Ljava/lang/Object;
.source "VivoZenModeDowntime.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/notification/VivoZenModeDowntime;->showBBKBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;


# direct methods
.method constructor <init>(Lcom/vivo/settings/notification/VivoZenModeDowntime;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 119
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 126
    .local v0, "flag":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$000(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v2

    iget v2, v2, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v3}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$000(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v3

    iget v3, v3, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$000(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v2

    iget v2, v2, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v3}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$000(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v3

    iget v3, v3, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    if-eq v2, v3, :cond_1

    .line 128
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 130
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    .line 131
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$100(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$200(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->downtimeInfos:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v3}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$100(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v3}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$000(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$300(Lcom/vivo/settings/notification/VivoZenModeDowntime;Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$000(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$200(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig;->downtimeInfos:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v3}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$000(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_3
    const-string v2, "VivoZenModeDowntime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set mDowntimeInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v4}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$000(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v2, "VivoZenModeDowntime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurConfig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v4}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$200(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$400(Lcom/vivo/settings/notification/VivoZenModeDowntime;)V

    .line 141
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-virtual {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    .line 142
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-virtual {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->finish()V

    .line 147
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return-void

    .line 144
    :cond_4
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-static {v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->access$500(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;->this$0:Lcom/vivo/settings/notification/VivoZenModeDowntime;

    const v4, 0x7f0b0963

    invoke-virtual {v3, v4}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
