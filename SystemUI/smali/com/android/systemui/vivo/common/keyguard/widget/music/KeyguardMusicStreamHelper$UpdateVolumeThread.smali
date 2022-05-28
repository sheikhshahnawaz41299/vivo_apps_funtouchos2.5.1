.class Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;
.super Landroid/os/HandlerThread;
.source "KeyguardMusicStreamHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateVolumeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .line 248
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 249
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 252
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arg1 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper$UpdateVolumeThread;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 254
    const/4 v0, 0x1

    return v0
.end method
