.class Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;
.super Ljava/lang/Object;
.source "HalffoldControl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

.field final synthetic val$left:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Z)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->val$left:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xb

    const/16 v2, -0xb

    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->val$left:Z

    if-eqz v0, :cond_a

    .line 484
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    if-nez v0, :cond_2

    .line 485
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1700(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1800(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->scrollBy(II)V

    .line 558
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->invalidate()V

    .line 559
    :cond_0
    :goto_1
    return-void

    .line 488
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1702(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    .line 489
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1608(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    .line 490
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto :goto_0

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 493
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1700(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 494
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto :goto_0

    .line 496
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x7

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1702(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    .line 497
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1608(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    .line 498
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto :goto_0

    .line 500
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 501
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1700(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 502
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto :goto_0

    .line 504
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1608(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    .line 505
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 507
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    if-eq v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    if-eq v0, v5, :cond_7

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    .line 508
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 509
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 511
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1608(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    .line 512
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 515
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1900(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)V

    goto/16 :goto_1

    .line 520
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    if-nez v0, :cond_c

    .line 521
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1700(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 522
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 524
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x5

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1702(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    .line 525
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1608(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    .line 526
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 528
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 529
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1700(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 530
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 532
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x7

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1702(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    .line 533
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1608(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    .line 534
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 536
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 537
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1700(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 538
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 540
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1608(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    .line 541
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 543
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    if-eq v0, v4, :cond_11

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    if-eq v0, v5, :cond_11

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1600(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    .line 544
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    move-result v1

    if-le v0, v1, :cond_12

    .line 545
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 547
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1608(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)I

    .line 548
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1802(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)I

    goto/16 :goto_0

    .line 551
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1900(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)V

    goto/16 :goto_1
.end method
