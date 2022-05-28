.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$3;
.super Ljava/lang/Object;
.source "KeyguardSmartWakeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$002(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;Z)Z

    .line 141
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$600(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$600(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    .line 145
    return-void
.end method
