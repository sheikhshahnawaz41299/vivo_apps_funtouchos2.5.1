.class Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;
.super Landroid/os/Handler;
.source "KeyguardTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final soundRes:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 161
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;->soundRes:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->soundhandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$4;->soundRes:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    return-void
.end method
