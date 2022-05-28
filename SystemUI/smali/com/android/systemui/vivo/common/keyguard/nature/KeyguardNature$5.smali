.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$5;
.super Ljava/lang/Thread;
.source "KeyguardNature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateCustomizeInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 395
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    return-void
.end method
