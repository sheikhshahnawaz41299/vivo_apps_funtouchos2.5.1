.class Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$5;
.super Ljava/util/TimerTask;
.source "KeyguardTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->setViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$400(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$5$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$5$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method
