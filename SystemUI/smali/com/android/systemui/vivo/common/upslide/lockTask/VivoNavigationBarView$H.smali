.class Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;
.super Landroid/os/Handler;
.source "VivoNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;-><init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    .line 80
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "how":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getWidth()I

    move-result v4

    .line 84
    .local v4, "w":I
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->getHeight()I

    move-result v0

    .line 85
    .local v0, "h":I
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    iget-object v5, v5, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 86
    .local v3, "vw":I
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    iget-object v5, v5, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 88
    .local v2, "vh":I
    if-ne v0, v2, :cond_1

    if-eq v4, v3, :cond_0

    .line 89
    :cond_1
    const-string v5, "VivoNavigationBarView"

    const-string v6, "*** Invalid layout in navigation bar (%s this=%dx%d cur=%dx%d)"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView$H;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->requestLayout()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x21ee
        :pswitch_0
    .end packed-switch
.end method
