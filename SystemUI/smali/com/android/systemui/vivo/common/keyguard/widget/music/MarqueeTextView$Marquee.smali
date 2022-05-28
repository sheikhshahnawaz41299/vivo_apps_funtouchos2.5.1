.class final Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Marquee"
.end annotation


# static fields
.field private static final MARQUEE_DELAY:I = 0x5dc

.field private static final MARQUEE_DP_PER_SECOND:I = 0x1e

.field private static final MARQUEE_RUNNING:B = 0x2t

.field private static final MARQUEE_STARTING:B = 0x1t

.field private static final MARQUEE_STOPPED:B


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private mLastAnimationMs:J

.field private mMaxScroll:F

.field private final mPixelsPerSecond:F

.field private mRepeatLimit:I

.field private mRestartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mScroll:F

.field private mStartCallback:Landroid/view/Choreographer$FrameCallback;

.field private mStatus:B

.field private mTickCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;)V
    .locals 2
    .param p1, "v"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStatus:B

    .line 141
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    .line 148
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 157
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    .line 135
    invoke-virtual {p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 136
    .local v0, "density":F
    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mPixelsPerSecond:F

    .line 137
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    .line 138
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    .line 139
    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    .prologue
    .line 115
    iget-byte v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStatus:B

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;B)B
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;
    .param p1, "x1"    # B

    .prologue
    .line 115
    iput-byte p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStatus:B

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;
    .param p1, "x1"    # J

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mLastAnimationMs:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mRepeatLimit:I

    return v0
.end method

.method static synthetic access$610(Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mRepeatLimit:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mRepeatLimit:I

    return v0
.end method

.method private resetScroll()V
    .locals 2

    .prologue
    .line 202
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mScroll:F

    .line 203
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    .line 204
    .local v0, "textView":Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->invalidate()V

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method getScroll()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mScroll:F

    return v0
.end method

.method isRunning()Z
    .locals 2

    .prologue
    .line 234
    iget-byte v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStatus:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStopped()Z
    .locals 1

    .prologue
    .line 238
    iget-byte v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStatus:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method start(I)V
    .locals 8
    .param p1, "repeatLimit"    # I

    .prologue
    .line 208
    if-nez p1, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->stop()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    .line 213
    .local v1, "textView":Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getViewWidth()I

    move-result v3

    .line 215
    .local v3, "viewWidth":I
    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->getTextWidth()I

    move-result v2

    .line 216
    .local v2, "textWidth":I
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viewWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", textWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    if-ge v3, v2, :cond_0

    .line 218
    const/4 v4, 0x1

    iput-byte v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStatus:B

    .line 219
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mRepeatLimit:I

    .line 220
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mScroll:F

    .line 221
    int-to-float v4, v2

    const/high16 v5, 0x40a00000    # 5.0f

    div-float v0, v4, v5

    .line 222
    .local v0, "gap":F
    int-to-float v4, v2

    add-float/2addr v4, v0

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mMaxScroll:F

    .line 223
    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->invalidate()V

    .line 224
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/Choreographer;->postFrameCallbackDelayed(Landroid/view/Choreographer$FrameCallback;J)V

    goto :goto_0
.end method

.method stop()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStatus:B

    .line 195
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->resetScroll()V

    .line 199
    return-void
.end method

.method tick()V
    .locals 8

    .prologue
    .line 170
    iget-byte v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mStatus:B

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 176
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    .line 177
    .local v5, "textView":Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;
    if-eqz v5, :cond_0

    .line 178
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v6}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v0

    .line 179
    .local v0, "currentMs":J
    iget-wide v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mLastAnimationMs:J

    sub-long v2, v0, v6

    .line 180
    .local v2, "deltaMs":J
    iput-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mLastAnimationMs:J

    .line 181
    long-to-float v6, v2

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mPixelsPerSecond:F

    mul-float v4, v6, v7

    .line 182
    .local v4, "deltaPx":F
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mScroll:F

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mScroll:F

    .line 183
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mScroll:F

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mMaxScroll:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 184
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mScroll:F

    .line 185
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mRestartCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 189
    :goto_1
    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->invalidate()V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView$Marquee;->mTickCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v6, v7}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_1
.end method
