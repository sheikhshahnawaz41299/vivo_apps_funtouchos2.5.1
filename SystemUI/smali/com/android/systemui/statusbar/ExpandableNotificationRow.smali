.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlwaysExpand:Z

.field private mClearable:Z

.field private mDivider:Landroid/view/View;

.field private mDividerY:I

.field private mExpandable:Z

.field private mExpansionDisabled:Z

.field private mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mHasUserChangedExpansion:Z

.field private mIsHeadsUp:Z

.field private mIsSystemExpanded:Z

.field private mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

.field private mLoggingKey:Ljava/lang/String;

.field private mMaxExpandHeight:I

.field private mNotificationTime:Ljava/lang/CharSequence;

.field private mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mRowMaxHeight:I

.field private mRowMinHeight:I

.field private mSensitive:Z

.field private mShowingPublic:Z

.field private mShowingPublicForIntrinsicHeight:Z

.field private mShowingPublicInitialized:Z

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTimeColor:I

.field private mUserExpanded:Z

.field private mUserLocked:Z

.field private mVetoButton:Landroid/view/View;

.field private mWasReset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const-string v0, "ExpandableNotificationRow"

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->TAG:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAlwaysExpand:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationTime:Ljava/lang/CharSequence;

    .line 88
    const v0, -0x666667

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTimeColor:I

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method private animateShowingPublic(JJ)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 529
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 530
    .local v0, "source":Landroid/view/View;
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 531
    .local v1, "target":Landroid/view/View;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 532
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 533
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 534
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 535
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 536
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 546
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 550
    return-void

    .line 529
    .end local v0    # "source":Landroid/view/View;
    .end local v1    # "target":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0

    .line 530
    .restart local v0    # "source":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_1
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logExpansionEvent(ZZ)V
    .locals 3
    .param p1, "userAction"    # Z
    .param p2, "wasExpanded"    # Z

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 644
    .local v0, "nowExpanded":Z
    if-eq p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    .line 647
    :cond_0
    return-void
.end method

.method private setAlwaysExpand(Z)V
    .locals 0
    .param p1, "always"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAlwaysExpand:Z

    .line 172
    return-void
.end method

.method private setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 2
    .param p1, "running"    # Z
    .param p2, "layout"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 110
    if-eqz p2, :cond_0

    .line 111
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "contractedChild":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "expandedChild":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 114
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    .line 116
    .end local v0    # "contractedChild":Landroid/view/View;
    .end local v1    # "expandedChild":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setIconAnimationRunningForChild(ZLandroid/view/View;)V
    .locals 3
    .param p1, "running"    # Z
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 119
    if-eqz p2, :cond_0

    .line 120
    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 121
    .local v0, "icon":Landroid/widget/ImageView;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 122
    const v2, 0x1020034

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 124
    .local v1, "rightIcon":Landroid/widget/ImageView;
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    .line 126
    .end local v0    # "icon":Landroid/widget/ImageView;
    .end local v1    # "rightIcon":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setIconRunning(Landroid/widget/ImageView;Z)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "running"    # Z

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 131
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 132
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 133
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 147
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 138
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimationDrawable;
    :cond_2
    instance-of v2, v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 139
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 140
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimatedVectorDrawable;
    if-eqz p2, :cond_3

    .line 141
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0
.end method

.method private updateMaxExpandHeight()V
    .locals 2

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    .line 472
    .local v0, "intrinsicBefore":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 476
    :cond_0
    return-void
.end method

.method private updateVetoButton()V
    .locals 2

    .prologue
    .line 556
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 558
    return-void

    .line 556
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public applyExpansionToLayout()V
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 425
    .local v0, "expand":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_0

    .line 426
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    .line 430
    :goto_0
    return-void

    .line 428
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(I)V

    goto :goto_0
.end method

.method protected filterMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->filterMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    .line 443
    :goto_0
    return v1

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 438
    .local v0, "inExpansionState":Z
    if-nez v0, :cond_1

    .line 440
    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    goto :goto_0

    .line 443
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getMaxExpandHeight()I
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    goto :goto_0
.end method

.method public getMaxHeight()I
    .locals 2

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 602
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    return v1
.end method

.method public getMinHeight()I
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 608
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v1

    return v1
.end method

.method public getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public hasUserChangedExpansion()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    return v0
.end method

.method public isAlwaysExpand()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAlwaysExpand:Z

    return v0
.end method

