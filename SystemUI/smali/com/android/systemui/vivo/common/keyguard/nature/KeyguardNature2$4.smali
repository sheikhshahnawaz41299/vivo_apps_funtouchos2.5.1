.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$4;
.super Ljava/lang/Object;
.source "KeyguardNature2.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;


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


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public screenChanged(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;II)V
    .locals 3
    .param p1, "multiScreen"    # Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;
    .param p2, "totalScreen"    # I
    .param p3, "currentScreen"    # I

    .prologue
    .line 641
    if-ltz p3, :cond_0

    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->SELECTOR_INDICATOR:[I

    array-length v0, v0

    if-ge p3, v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->SELECTOR_INDICATOR:[I

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 646
    :goto_0
    return-void

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->SELECTOR_INDICATOR:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
