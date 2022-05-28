.class Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$2;
.super Ljava/lang/Object;
.source "RecentHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 191
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "locked":Z
    const/4 v1, 0x0

    .line 198
    .local v1, "targetInteract":Landroid/view/View;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->isDensityLowLevel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "targetInteract":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 203
    .restart local v1    # "targetInteract":Landroid/view/View;
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget-boolean v3, v3, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    if-eqz v3, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 206
    :cond_0
    if-eqz v0, :cond_2

    const v2, 0x7f0e020a

    .line 207
    .local v2, "tip":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-static {v3, v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->access$500(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;Landroid/view/View;I)V

    .line 208
    const/4 v3, 0x1

    return v3

    .line 201
    .end local v2    # "tip":I
    :cond_1
    move-object v1, p1

    goto :goto_0

    .line 206
    :cond_2
    const v2, 0x7f0e0209

    goto :goto_1
.end method