.method public isClearable()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentExpandable()Z
    .locals 2

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 567
    .local v0, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isContentExpandable()Z

    move-result v1

    return v1
.end method

.method public isExpandable()Z
    .locals 3

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "isAppLocked":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isAppLockedByIManager(Ljava/lang/String;)Z

    move-result v0

    .line 306
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 307
    :cond_1
    const/4 v2, 0x0

    .line 310
    :goto_0
    return v2

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    goto :goto_0
.end method

.method public isMaxExpandHeightInitialized()Z
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemExpanded()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    return v0
.end method

.method public notifyContentUpdated()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->notifyContentUpdated()V

    .line 623
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->notifyContentUpdated()V

    .line 624
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 252
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateDividerWidth(Landroid/content/res/Configuration;)V

    .line 253
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    .line 228
    const v1, 0x7f110114

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 229
    const v1, 0x7f110113

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    .line 231
    const v1, 0x7f110117

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDivider:Landroid/view/View;

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDividerY:I

    .line 234
    const v1, 0x7f110116

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 235
    .local v0, "gutsStub":Landroid/view/ViewStub;
    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    .line 243
    const v1, 0x7f110115

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateDividerWidth(Landroid/content/res/Configuration;)V

    .line 248
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 461
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    .line 462
    iget v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasReset:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 463
    .local v0, "updateExpandHeight":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateMaxExpandHeight()V

    .line 464
    if-eqz v0, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyExpansionToLayout()V

    .line 467
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasReset:Z

    .line 468
    return-void

    .end local v0    # "updateExpandHeight":Z
    :cond_1
    move v0, v1

    .line 462
    goto :goto_0
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 274
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 275
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 276
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 277
    const/4 v1, 0x1

    .line 279
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->reset()V

    .line 193
    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 195
    .local v0, "wasExpanded":Z
    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMaxHeight:I

    .line 196
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 197
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 198
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 199
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 200
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    .line 201
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    .line 202
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 203
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->reset(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 207
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 208
    return-void
.end method

.method public resetHeight()V
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetActualHeight()V

    .line 214
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mWasReset:Z

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onHeightReset()V

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->requestLayout()V

    .line 218
    return-void
.end method

.method public resetUserExpansion()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 360
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 361
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 362
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 2
    .param p1, "height"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setActualHeight(I)V

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setActualHeight(I)V

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    .line 578
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 579
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDividerY:I

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDivider:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDividerY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 583
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidate()V

    .line 584
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setActualHeight(IZ)V

    .line 585
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 1
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 613
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipTopAmount(I)V

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    .line 616
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipTopAmount(I)V

    .line 619
    :cond_0
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    .line 286
    .local v0, "showing":Lcom/android/systemui/statusbar/NotificationContentView;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    .line 289
    :cond_0
    return-void
.end method

.method public setDividerVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDivider:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 592
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDividerY:I

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDivider:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDividerY:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 596
    :cond_0
    return-void

    .line 590
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setExpandable(Z)V
    .locals 3
    .param p1, "expandable"    # Z

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "isAppLocked":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isAppLockedByIManager(Ljava/lang/String;)Z

    move-result v0

    .line 323
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    .line 324
    return-void

    .line 323
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setExpansionDisabled(Z)V
    .locals 2
    .param p1, "expansionDisabled"    # Z

    .prologue
    .line 403
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    if-eq p1, v1, :cond_0

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 405
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpansionDisabled:Z

    .line 406
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 407
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 411
    .end local v0    # "wasExpanded":Z
    :cond_0
    return-void
.end method

.method public setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    .line 638
    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    .line 639
    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 0
    .param p1, "isHeadsUp"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 177
    return-void
.end method

.method public setHeightRange(II)V
    .locals 0
    .param p1, "rowMinHeight"    # I
    .param p2, "rowMaxHeight"    # I

    .prologue
    .line 292
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMinHeight:I

    .line 293
    iput p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRowMaxHeight:I

    .line 294
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 9
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 488
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 491
    .local v0, "oldShowingPublic":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-nez v2, :cond_1

    .line 492
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    .line 506
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-ne v2, v0, :cond_4

    .line 526
    :cond_0
    :goto_1
    return-void

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isAppLockedByIManager(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationDetailsEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2

    .line 511
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    if-nez p2, :cond_7

    .line 514
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 515
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 516
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 517
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    .line 518
    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 519
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v6, :cond_6

    :goto_4
    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 524
    :goto_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateVetoButton()V

    .line 525
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    goto/16 :goto_1

    :cond_5
    move v2, v5

    .line 518
    goto :goto_3

    :cond_6
    move v5, v3

    .line 519
    goto :goto_4

    .line 521
    :cond_7
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateShowingPublic(JJ)V

    goto :goto_5
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 1
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicForIntrinsicHeight:Z

    .line 484
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIconAnimationRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    .line 107
    return-void
.end method

.method public setSensitive(Z)V
    .locals 0
    .param p1, "sensitive"    # Z

    .prologue
    .line 479
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    .line 480
    return-void
.end method

.method public setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v1, 0x1

    .line 150
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateVetoButton()V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->alwaysExpandThis(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAlwaysExpand(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlwaysExpand(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlwaysExpand(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public setSystemExpanded(Z)V
    .locals 3
    .param p1, "expand"    # Z

    .prologue
    .line 386
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->alwaysExpandThis(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const/4 p1, 0x1

    .line 391
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    if-eq p1, v1, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 393
    .local v0, "wasExpanded":Z
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 395
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    .line 397
    .end local v0    # "wasExpanded":Z
    :cond_1
    return-void
.end method

.method protected setTapTip(Z)V
    .locals 11
    .param p1, "showTip"    # Z

    .prologue
    .line 653
    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v8, :cond_3

    .line 654
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v3

    .line 655
    .local v3, "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    .line 656
    .local v1, "contractedChild":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e01ad

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 657
    .local v5, "tapTip":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a004a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 658
    .local v4, "tapColor":I
    const v7, 0x102007f

    .line 659
    .local v7, "timeViewId":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-ne v3, v8, :cond_1

    .line 660
    const v7, 0x102007f

    .line 664
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 666
    .local v6, "timeView":Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_1
    if-nez v6, :cond_2

    .line 671
    const-string v8, "ExpandableNotificationRow"

    const-string v9, "setTapTip() , timeView == null"

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .end local v1    # "contractedChild":Landroid/view/View;
    .end local v3    # "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v4    # "tapColor":I
    .end local v5    # "tapTip":Ljava/lang/String;
    .end local v6    # "timeView":Landroid/widget/TextView;
    .end local v7    # "timeViewId":I
    :goto_2
    return-void

    .line 661
    .restart local v1    # "contractedChild":Landroid/view/View;
    .restart local v3    # "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v4    # "tapColor":I
    .restart local v5    # "tapTip":Ljava/lang/String;
    .restart local v7    # "timeViewId":I
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-ne v3, v8, :cond_0

    .line 662
    const v7, 0x7f11005b

    goto :goto_0

    .line 667
    .restart local v6    # "timeView":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 668
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "ExpandableNotificationRow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setTapTip(), find time view error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 675
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p1, :cond_4

    .line 676
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationTime:Ljava/lang/CharSequence;

    .line 677
    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTimeColor:I

    .line 678
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 685
    .end local v1    # "contractedChild":Landroid/view/View;
    .end local v3    # "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v4    # "tapColor":I
    .end local v5    # "tapTip":Ljava/lang/String;
    .end local v6    # "timeView":Landroid/widget/TextView;
    .end local v7    # "timeViewId":I
    :cond_3
    :goto_3
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTapTip(Z)V

    goto :goto_2

    .line 681
    .restart local v1    # "contractedChild":Landroid/view/View;
    .restart local v3    # "showingLayout":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v4    # "tapColor":I
    .restart local v5    # "tapTip":Ljava/lang/String;
    .restart local v6    # "timeView":Landroid/widget/TextView;
    .restart local v7    # "timeViewId":I
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationTime:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTimeColor:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method public setUserExpanded(Z)V
    .locals 4
    .param p1, "userExpanded"    # Z

    .prologue
    const/4 v3, 0x1

    .line 344
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->alwaysExpandThis(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    const/4 p1, 0x1

    .line 352
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_0

    .line 353
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    .line 354
    .local v0, "wasExpanded":Z
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    .line 355
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    .line 356
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    goto :goto_0
.end method

.method public setUserLocked(Z)V
    .locals 0
    .param p1, "userLocked"    # Z

    .prologue
    .line 369
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    .line 370
    return-void
.end method

.method protected updateDividerWidth(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDivider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 258
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 263
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void

    .line 261
    .restart local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0
.end method
