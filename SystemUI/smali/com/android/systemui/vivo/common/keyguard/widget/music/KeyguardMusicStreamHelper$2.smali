.class Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardMusicStreamHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 210
    :cond_0
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFingerDown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$1000(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$1100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$1100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
