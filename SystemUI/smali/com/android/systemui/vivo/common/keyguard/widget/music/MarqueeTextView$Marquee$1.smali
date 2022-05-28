.class Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$1;
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
    .line 141
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->tick()V

    .line 145
    return-void
.end method
