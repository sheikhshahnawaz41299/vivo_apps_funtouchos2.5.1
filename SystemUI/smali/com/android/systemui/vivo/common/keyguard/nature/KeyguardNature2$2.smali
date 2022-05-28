.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;
.super Ljava/lang/Object;
.source "KeyguardNature2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->prepareSelectorView(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

.field final synthetic val$childViewGroup:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;->val$childViewGroup:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 572
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 573
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 574
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 575
    .local v0, "iconId":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 576
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;->val$childViewGroup:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$702(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;)Landroid/view/View;

    .line 577
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;->val$childViewGroup:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 579
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V

    .line 580
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V

    .line 582
    .end local v0    # "iconId":I
    :cond_1
    return-void
.end method
