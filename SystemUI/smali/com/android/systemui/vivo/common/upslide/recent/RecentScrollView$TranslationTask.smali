.class Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;
.super Ljava/lang/Object;
.source "RecentScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TranslationTask"
.end annotation


# instance fields
.field target:F

.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;F)V
    .locals 0
    .param p2, "target"    # F

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;->target:F

    .line 183
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 187
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 193
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;->target:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 190
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 191
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method
