.class Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$2;
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
    .line 148
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->access$302(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;B)B

    .line 152
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->access$402(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;J)J

    .line 153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->tick()V

    .line 154
    return-void
.end method
