.class Lcom/android/settings/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 2
    .param p1, "sweep"    # Lcom/android/settings/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .prologue
    .line 294
    if-eqz p2, :cond_2

    .line 295
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->access$300(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$100(Lcom/android/settings/widget/ChartDataUsageView;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/settings/widget/ChartDataUsageView;->access$200(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 1
    .param p1, "sweep"    # Lcom/android/settings/widget/ChartSweepView;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView$2;->this$0:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-static {v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
