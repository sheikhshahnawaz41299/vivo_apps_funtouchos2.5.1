.class Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$1;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startMarquee"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->start(I)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;Z)Z

    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 36
    const/4 v0, 0x1

    return v0
.end method
