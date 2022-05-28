.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$2;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSmartWakeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;
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
    .line 115
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    const-string v1, "vivo.intent.action.VOICEONESHOT_RESULT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$400(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$500(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    :cond_0
    return-void
.end method
