.class Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$3;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->access$610(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)I

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->start(I)V

    .line 166
    :cond_1
    return-void
.end method
