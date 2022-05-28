.class public Lcom/android/systemui/statusbar/stack/AmbientState;
.super Ljava/lang/Object;
.source "AmbientState.java"


# instance fields
.field private mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mDark:Z

.field private mDimmed:Z

.field private mDraggedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHideSensitive:Z

.field private mOverScrollBottomAmount:F

.field private mOverScrollTopAmount:F

.field private mScrollY:I

.field private mShowTapTipChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

.field private mSpeedBumpIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return-void
.end method


# virtual methods
.method public getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getDraggedViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOverScrollAmount(Z)F
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 122
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    return v0
.end method

.method public getShowTapTipChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShowTapTipChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-object v0
.end method

.method public getSpeedBumpIndex()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    return v0
.end method

.method public isDark()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    return v0
.end method

.method public isDimmed()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    return v0
.end method

.method public isHideSensitive()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    return v0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public onDragFinished(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDraggedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "activatedChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 85
    return-void
.end method

.method public setDark(Z)V
    .locals 0
    .param p1, "dark"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDark:Z

    .line 73
    return-void
.end method

.method public setDimmed(Z)V
    .locals 0
    .param p1, "dimmed"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mDimmed:Z

    .line 68
    return-void
.end method

.method public setHideSensitive(Z)V
    .locals 0
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mHideSensitive:Z

    .line 77
    return-void
.end method

.method public setOverScrollAmount(FZ)V
    .locals 0
    .param p1, "amount"    # F
    .param p2, "onTop"    # Z

    .prologue
    .line 114
    if-eqz p2, :cond_0

    .line 115
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollTopAmount:F

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mOverScrollBottomAmount:F

    goto :goto_0
.end method

.method public setScrollY(I)V
    .locals 0
    .param p1, "scrollY"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mScrollY:I

    .line 48
    return-void
.end method

.method public setShowTapTipChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1, "showTapTipChild"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mShowTapTipChild:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .line 106
    return-void
.end method

.method public setSpeedBumpIndex(I)V
    .locals 0
    .param p1, "speedBumpIndex"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/android/systemui/statusbar/stack/AmbientState;->mSpeedBumpIndex:I

    .line 131
    return-void
.end method
