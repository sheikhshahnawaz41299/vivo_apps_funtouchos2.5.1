.class Lcom/vivo/settings/IndexSlipView$1;
.super Ljava/lang/Object;
.source "IndexSlipView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/IndexSlipView;->registerOnGlobalLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/IndexSlipView;


# direct methods
.method constructor <init>(Lcom/vivo/settings/IndexSlipView;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-virtual {v1}, Lcom/vivo/settings/IndexSlipView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/settings/IndexSlipView;->access$102(Lcom/vivo/settings/IndexSlipView;I)I

    .line 475
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v0}, Lcom/vivo/settings/IndexSlipView;->access$100(Lcom/vivo/settings/IndexSlipView;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v0}, Lcom/vivo/settings/IndexSlipView;->access$100(Lcom/vivo/settings/IndexSlipView;)I

    move-result v0

    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v1}, Lcom/vivo/settings/IndexSlipView;->access$200(Lcom/vivo/settings/IndexSlipView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 476
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v1}, Lcom/vivo/settings/IndexSlipView;->access$100(Lcom/vivo/settings/IndexSlipView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/settings/IndexSlipView;->access$202(Lcom/vivo/settings/IndexSlipView;I)I

    .line 477
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v0}, Lcom/vivo/settings/IndexSlipView;->access$300(Lcom/vivo/settings/IndexSlipView;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v0}, Lcom/vivo/settings/IndexSlipView;->access$400(Lcom/vivo/settings/IndexSlipView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    iget-object v1, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v1}, Lcom/vivo/settings/IndexSlipView;->access$500(Lcom/vivo/settings/IndexSlipView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/settings/IndexSlipView;->access$600(Lcom/vivo/settings/IndexSlipView;I)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v0}, Lcom/vivo/settings/IndexSlipView;->access$700(Lcom/vivo/settings/IndexSlipView;)V

    .line 481
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-virtual {v0}, Lcom/vivo/settings/IndexSlipView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v0}, Lcom/vivo/settings/IndexSlipView;->access$800(Lcom/vivo/settings/IndexSlipView;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/vivo/settings/IndexSlipView$1;->this$0:Lcom/vivo/settings/IndexSlipView;

    invoke-static {v0}, Lcom/vivo/settings/IndexSlipView;->access$900(Lcom/vivo/settings/IndexSlipView;)V

    .line 484
    monitor-exit v1

    .line 487
    :cond_1
    return-void

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
