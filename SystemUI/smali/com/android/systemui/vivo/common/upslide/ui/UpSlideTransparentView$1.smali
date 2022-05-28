.class Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$1;
.super Ljava/lang/Object;
.source "UpSlideTransparentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$000(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->access$000(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    :cond_0
    return-void
.end method
