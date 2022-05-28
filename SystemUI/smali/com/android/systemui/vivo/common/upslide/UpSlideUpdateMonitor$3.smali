.class Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "UpSlideUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v11, 0x3ea

    const/16 v10, 0x3e9

    const/4 v9, 0x1

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v6, "UpSlideUpdateMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive, action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v6, "android.intent.action.FONT_CONFIG_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 80
    .local v1, "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onFontChanged()V

    goto :goto_0

    .line 82
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    const-string v6, "com.android.settings.font_size_changed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 84
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onFontSizeChanged()V

    goto :goto_1

    .line 86
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 88
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onLocaleChanged()V

    goto :goto_2

    .line 90
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    const-string v6, "intent.action.theme.changed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 91
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V

    .line 92
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 93
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onThemeChanged()V

    goto :goto_3

    .line 95
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 96
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 97
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    const/4 v6, 0x0

    invoke-interface {v1, v6, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onPackageChanged(ILandroid/content/Intent;)V

    goto :goto_4

    .line 99
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 100
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 101
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    const/4 v6, 0x2

    invoke-interface {v1, v6, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onPackageChanged(ILandroid/content/Intent;)V

    goto :goto_5

    .line 103
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 104
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 105
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    const/4 v6, 0x4

    invoke-interface {v1, v6, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onPackageChanged(ILandroid/content/Intent;)V

    goto :goto_6

    .line 107
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 108
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 109
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v1, v9, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onPackageChanged(ILandroid/content/Intent;)V

    goto :goto_7

    .line 111
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 112
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 113
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    const/4 v6, 0x3

    invoke-interface {v1, v6, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onPackageChanged(ILandroid/content/Intent;)V

    goto :goto_8

    .line 115
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    const-string v6, "android.intent.action.TIME_TICK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 116
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 117
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 118
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onTimeTick()V

    goto :goto_9

    .line 121
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_9
    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 122
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 123
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 124
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onTimeChanged()V

    goto :goto_a

    .line 127
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_a
    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 128
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 129
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 130
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onTimeChanged()V

    goto :goto_b

    .line 133
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_b
    const-string v6, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 134
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 135
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .line 136
    .restart local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    invoke-interface {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;->onDateChanged()V

    goto :goto_c

    .line 139
    .end local v1    # "callBack":Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_c
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 140
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$700(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->onScreenTurnOff()V

    .line 161
    :cond_d
    :goto_d
    return-void

    .line 141
    :cond_e
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 142
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$700(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->onScreenTurnOn()V

    goto :goto_d

    .line 143
    :cond_f
    const-string v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 144
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$400(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 145
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 146
    .local v5, "msg":Landroid/os/Message;
    iput v10, v5, Landroid/os/Message;->what:I

    .line 147
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$400(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d

    .line 149
    .end local v5    # "msg":Landroid/os/Message;
    :cond_10
    const-string v6, "intent.action.super_power_save_send"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 150
    const-string v6, "entered"

    const-string v7, "sps_action"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 151
    .local v4, "isSpsOn":Z
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$400(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$400(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    .line 153
    .end local v4    # "isSpsOn":Z
    :cond_11
    const-string v6, "intent.action.PHONE_CLEAN_FINISH"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 154
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$800(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V

    goto :goto_d

    .line 155
    :cond_12
    const-string v6, "com.iqoo.secure.OPTIMIZE_COMPLETE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 156
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$800(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)V

    goto :goto_d

    .line 157
    :cond_13
    const-string v6, "vivo.intent.action.ENABLE_IN_APP"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 158
    const-string v6, "enable_in_app"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 159
    .local v2, "enable":Z
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$3;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$700(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->setEnableInApp(Z)V

    goto/16 :goto_d
.end method
