.class Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$2;
.super Ljava/lang/Object;
.source "UpSlideGuideViewManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$2;->this$0:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$2;->this$0:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->access$000(Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;Z)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$2;->this$0:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->access$100(Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager$2;->this$0:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->access$100(Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->performExpand(Z)V

    .line 69
    :cond_0
    return-void
.end method
