.class Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$1;
.super Ljava/lang/Object;
.source "KeyguardZK.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->createMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 55
    const-string v0, "KeyguardZK"

    const-string v1, "dismiss."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->access$000(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/LockscreenWrapper;->stop()Z

    .line 57
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->access$100(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 58
    return-void
.end method
