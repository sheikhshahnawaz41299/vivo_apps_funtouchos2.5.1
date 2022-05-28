.class Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;
.super Ljava/lang/Object;
.source "PopupToolbarHelper.java"

# interfaces
.implements Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->showPopupToolbar(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

.field final synthetic val$tip:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;ILandroid/view/View;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    iput p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->val$tip:I

    iput-object p3, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v9, 0x7f11027c

    const/4 v8, 0x0

    .line 55
    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->val$tip:I

    const v7, 0x7f0e0207

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->val$tip:I

    const v7, 0x7f0e0208

    if-ne v6, v7, :cond_1

    .line 56
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;->hide()V

    .line 90
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v3, 0x0

    .line 61
    .local v3, "locked":Z
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->val$view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 62
    .local v1, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v4, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    .line 63
    .local v4, "pkgName":Ljava/lang/String;
    iget-boolean v6, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    if-eqz v6, :cond_2

    .line 64
    const/4 v3, 0x1

    .line 66
    :cond_2
    if-eqz v3, :cond_4

    .line 67
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->removeAppFromWhiteList(Ljava/lang/String;)V

    .line 68
    iput-boolean v8, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    .line 70
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_6

    .line 71
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 72
    .local v5, "recentItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v6, v5, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 74
    .local v2, "lock":Landroid/widget/ImageView;
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    .end local v2    # "lock":Landroid/widget/ImageView;
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 78
    .end local v0    # "i":I
    .end local v5    # "recentItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->addAppToWhiteList(Ljava/lang/String;)V

    .line 79
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    .line 81
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_6

    .line 82
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 83
    .restart local v5    # "recentItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v6, v5, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 84
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 85
    .restart local v2    # "lock":Landroid/widget/ImageView;
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    .end local v2    # "lock":Landroid/widget/ImageView;
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 89
    .end local v5    # "recentItem":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper$1;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;->access$000(Lcom/android/systemui/vivo/common/upslide/recent/PopupToolbarHelper;)Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/vivo/compatible/upslide/UpSlidePopupToolbar;->hide()V

    goto/16 :goto_0
.end method
