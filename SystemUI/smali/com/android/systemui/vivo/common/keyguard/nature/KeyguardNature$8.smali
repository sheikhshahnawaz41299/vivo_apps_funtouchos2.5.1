.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$8;
.super Ljava/lang/Object;
.source "KeyguardNature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->prepareSelectorView(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;Landroid/view/LayoutInflater;)V
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
    .line 667
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 670
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 671
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 672
    .local v0, "iconId":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)V

    .line 673
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$2100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)V

    .line 675
    .end local v0    # "iconId":I
    :cond_0
    return-void
.end method
