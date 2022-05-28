.class Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;
.super Ljava/lang/Object;
.source "RecentHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string v0, "RecentHelper"

    const-string v1, "ow, during animation, return."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->performCollapse()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1$1;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$1;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$102(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    goto :goto_0
.end method
