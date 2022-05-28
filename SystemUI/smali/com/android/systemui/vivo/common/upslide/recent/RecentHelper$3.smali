.class Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$3;
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
    .line 212
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 217
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->setLockTaskPending(Z)V

    .line 218
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->isDensityLowLevel()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 222
    .local v0, "v":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
