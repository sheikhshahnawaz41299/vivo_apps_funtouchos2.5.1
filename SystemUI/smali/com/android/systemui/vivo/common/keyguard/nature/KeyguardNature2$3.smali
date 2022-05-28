.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;
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
    .line 621
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;->val$childViewGroup:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 623
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 624
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 625
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 626
    .local v0, "iconId":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;->val$childViewGroup:Landroid/view/View;

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$702(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;)Landroid/view/View;

    .line 627
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;->val$childViewGroup:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V

    .line 629
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V

    .line 631
    .end local v0    # "iconId":I
    :cond_0
    return-void
.end method
