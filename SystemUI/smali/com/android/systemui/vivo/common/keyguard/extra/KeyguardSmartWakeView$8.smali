.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$8;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
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
    .line 295
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .locals 1
    .param p1, "phoneState"    # I

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$202(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;I)I

    .line 298
    return-void
.end method
