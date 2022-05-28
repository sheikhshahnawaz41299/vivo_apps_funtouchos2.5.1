.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# static fields
.field public static final DIMMED_SCALE:F = 1.0f

.field private static final LOG_TAG:Ljava/lang/String; = "StackScrollAlgorithm"

.field private static final MAX_ITEMS_IN_BOTTOM_STACK:I = 0x3

.field private static final MAX_ITEMS_IN_TOP_STACK:I = 0x3


# instance fields
.field private mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mBottomStackPeekSize:I

.field private mBottomStackSlowDownLength:I

.field private mCollapseSecondCardPadding:I

.field private mCollapsedSize:I

.field private mExpandedOnStart:Z

.field private mFirstChildMaxHeight:I

.field private mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

.field private mInnerHeight:I

.field private mIsExpanded:Z

.field private mIsExpansionChanging:Z

.field private mIsSmallScreen:Z

.field private mLayoutHeight:I

.field private mMaxNotificationHeight:I

.field private mNotificationMinHeight:I

.field private mPaddingBetweenElements:I

.field private mPaddingBetweenElementsDimmed:I

.field private mPaddingBetweenElementsNormal:I

.field private mRoundedRectCornerRadius:I

.field private mScaleDimmed:Z

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

.field private mTopPadding:I

.field private mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

.field private mTopStackPeekSize:I

.field private mTopStackSlowDownLength:I

.field private mTopStackTotalSize:I

.field private mZBasicHeight:I

.field private mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePadding(Z)V

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/View;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 3
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p2, "childHeight"    # I

    .prologue
    .line 545
    iget v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 547
    return-void
.end method

.method private clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 2
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p2, "childHeight"    # I

    .prologue
    .line 558
    iget v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    sub-int/2addr v1, p2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 560
    return-void
.end method

