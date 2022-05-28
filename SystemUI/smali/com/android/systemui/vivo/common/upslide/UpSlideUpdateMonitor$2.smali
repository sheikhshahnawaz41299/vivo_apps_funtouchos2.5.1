.class Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 64
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$300(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "visit_mode"

    invoke-static {v3, v4, v2}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 65
    .local v0, "isVisitModeOn":Z
    :goto_0
    const-string v2, "UpSlideUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVisitModeObserver, isVisitModeOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$400(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 67
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->access$400(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 68
    return-void

    .end local v0    # "isVisitModeOn":Z
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    move v0, v2

    .line 64
    goto :goto_0
.end method
