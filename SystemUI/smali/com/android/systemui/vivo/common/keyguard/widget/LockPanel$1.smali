.class Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;
.super Ljava/lang/Object;
.source "LockPanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v3, 0x3f4

    const-wide/16 v4, 0x5

    const/4 v0, 0x1

    .line 135
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;->onLockPanelkeepWake()V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 141
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$302(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;F)F

    .line 142
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$402(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;Z)Z

    goto :goto_0

    .line 145
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 157
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    iget-boolean v1, v1, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mIsScrolling:Z

    if-ne v1, v0, :cond_3

    .line 160
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->mIsScrolling:Z

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 162
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 171
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
