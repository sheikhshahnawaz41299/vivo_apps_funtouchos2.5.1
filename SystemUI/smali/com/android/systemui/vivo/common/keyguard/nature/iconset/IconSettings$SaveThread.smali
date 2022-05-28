.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;
.super Ljava/lang/Thread;
.source "IconSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveThread"
.end annotation


# instance fields
.field public isRunning:Z

.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V
    .locals 1

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 643
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 646
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 647
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->isRunning:Z

    .line 648
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$1900(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    .line 649
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2000(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    .line 650
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$2100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)V

    .line 651
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->isRunning:Z

    .line 652
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$902(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;)Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;

    .line 653
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 654
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 655
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 658
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings$SaveThread;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/IconSettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    return-void
.end method
