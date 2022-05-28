.class Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView$1;
.super Ljava/lang/Object;
.source "QuickChargeView.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->invalidate()V

    .line 102
    return-void
.end method
