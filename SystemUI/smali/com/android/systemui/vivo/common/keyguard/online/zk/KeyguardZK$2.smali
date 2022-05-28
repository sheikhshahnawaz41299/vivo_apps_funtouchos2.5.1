.class Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;
.super Ljava/lang/Object;
.source "KeyguardZK.java"

# interfaces
.implements Lcom/ibimuyu/lockscreen/sdk/wrapper/BaseWrapper$UnlockerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;
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
    .line 206
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnlocked(Ljava/lang/String;)V
    .locals 3
    .param p1, "unlocktype"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v0, "KeyguardZK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlocktype: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v0, "camera"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;I)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const-string v0, "call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->access$300(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)I

    move-result v0

    if-lez v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;I)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;I)V

    goto :goto_0

    .line 218
    :cond_3
    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->access$400(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;)I

    move-result v0

    if-lez v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;I)V

    goto :goto_0

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;->access$200(Lcom/android/systemui/vivo/common/keyguard/online/zk/KeyguardZK;I)V

    goto :goto_0
.end method
