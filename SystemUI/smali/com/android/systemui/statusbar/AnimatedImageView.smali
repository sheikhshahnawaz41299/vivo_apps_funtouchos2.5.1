.class public Lcom/android/systemui/statusbar/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field mAnim:Landroid/graphics/drawable/AnimationDrawable;

.field mAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private updateAnim()V
    .locals 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 45
    instance-of v1, v0, Landroid/graphics/drawable/LevelListDrawable;

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 50
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 53
    :cond_1
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_3

    .line 54
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 61
    :cond_2
    :goto_0
    return-void

    .line 59
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 90
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 98
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    .line 99
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "vis"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 67
    return-void
.end method

.method public setImageLevel(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 82
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    .line 74
    return-void
.end method
