.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$4;
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
    .line 156
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$002(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;Z)Z

    .line 162
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$600(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$600(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$800(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;I)V

    .line 168
    return-void
.end method
