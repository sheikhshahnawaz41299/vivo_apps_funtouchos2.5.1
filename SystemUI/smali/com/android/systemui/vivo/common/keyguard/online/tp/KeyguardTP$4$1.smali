.class Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4$1;
.super Ljava/lang/Object;
.source "KeyguardTP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4$1;->this$1:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4$1;->this$1:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$500(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4$1;->this$1:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->releaseOggSoundPool()V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4$1;->this$1:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->releaseMp3SoundPool()V

    goto :goto_0
.end method