.method private clampYTranslation(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 0
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p2, "childHeight"    # I

    .prologue
    .line 532
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 533
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 534
    return-void
.end method

.method private findFirstVisibleChild(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 899
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 900
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 901
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 902
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 906
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    .line 900
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 906
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private findNumberOfItemsInTopStackAndUpdateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 13
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 691
    const/4 v8, 0x0

    .line 692
    .local v8, "yPositionInScrollView":F
    iget-object v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 695
    .local v2, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_6

    .line 696
    iget-object v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 697
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v4

    .line 698
    .local v4, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v3

    .line 699
    .local v3, "childHeight":I
    int-to-float v10, v3

    add-float/2addr v10, v8

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v11, v11

    add-float v9, v10, v11

    .line 702
    .local v9, "yPositionInScrollViewAfterElement":F
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v10, v10

    cmpg-float v10, v8, v10

    if-gez v10, :cond_7

    .line 703
    if-nez v5, :cond_3

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    if-gt v10, v11, :cond_3

    .line 706
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    sub-int v0, v10, v11

    .line 709
    .local v0, "bottomPeekStart":I
    iget-boolean v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne v1, v10, :cond_2

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    int-to-float v6, v10

    .line 715
    .local v6, "maxHeight":F
    :goto_1
    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 716
    int-to-float v10, v0

    invoke-static {v10, v6}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v4, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 720
    :cond_0
    iput v12, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 762
    .end local v0    # "bottomPeekStart":I
    .end local v6    # "maxHeight":F
    :cond_1
    :goto_2
    move v8, v9

    .line 695
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 709
    .restart local v0    # "bottomPeekStart":I
    :cond_2
    int-to-float v6, v3

    goto :goto_1

    .line 722
    .end local v0    # "bottomPeekStart":I
    :cond_3
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_4

    .line 724
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    add-float/2addr v10, v12

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 727
    if-nez v5, :cond_1

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 730
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    iput v10, v4, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    goto :goto_2

    .line 736
    :cond_4
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v10, v10

    sub-float/2addr v10, v8

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    .line 738
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v11, v3

    int-to-float v11, v11

    div-float/2addr v10, v11

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    .line 742
    const/4 v10, 0x0

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    .line 743
    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    add-float/2addr v10, v11

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 745
    if-nez v5, :cond_5

    .line 747
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v10, v10

    sub-float v10, v9, v10

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v11, v11

    add-float v7, v10, v11

    .line 750
    .local v7, "newSize":F
    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v10, v10

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 751
    iput v12, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 752
    float-to-int v10, v7

    iput v10, v4, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 754
    .end local v7    # "newSize":F
    :cond_5
    iput v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    .line 764
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "childHeight":I
    .end local v4    # "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .end local v9    # "yPositionInScrollViewAfterElement":F
    :cond_6
    :goto_3
    return-void

    .line 758
    .restart local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v3    # "childHeight":I
    .restart local v4    # "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .restart local v9    # "yPositionInScrollViewAfterElement":F
    :cond_7
    add-int/lit8 v10, v5, -0x1

    iput v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    goto :goto_3
.end method

.method private getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 564
    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 565
    check-cast v1, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    .line 566
    .local v1, "row":Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;
    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;->getIntrinsicHeight()I

    move-result v2

    .line 576
    .end local v1    # "row":Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;
    :goto_0
    return v2

    .line 569
    :cond_0
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 570
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 571
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    goto :goto_0

    .line 572
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 573
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 574
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v2

    goto :goto_0

    .line 576
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_2
    if-nez p1, :cond_3

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 8
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v2

    .line 325
    .local v2, "draggedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 326
    .local v1, "draggedView":Landroid/view/View;
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 327
    .local v0, "childIndex":I
    if-ltz v0, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 328
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 329
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 332
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    .line 335
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 339
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    .line 341
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    goto :goto_0

    .line 344
    .end local v0    # "childIndex":I
    .end local v1    # "draggedView":Landroid/view/View;
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f0f001a

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsDimmed:I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsNormal:I

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mNotificationMinHeight:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mMaxNotificationHeight:I

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    .line 134
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackSlowDownLength:I

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mRoundedRectCornerRadius:I

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    .line 145
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMaxSizeInitialized(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 2
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 891
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 892
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 893
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isMaxExpandHeightInitialized()Z

    move-result v1

    .line 895
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateChildClippingAndBackground(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;FFF)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p2, "realHeight"    # F
    .param p3, "clipHeight"    # F
    .param p4, "backgroundHeight"    # F

    .prologue
    const/4 v2, 0x0

    .line 279
    cmpl-float v0, p2, p3

    if-lez v0, :cond_0

    .line 281
    sub-float v0, p2, p3

    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    .line 285
    :goto_0
    cmpl-float v0, p2, p4

    if-lez v0, :cond_1

    .line 287
    sub-float v0, p2, p4

    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    .line 291
    :goto_1
    return-void

    .line 283
    :cond_0
    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->topOverLap:I

    goto :goto_0

    .line 289
    :cond_1
    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    goto :goto_1
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 17
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 218
    const/4 v9, 0x0

    .line 219
    .local v9, "previousNotificationEnd":F
    const/4 v11, 0x0

    .line 220
    .local v11, "previousNotificationStart":F
    const/4 v10, 0x0

    .line 221
    .local v10, "previousNotificationIsSwiped":Z
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 222
    .local v2, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 223
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 224
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v12

    .line 225
    .local v12, "state":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    iget v13, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v14, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    int-to-float v14, v14

    const/high16 v15, 0x3f800000    # 1.0f

    iget v0, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    add-float v8, v13, v14

    .line 226
    .local v8, "newYTranslation":F
    iget v13, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    int-to-float v13, v13

    iget v14, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    mul-float v6, v13, v14

    .line 228
    .local v6, "newHeight":F
    add-float v7, v8, v6

    .line 231
    .local v7, "newNotificationEnd":F
    if-eqz v10, :cond_2

    .line 234
    move v3, v6

    .line 253
    .local v3, "clipHeight":F
    :cond_0
    :goto_1
    sub-float v13, v11, v8

    sub-float v13, v6, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v6, v3, v13}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChildClippingAndBackground(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;FFF)V

    .line 256
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v13

    if-nez v13, :cond_1

    .line 259
    iget v13, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    int-to-float v13, v13

    iget v14, v12, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    mul-float/2addr v13, v14

    add-float v11, v8, v13

    .line 260
    move v9, v7

    .line 222
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 236
    .end local v3    # "clipHeight":F
    :cond_2
    sub-float v3, v7, v9

    .line 237
    .restart local v3    # "clipHeight":F
    const/4 v13, 0x0

    invoke-static {v13, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 238
    const/4 v13, 0x0

    cmpl-float v13, v3, v13

    if-eqz v13, :cond_0

    .line 247
    const/4 v4, 0x0

    .line 249
    .local v4, "clippingCorrection":F
    add-float/2addr v3, v4

    goto :goto_1

    .line 266
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "clipHeight":F
    .end local v4    # "clippingCorrection":F
    .end local v6    # "newHeight":F
    .end local v7    # "newNotificationEnd":F
    .end local v8    # "newYTranslation":F
    .end local v12    # "state":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_3
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v5

    .line 299
    .local v5, "dimmed":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v4

    .line 300
    .local v4, "dark":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v6

    .line 301
    .local v6, "hideSensitive":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 302
    .local v0, "activatedChild":Landroid/view/View;
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 303
    .local v2, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_4

    .line 304
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 305
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    .line 306
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    .line 307
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    .line 308
    iput-boolean v6, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->hideSensitive:Z

    .line 309
    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    .line 310
    .local v8, "isActivatedChild":Z
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    if-eqz v9, :cond_0

    if-eqz v5, :cond_0

    if-eqz v8, :cond_3

    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    :goto_2
    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    .line 313
    if-eqz v5, :cond_1

    if-eqz v8, :cond_1

    .line 314
    iget v9, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    const/high16 v10, 0x40000000    # 2.0f

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    .line 303
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 309
    .end local v8    # "isActivatedChild":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 310
    .restart local v8    # "isActivatedChild":Z
    :cond_3
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    .line 317
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .end local v8    # "isActivatedChild":Z
    :cond_4
    return-void
.end method

.method private updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 849
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->findFirstVisibleChild(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 850
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_1

    .line 851
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mExpandedOnStart:Z

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    .line 863
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V

    goto :goto_0

    .line 861
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    goto :goto_0
.end method

.method private updateFirstChildMaxSizeToMaxHeight()V
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->isMaxSizeInitialized(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    new-instance v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$1;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 888
    :goto_0
    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildMaxHeight:I

    goto :goto_0
.end method

.method private updateInnerHeight()V
    .locals 2

    .prologue
    .line 824
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    .line 825
    return-void
.end method

.method private updatePadding(Z)V
    .locals 6
    .param p1, "dimmed"    # Z

    .prologue
    const/4 v5, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 97
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackPeekSize:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getBottomStackSlowDownLength()I

    move-result v2

    invoke-direct {v0, v5, v1, v2, v4}, Lcom/android/systemui/statusbar/stack/PiecewiseLinearIndentationFunctor;-><init>(IIIF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    .line 109
    return-void
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 23
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    sub-int/2addr v2, v3

    int-to-float v12, v2

    .line 378
    .local v12, "bottomPeekStart":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    int-to-float v2, v2

    sub-float v11, v12, v2

    .line 381
    .local v11, "bottomStackStart":F
    const/4 v13, 0x0

    .line 384
    .local v13, "currentYPosition":F
    const/16 v21, 0x0

    .line 386
    .local v21, "yPositionInScrollView":F
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 387
    .local v17, "childCount":I
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    float-to-int v4, v2

    .line 388
    .local v4, "numberOfElementsCompletelyIn":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_e

    .line 389
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableView;

    .line 391
    .local v16, "child":Lcom/android/systemui/statusbar/ExpandableView;
    add-int/lit8 v2, v5, 0x1

    move/from16 v0, v17

    if-ge v2, v0, :cond_0

    .line 392
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElementsNormal:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 399
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v7

    .line 400
    .local v7, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    const/4 v2, 0x0

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    .line 401
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v6

    .line 402
    .local v6, "childHeight":I
    int-to-float v2, v6

    add-float v2, v2, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v3, v3

    add-float v22, v2, v3

    .line 405
    .local v22, "yPositionInScrollViewAfterElement":F
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    int-to-float v2, v2

    sub-float v2, v21, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v3, v3

    add-float v8, v2, v3

    .line 407
    .local v8, "scrollOffset":F
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    add-int/lit8 v2, v2, 0x1

    if-ne v5, v2, :cond_1

    .line 412
    invoke-static {v8, v11}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 414
    :cond_1
    iput v13, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 417
    int-to-float v2, v6

    add-float/2addr v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v3, v3

    add-float v19, v2, v3

    .line 420
    .local v19, "nextYPosition":F
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    if-gt v5, v2, :cond_a

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 423
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForTopStackChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;IIILcom/android/systemui/statusbar/stack/StackScrollState$ViewState;F)V

    .line 425
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 428
    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    int-to-float v3, v6

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v2, v2, v11

    if-ltz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-nez v2, :cond_2

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    if-eqz v2, :cond_2

    .line 431
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v2, v2

    sub-float v2, v11, v2

    iget v3, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    move/from16 v18, v0

    .line 433
    .local v18, "newSize":I
    move/from16 v0, v18

    iput v0, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 434
    iget v13, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .end local v13    # "currentYPosition":F
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object v14, v7

    move v15, v6

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FFFLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 438
    .end local v18    # "newSize":I
    :cond_2
    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToBottomStackStart(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 440
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    if-nez v2, :cond_4

    move-object/from16 v20, v16

    .line 442
    check-cast v20, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 443
    .local v20, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eqz v5, :cond_3

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    if-ne v5, v2, :cond_9

    .line 445
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDividerVisible(Z)V

    .line 500
    .end local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_4
    :goto_1
    if-nez v5, :cond_6

    .line 501
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 502
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 503
    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    iget v3, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    int-to-float v3, v3

    sub-float v3, v12, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 505
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapseSecondCardPadding:I

    int-to-float v2, v2

    sub-float v2, v12, v2

    iget v3, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 509
    :cond_5
    const/4 v2, 0x1

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    .line 511
    :cond_6
    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    if-nez v2, :cond_7

    .line 512
    const-string v2, "StackScrollAlgorithm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to assign location for child "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_7
    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    int-to-float v3, v6

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v3, v3

    add-float v13, v2, v3

    .line 515
    .restart local v13    # "currentYPosition":F
    move/from16 v21, v22

    .line 516
    iget v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 518
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    if-eqz v2, :cond_8

    .line 519
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 388
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 447
    .end local v13    # "currentYPosition":F
    .restart local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDividerVisible(Z)V

    goto/16 :goto_1

    .line 451
    .end local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v13    # "currentYPosition":F
    :cond_a
    cmpl-float v2, v19, v11

    if-ltz v2, :cond_d

    .line 454
    cmpl-float v2, v13, v11

    if-ltz v2, :cond_c

    .line 457
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v7, v6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 460
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    add-int/lit8 v2, v2, 0x1

    if-ne v5, v2, :cond_b

    .line 461
    cmpl-float v2, v8, v11

    if-lez v2, :cond_b

    .line 462
    const/4 v2, 0x0

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 465
    :cond_b
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    if-nez v2, :cond_4

    move-object/from16 v20, v16

    .line 467
    check-cast v20, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 468
    .restart local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDividerVisible(Z)V

    goto/16 :goto_1

    .end local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_c
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object v14, v7

    move v15, v6

    .line 474
    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FFFLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 478
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    if-nez v2, :cond_4

    move-object/from16 v20, v16

    .line 480
    check-cast v20, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 481
    .restart local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDividerVisible(Z)V

    goto/16 :goto_1

    .line 488
    .end local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_d
    const/16 v2, 0x8

    iput v2, v7, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    .line 489
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampYTranslation(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 491
    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    if-nez v2, :cond_4

    move-object/from16 v20, v16

    .line 493
    check-cast v20, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 494
    .restart local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDividerVisible(Z)V

    goto/16 :goto_1

    .line 523
    .end local v6    # "childHeight":I
    .end local v7    # "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .end local v8    # "scrollOffset":F
    .end local v16    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v19    # "nextYPosition":F
    .end local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v22    # "yPositionInScrollViewAfterElement":F
    :cond_e
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V
    .locals 5
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "speedBumpIndex"    # I

    .prologue
    .line 205
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 206
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 207
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 208
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v2

    .line 212
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    const/4 v4, -0x1

    if-eq p3, v4, :cond_0

    if-lt v3, p3, :cond_0

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->belowSpeedBump:Z

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 214
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_1
    return-void
.end method

.method private updateStateForChildFullyInBottomStack(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 4
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "transitioningPositionStart"    # F
    .param p3, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p4, "childHeight"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 610
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    add-float/2addr v1, v3

    iput v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 611
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    add-float/2addr v1, p2

    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 616
    .local v0, "currentYPosition":F
    const/16 v1, 0x10

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    .line 628
    :goto_0
    int-to-float v1, p4

    sub-float v1, v0, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 629
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 630
    return-void

    .line 619
    .end local v0    # "currentYPosition":F
    :cond_0
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 620
    const/4 v1, 0x0

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 625
    :cond_1
    :goto_1
    const/16 v1, 0x20

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    .line 626
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mInnerHeight:I

    int-to-float v0, v1

    .restart local v0    # "currentYPosition":F
    goto :goto_0

    .line 621
    .end local v0    # "currentYPosition":F
    :cond_2
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 623
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    sub-float v1, v3, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    goto :goto_1
.end method

.method private updateStateForChildTransitioningInBottom(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;FFFLcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V
    .locals 5
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "transitioningPositionStart"    # F
    .param p3, "bottomPeakStart"    # F
    .param p4, "currentYPosition"    # F
    .param p5, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p6, "childHeight"    # I

    .prologue
    .line 584
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, p2, p4

    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v4, p6

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    .line 589
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v1

    .line 590
    .local v1, "offset":F
    iget v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    iget v3, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    add-float/2addr v2, v3

    iput v2, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 591
    move v0, p6

    .line 592
    .local v0, "newHeight":I
    iget v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    if-le p6, v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    if-eqz v2, :cond_0

    .line 593
    add-float v2, p2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, p4

    int-to-float v3, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v0, v2

    .line 595
    iput v0, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 597
    :cond_0
    add-float v2, p2, v1

    int-to-float v3, v0

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 601
    invoke-direct {p0, p5, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToTopStackEnd(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;I)V

    .line 602
    const/16 v2, 0x8

    iput v2, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    .line 603
    return-void
.end method

.method private updateStateForTopStackChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;IIILcom/android/systemui/statusbar/stack/StackScrollState$ViewState;F)V
    .locals 8
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "numberOfElementsCompletelyIn"    # I
    .param p3, "i"    # I
    .param p4, "childHeight"    # I
    .param p5, "childViewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p6, "scrollOffset"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 639
    add-int/lit8 v4, p3, -0x1

    add-int/lit8 v5, p2, -0x3

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 641
    .local v3, "paddedIndex":I
    if-ltz v3, :cond_2

    .line 644
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v4, p4

    int-to-float v4, v4

    iget v5, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    sub-float v1, v4, v5

    .line 646
    .local v1, "distanceToStack":F
    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    if-ne p3, v4, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 651
    iput p6, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 666
    :goto_0
    const/4 v4, 0x4

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    .line 679
    .end local v1    # "distanceToStack":F
    :goto_1
    return-void

    .line 655
    .restart local v1    # "distanceToStack":F
    :cond_0
    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    if-ne p3, v4, :cond_1

    .line 656
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float v4, v1, v4

    sub-float v2, v7, v4

    .line 662
    .local v2, "numItemsBefore":F
    :goto_2
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackTotalSize:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopStackIndentationFunctor:Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/stack/StackIndentationFunctor;->getValue(F)F

    move-result v5

    sub-float v0, v4, v5

    .line 664
    .local v0, "currentChildEndY":F
    int-to-float v4, p4

    sub-float v4, v0, v4

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    goto :goto_0

    .line 659
    .end local v0    # "currentChildEndY":F
    .end local v2    # "numItemsBefore":F
    :cond_1
    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    int-to-float v5, p3

    sub-float v2, v4, v5

    .restart local v2    # "numItemsBefore":F
    goto :goto_2

    .line 668
    .end local v1    # "distanceToStack":F
    .end local v2    # "numItemsBefore":F
    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 669
    iget v4, p1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    sub-float v4, v7, v4

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 674
    :goto_3
    iget v4, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    sub-int/2addr v4, p4

    int-to-float v4, v4

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 675
    const/4 v4, 0x2

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->location:I

    goto :goto_1

    .line 672
    :cond_3
    const/4 v4, 0x0

    iput v4, p5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    goto :goto_3
.end method

.method private updateVisibleChildren(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 351
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 352
    .local v1, "hostView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 353
    .local v0, "childCount":I
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 354
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 355
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 356
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 357
    .local v3, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 358
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v4

    .line 359
    .local v4, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v4, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 360
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v4    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    .end local v3    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 775
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 776
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 777
    iget-object v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 778
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v2

    .line 779
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    int-to-float v8, v3

    iget v10, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    cmpg-float v8, v8, v10

    if-gez v8, :cond_2

    .line 780
    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    int-to-float v10, v3

    sub-float v6, v8, v10

    .line 784
    .local v6, "stackIndex":F
    const/high16 v10, 0x40400000    # 3.0f

    if-nez v3, :cond_1

    const/high16 v8, 0x40200000    # 2.5f

    :goto_1
    add-float v4, v10, v8

    .line 785
    .local v4, "max":F
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 786
    if-nez v3, :cond_0

    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 791
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v6, v8

    .line 792
    iget v8, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    if-le v8, v10, :cond_0

    .line 797
    const v8, 0x3dcccccd    # 0.1f

    const v10, 0x3ff33333    # 1.9f

    mul-float/2addr v10, v6

    add-float v6, v8, v10

    .line 800
    :cond_0
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v8, v10

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    .line 776
    .end local v4    # "max":F
    .end local v6    # "stackIndex":F
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v6    # "stackIndex":F
    :cond_1
    move v8, v9

    .line 784
    goto :goto_1

    .line 802
    .end local v6    # "stackIndex":F
    :cond_2
    int-to-float v8, v3

    add-int/lit8 v10, v1, -0x1

    int-to-float v10, v10

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v10, v11

    cmpl-float v8, v8, v10

    if-lez v8, :cond_3

    .line 803
    int-to-float v8, v3

    add-int/lit8 v10, v1, -0x1

    int-to-float v10, v10

    iget v11, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    sub-float/2addr v10, v11

    sub-float v5, v8, v10

    .line 804
    .local v5, "numItemsAbove":F
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iget v10, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZDistanceBetweenElements:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float v7, v8, v10

    .line 806
    .local v7, "translationZ":F
    iput v7, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    goto :goto_2

    .line 808
    .end local v5    # "numItemsAbove":F
    .end local v7    # "translationZ":F
    :cond_3
    iget v8, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mZBasicHeight:I

    int-to-float v8, v8

    iput v8, v2, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    goto :goto_2

    .line 811
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childViewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_4
    return-void
.end method


# virtual methods
.method public getBottomStackSlowDownLength()I
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 7
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 157
    .local v0, "algorithmState":Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    .line 159
    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInTopStack:F

    .line 160
    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInTop:F

    .line 161
    iput v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->lastTopStackIndex:I

    .line 162
    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrolledPixelsTop:F

    .line 163
    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->itemsInBottomStack:F

    .line 164
    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->partialInBottom:F

    .line 165
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v1

    .line 167
    .local v1, "bottomOverScroll":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v4

    .line 171
    .local v4, "scrollY":I
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 173
    iget v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mNotificationMinHeight:I

    iput v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 174
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 175
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 176
    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 177
    .local v2, "firstVisibleChild":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v5, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 179
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 175
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 184
    .end local v2    # "firstVisibleChild":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "i":I
    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    add-float/2addr v5, v1

    float-to-int v5, v5

    iput v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 186
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateVisibleChildren(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 189
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->findNumberOfItemsInTopStackAndUpdateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 192
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 195
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 197
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 198
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 199
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 200
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v5

    invoke-direct {p0, p2, v0, v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;I)V

    .line 201
    return-void
.end method

.method public notifyChildrenChanged(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/ViewGroup;

    .prologue
    .line 919
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    if-eqz v0, :cond_0

    .line 920
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$2;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 927
    :cond_0
    return-void
.end method

.method public onExpansionStarted(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 2
    .param p1, "currentState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 842
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    .line 843
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mExpandedOnStart:Z

    .line 844
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 845
    .local v0, "hostView":Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildHeightWhileExpanding(Landroid/view/ViewGroup;)V

    .line 846
    return-void
.end method

.method public onExpansionStopped()V
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpansionChanging:Z

    .line 911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    .line 912
    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mFirstChildWhileExpanding:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateFirstChildMaxSizeToMaxHeight()V

    .line 937
    :cond_0
    return-void
.end method

.method public setDimmed(Z)V
    .locals 0
    .param p1, "dimmed"    # Z

    .prologue
    .line 930
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePadding(Z)V

    .line 931
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 915
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 916
    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0
    .param p1, "layoutHeight"    # I

    .prologue
    .line 814
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mLayoutHeight:I

    .line 815
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateInnerHeight()V

    .line 816
    return-void
.end method

.method public setTopPadding(I)V
    .locals 0
    .param p1, "topPadding"    # I

    .prologue
    .line 819
    iput p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTopPadding:I

    .line 820
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateInnerHeight()V

    .line 821
    return-void
.end method

.method public shouldScaleDimmed()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mScaleDimmed:Z

    return v0
.end method

.method public updateIsSmallScreen(I)V
    .locals 2
    .param p1, "panelHeight"    # I

    .prologue
    .line 835
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackSlowDownLength:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mBottomStackPeekSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mMaxNotificationHeight:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsSmallScreen:Z

    .line 839
    return-void

    .line 835
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
