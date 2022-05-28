.class public Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;
.super Ljava/lang/Object;
.source "FlingTracker.java"


# instance fields
.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method private addMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public computeCurrentVelocity(I)V
    .locals 1
    .param p1, "units"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 39
    :cond_0
    return-void
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public initVelocityTracker()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 19
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 20
    return-void
.end method

.method public recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 27
    :cond_0
    return-void
.end method

.method public trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 59
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 60
    .local v1, "deltaY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 61
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 64
    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 65
    return-void
.end method
