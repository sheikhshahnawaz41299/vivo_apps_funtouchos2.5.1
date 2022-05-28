.class public Lcom/android/systemui/statusbar/stack/StackStateAnimator;
.super Ljava/lang/Object;
.source "StackStateAnimator.java"


# static fields
.field public static final ANIMATION_DELAY_PER_ELEMENT_DARK:I = 0x18

.field public static final ANIMATION_DELAY_PER_ELEMENT_GO_TO_FULL_SHADE:I = 0x30

.field public static final ANIMATION_DELAY_PER_ELEMENT_INTERRUPTING:I = 0x50

.field public static final ANIMATION_DELAY_PER_ELEMENT_MANUAL:I = 0x20

.field public static final ANIMATION_DURATION_APPEAR_DISAPPEAR:I = 0x1d0

.field public static final ANIMATION_DURATION_DIMMED_ACTIVATED:I = 0xdc

.field public static final ANIMATION_DURATION_GO_TO_FULL_SHADE:I = 0x1c0

.field public static final ANIMATION_DURATION_STANDARD:I = 0x168

.field private static final DELAY_EFFECT_MAX_INDEX_DIFFERENCE:I = 0x2

.field private static final TAG_ANIMATOR_ALPHA:I = 0x7f110003

.field private static final TAG_ANIMATOR_HEIGHT:I = 0x7f110005

.field private static final TAG_ANIMATOR_SCALE:I = 0x7f110002

.field private static final TAG_ANIMATOR_TOP_INSET:I = 0x7f110004

.field private static final TAG_ANIMATOR_TRANSLATION_Y:I = 0x7f110000

.field private static final TAG_ANIMATOR_TRANSLATION_Z:I = 0x7f110001

.field private static final TAG_END_ALPHA:I = 0x7f110009

.field private static final TAG_END_HEIGHT:I = 0x7f11000b

.field private static final TAG_END_SCALE:I = 0x7f110008

.field private static final TAG_END_TOP_INSET:I = 0x7f11000a

.field private static final TAG_END_TRANSLATION_Y:I = 0x7f110006

.field private static final TAG_END_TRANSLATION_Z:I = 0x7f110007

.field private static final TAG_START_ALPHA:I = 0x7f11000f

.field private static final TAG_START_HEIGHT:I = 0x7f110011

.field private static final TAG_START_SCALE:I = 0x7f11000e

.field private static final TAG_START_TOP_INSET:I = 0x7f110010

.field private static final TAG_START_TRANSLATION_Y:I = 0x7f11000c

.field private static final TAG_START_TRANSLATION_Z:I = 0x7f11000d


# instance fields
.field private mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

.field private mAnimationListenerPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/animation/AnimatorListenerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatorSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentAdditionalDelay:J

.field private mCurrentLastNotAddedIndex:I

.field private mCurrentLength:J

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGoToFullShadeAppearingTranslation:I

.field public mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNewAddChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNewEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTopOverScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 2
    .param p1, "hostLayout"    # Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 98
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 100
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J
    .locals 19
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDarkEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 282
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayDark(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J

    move-result-wide v10

    .line 328
    :cond_0
    :goto_0
    return-wide v10

    .line 284
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 285
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J

    move-result-wide v10

    goto :goto_0

    .line 287
    :cond_2
    const-wide/16 v10, 0x0

    .line 288
    .local v10, "minDelay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 289
    .local v8, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    const-wide/16 v6, 0x50

    .line 290
    .local v6, "delayPerElement":J
    iget v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    goto :goto_1

    .line 292
    :pswitch_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 293
    .local v14, "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 295
    .local v2, "changingIndex":I
    sub-int v16, v14, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 296
    .local v3, "difference":I
    const/16 v16, 0x0

    const/16 v17, 0x2

    add-int/lit8 v18, v3, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 298
    rsub-int/lit8 v16, v3, 0x2

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    .line 299
    .local v4, "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 300
    goto :goto_1

    .line 303
    .end local v2    # "changingIndex":I
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v14    # "ownIndex":I
    :pswitch_1
    const-wide/16 v6, 0x20

    .line 305
    :pswitch_2
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 306
    .restart local v14    # "ownIndex":I
    iget-object v0, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    const/4 v13, 0x1

    .line 307
    .local v13, "noNextView":Z
    :goto_2
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildNotGone()Landroid/view/View;

    move-result-object v15

    .line 311
    .local v15, "viewAfterChangingView":Landroid/view/View;
    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v16

    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 313
    .local v12, "nextIndex":I
    if-lt v14, v12, :cond_3

    .line 315
    add-int/lit8 v14, v14, 0x1

    .line 317
    :cond_3
    sub-int v16, v14, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 318
    .restart local v3    # "difference":I
    const/16 v16, 0x0

    const/16 v17, 0x2

    add-int/lit8 v18, v3, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 320
    int-to-long v0, v3

    move-wide/from16 v16, v0

    mul-long v4, v16, v6

    .line 321
    .restart local v4    # "delay":J
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    .line 322
    goto/16 :goto_1

    .line 306
    .end local v3    # "difference":I
    .end local v4    # "delay":J
    .end local v12    # "nextIndex":I
    .end local v13    # "noNextView":Z
    .end local v15    # "viewAfterChangingView":Landroid/view/View;
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 307
    .restart local v13    # "noNextView":Z
    :cond_5
    iget-object v15, v8, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    goto :goto_3

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateDelayDark(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J
    .locals 4
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 335
    const/4 v0, 0x0

    .line 342
    .local v0, "referenceIndex":I
    :goto_0
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x18

    int-to-long v2, v1

    return-wide v2

    .line 336
    .end local v0    # "referenceIndex":I
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v1, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_1

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "referenceIndex":I
    goto :goto_0

    .line 340
    .end local v0    # "referenceIndex":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget v0, v1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .restart local v0    # "referenceIndex":I
    goto :goto_0
.end method

.method private calculateDelayGoToFullShade(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;)J
    .locals 6
    .param p1, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    .prologue
    .line 346
    iget v1, p1, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    int-to-float v0, v1

    .line 347
    .local v0, "index":F
    float-to-double v2, v0

    const-wide v4, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 348
    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-long v2, v1

    return-wide v2
.end method

.method private cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 7
    .param p1, "duration"    # J
    .param p3, "previousAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 793
    move-wide v0, p1

    .line 794
    .local v0, "newDuration":J
    if-eqz p3, :cond_0

    .line 797
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 799
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 801
    :cond_0
    return-wide v0
.end method

.method private findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I
    .locals 6
    .param p1, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 141
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 142
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 143
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 145
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    .line 146
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 142
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 149
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    iget v4, v3, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    .line 153
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :goto_1
    return v4

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFinalActualHeight(Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p0, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 931
    if-nez p0, :cond_0

    .line 932
    const/4 v1, 0x0

    .line 938
    :goto_0
    return v1

    .line 934
    :cond_0
    const v1, 0x7f110005

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 935
    .local v0, "heightAnimator":Landroid/animation/ValueAnimator;
    if-nez v0, :cond_1

    .line 936
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    goto :goto_0

    .line 938
    :cond_1
    const v1, 0x7f11000b

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationListenerPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorListenerAdapter;

    .line 757
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$10;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)V

    goto :goto_0
.end method

.method private onAnimationFinished()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onChildAnimationFinished()V

    .line 806
    return-void
.end method

.method private shouldShowOnKeyguard(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 5
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    const/4 v3, 0x0

    .line 568
    instance-of v2, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    instance-of v2, p1, Lcom/android/systemui/vivo/common/notification/NotificationPartitionTitleRow;

    if-nez v2, :cond_0

    move-object v0, p1

    .line 570
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 571
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 572
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v1, :cond_0

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 576
    const/4 v2, 0x1

    .line 579
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 470
    const v14, 0x7f11000f

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 471
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f110009

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 472
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 473
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 563
    :goto_0
    return-void

    .line 476
    :cond_0
    const v14, 0x7f110003

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 477
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    if-nez v14, :cond_3

    .line 479
    if-eqz v9, :cond_1

    .line 482
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 483
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 484
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 485
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 486
    const v14, 0x7f11000f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 487
    const v14, 0x7f110009

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 488
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 492
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    .line 493
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-nez v14, :cond_2

    .line 494
    const/4 v14, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    .line 497
    :cond_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 499
    const/16 v14, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    .line 505
    :cond_3
    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 507
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 509
    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 510
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;F)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 541
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 542
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 543
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_5

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_5

    .line 544
    :cond_4
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 546
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 548
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$6;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 559
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 560
    const v14, 0x7f110003

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 561
    const v14, 0x7f11000f

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 562
    const v14, 0x7f110009

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;I)V
    .locals 34
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p4, "i"    # I

    .prologue
    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v21

    .line 162
    .local v21, "childVisibility":I
    if-nez v21, :cond_f

    const/16 v31, 0x1

    .line 163
    .local v31, "wasVisible":Z
    :goto_0
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    .line 164
    .local v4, "alpha":F
    if-nez v31, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->gone:Z

    if-nez v5, :cond_0

    .line 165
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    .line 168
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_10

    const/16 v32, 0x1

    .line 169
    .local v32, "yTranslationChanging":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_11

    const/16 v33, 0x1

    .line 170
    .local v33, "zTranslationChanging":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v5

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_12

    const/16 v28, 0x1

    .line 172
    .local v28, "scaleChanging":Z
    :goto_3
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v5, :cond_1

    .line 173
    const/16 v33, 0x0

    .line 174
    const/16 v28, 0x0

    .line 177
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getAlpha()F

    move-result v5

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_13

    const/16 v20, 0x1

    .line 178
    .local v20, "alphaChanging":Z
    :goto_4
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v6

    if-eq v5, v6, :cond_14

    const/16 v24, 0x1

    .line 179
    .local v24, "heightChanging":Z
    :goto_5
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->isDark()Z

    move-result v6

    if-eq v5, v6, :cond_15

    const/16 v22, 0x1

    .line 180
    .local v22, "darkChanging":Z
    :goto_6
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v6

    if-eq v5, v6, :cond_16

    const/16 v29, 0x1

    .line 181
    .local v29, "topInsetChanging":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v30

    .line 182
    .local v30, "wasAdded":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v0, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    move/from16 v23, v0

    .line 183
    .local v23, "hasDelays":Z
    if-nez v32, :cond_2

    if-nez v33, :cond_2

    if-nez v28, :cond_2

    if-nez v20, :cond_2

    if-nez v24, :cond_2

    if-nez v29, :cond_2

    if-eqz v22, :cond_17

    :cond_2
    const/16 v25, 0x1

    .line 185
    .local v25, "isDelayRelevant":Z
    :goto_8
    move/from16 v27, v30

    .line 186
    .local v27, "noAnimation":Z
    const-wide/16 v10, 0x0

    .line 187
    .local v10, "delay":J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 188
    .local v8, "duration":J
    if-eqz v23, :cond_3

    if-nez v25, :cond_4

    :cond_3
    if-eqz v30, :cond_5

    .line 189
    :cond_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->calculateChildAnimationDelay(Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;)J

    move-result-wide v12

    add-long v10, v6, v12

    .line 192
    :cond_5
    if-eqz v30, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-eqz v5, :cond_6

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mGoToFullShadeAppearingTranslation:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 194
    const/16 v32, 0x1

    .line 195
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->notGoneIndex:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    sub-int/2addr v5, v6

    int-to-float v0, v5

    move/from16 v26, v0

    .line 196
    .local v26, "longerDurationFactor":F
    move/from16 v0, v26

    float-to-double v6, v0

    const-wide v12, 0x3fe6666660000000L    # 0.699999988079071

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v26, v0

    .line 197
    const-wide/16 v6, 0x202

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v26

    float-to-long v12, v5

    add-long v8, v6, v12

    .line 202
    .end local v26    # "longerDurationFactor":F
    :cond_6
    if-eqz v32, :cond_7

    .line 203
    if-eqz v27, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    if-nez v5, :cond_18

    .line 204
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 211
    :cond_7
    :goto_9
    if-eqz v33, :cond_8

    .line 212
    if-eqz v27, :cond_19

    .line 213
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 220
    :cond_8
    :goto_a
    if-eqz v28, :cond_9

    .line 221
    if-eqz v27, :cond_1a

    .line 222
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleX(F)V

    .line 223
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleY(F)V

    .line 230
    :cond_9
    :goto_b
    if-eqz v20, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_a

    .line 231
    if-eqz v27, :cond_1b

    .line 232
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    .line 239
    :cond_a
    :goto_c
    if-eqz v24, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v5

    if-eqz v5, :cond_b

    .line 240
    if-eqz v27, :cond_1c

    .line 241
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 248
    :cond_b
    :goto_d
    if-eqz v29, :cond_c

    .line 249
    if-eqz v27, :cond_1d

    .line 250
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    .line 257
    :cond_c
    :goto_e
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dimmed:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    if-eqz v5, :cond_1e

    if-nez v30, :cond_1e

    if-nez v27, :cond_1e

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setDimmed(ZZ)V

    .line 261
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->dark:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    if-eqz v5, :cond_1f

    if-nez v27, :cond_1f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v10, v11}, Lcom/android/systemui/statusbar/ExpandableView;->setDark(ZZJ)V

    .line 264
    move-object/from16 v0, p2

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->belowSpeedBump:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setBelowSpeedBump(Z)V

    .line 267
    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->hideSensitive:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    if-eqz v5, :cond_20

    if-nez v30, :cond_20

    if-nez v27, :cond_20

    const/4 v15, 0x1

    :goto_11
    move-object/from16 v13, p1

    move-wide/from16 v16, v10

    move-wide/from16 v18, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitive(ZZJJ)V

    .line 270
    if-eqz v30, :cond_d

    .line 271
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->performAddAnimation(JJ)V

    .line 273
    :cond_d
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/systemui/statusbar/SpeedBumpView;

    if-eqz v5, :cond_e

    move-object/from16 v14, p1

    .line 274
    check-cast v14, Lcom/android/systemui/statusbar/SpeedBumpView;

    add-long v16, v10, v8

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v15, p2

    invoke-virtual/range {v12 .. v17}, Lcom/android/systemui/statusbar/stack/StackScrollState;->performSpeedBumpAnimation(ILcom/android/systemui/statusbar/SpeedBumpView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V

    .line 277
    :cond_e
    return-void

    .line 162
    .end local v4    # "alpha":F
    .end local v8    # "duration":J
    .end local v10    # "delay":J
    .end local v20    # "alphaChanging":Z
    .end local v22    # "darkChanging":Z
    .end local v23    # "hasDelays":Z
    .end local v24    # "heightChanging":Z
    .end local v25    # "isDelayRelevant":Z
    .end local v27    # "noAnimation":Z
    .end local v28    # "scaleChanging":Z
    .end local v29    # "topInsetChanging":Z
    .end local v30    # "wasAdded":Z
    .end local v31    # "wasVisible":Z
    .end local v32    # "yTranslationChanging":Z
    .end local v33    # "zTranslationChanging":Z
    :cond_f
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 168
    .restart local v4    # "alpha":F
    .restart local v31    # "wasVisible":Z
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 169
    .restart local v32    # "yTranslationChanging":Z
    :cond_11
    const/16 v33, 0x0

    goto/16 :goto_2

    .line 170
    .restart local v33    # "zTranslationChanging":Z
    :cond_12
    const/16 v28, 0x0

    goto/16 :goto_3

    .line 177
    .restart local v28    # "scaleChanging":Z
    :cond_13
    const/16 v20, 0x0

    goto/16 :goto_4

    .line 178
    .restart local v20    # "alphaChanging":Z
    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 179
    .restart local v24    # "heightChanging":Z
    :cond_15
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 180
    .restart local v22    # "darkChanging":Z
    :cond_16
    const/16 v29, 0x0

    goto/16 :goto_7

    .line 183
    .restart local v23    # "hasDelays":Z
    .restart local v29    # "topInsetChanging":Z
    .restart local v30    # "wasAdded":Z
    :cond_17
    const/16 v25, 0x0

    goto/16 :goto_8

    .restart local v8    # "duration":J
    .restart local v10    # "delay":J
    .restart local v25    # "isDelayRelevant":Z
    .restart local v27    # "noAnimation":Z
    :cond_18
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 206
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startYTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_9

    :cond_19
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 215
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startZTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_a

    .line 225
    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startScaleAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V

    goto/16 :goto_b

    :cond_1b
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 234
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 243
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_d

    :cond_1d
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 252
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V

    goto/16 :goto_e

    .line 257
    :cond_1e
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 261
    :cond_1f
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 267
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_11
.end method

.method private startAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 745
    return-void
.end method

.method private startHeightAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 15
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 353
    const v12, 0x7f110011

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 354
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f11000b

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 355
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    .line 356
    .local v3, "newEndValue":I
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    .line 408
    :goto_0
    return-void

    .line 359
    :cond_0
    const v12, 0x7f110005

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 360
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    if-nez v12, :cond_2

    .line 362
    if-eqz v7, :cond_1

    .line 365
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 366
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 367
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 368
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 369
    const v12, 0x7f110011

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 370
    const v12, 0x7f11000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 371
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 375
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    goto :goto_0

    .line 380
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 381
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$1;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 388
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 389
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 390
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 391
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-nez v12, :cond_4

    .line 392
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 394
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 396
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$2;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 405
    const v12, 0x7f110005

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 406
    const v12, 0x7f110011

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 407
    const v12, 0x7f11000b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startInsetAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 15
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 412
    const v12, 0x7f110010

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 413
    .local v9, "previousStartValue":Ljava/lang/Integer;
    const v12, 0x7f11000a

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 414
    .local v8, "previousEndValue":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->clipTopAmount:I

    .line 415
    .local v3, "newEndValue":I
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v3, :cond_0

    .line 466
    :goto_0
    return-void

    .line 418
    :cond_0
    const v12, 0x7f110004

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 419
    .local v7, "previousAnimator":Landroid/animation/ValueAnimator;
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    if-nez v12, :cond_2

    .line 421
    if-eqz v7, :cond_1

    .line 424
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    .line 425
    .local v11, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sub-int v10, v3, v12

    .line 426
    .local v10, "relativeDiff":I
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int v6, v12, v10

    .line 427
    .local v6, "newStartValue":I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const/4 v13, 0x2

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v6, v13, v14

    const/4 v14, 0x1

    aput v3, v13, v14

    invoke-virtual {v12, v13}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 428
    const v12, 0x7f110010

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 429
    const v12, 0x7f11000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 430
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 434
    .end local v6    # "newStartValue":I
    .end local v10    # "relativeDiff":I
    .end local v11    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setClipTopAmount(I)V

    goto :goto_0

    .line 439
    :cond_2
    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v14

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v3, v12, v13

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 440
    .local v2, "animator":Landroid/animation/ValueAnimator;
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$3;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    iget-object v12, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 447
    move-wide/from16 v0, p3

    invoke-direct {p0, v0, v1, v7}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    .line 448
    .local v4, "newDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 449
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_4

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v12

    if-nez v12, :cond_4

    .line 450
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 452
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    new-instance v12, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;

    move-object/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$4;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 462
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 463
    const v12, 0x7f110004

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 464
    const v12, 0x7f110010

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 465
    const v12, 0x7f11000a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startScaleAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;J)V
    .locals 21
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J

    .prologue
    .line 690
    const v16, 0x7f11000e

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    .line 691
    .local v13, "previousStartValue":Ljava/lang/Float;
    const v16, 0x7f110008

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    .line 692
    .local v12, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->scale:F

    .line 693
    .local v7, "newEndValue":F
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    cmpl-float v16, v16, v7

    if-nez v16, :cond_0

    .line 740
    :goto_0
    return-void

    .line 696
    :cond_0
    const v16, 0x7f110002

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/ObjectAnimator;

    .line 697
    .local v11, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 699
    if-eqz v11, :cond_1

    .line 702
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 703
    .local v15, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v14, v7, v16

    .line 704
    .local v14, "relativeDiff":F
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v16

    add-float v10, v16, v14

    .line 705
    .local v10, "newStartValue":F
    const/16 v16, 0x0

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 706
    const/16 v16, 0x1

    aget-object v16, v15, v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v10, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 707
    const v16, 0x7f11000e

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 708
    const v16, 0x7f110008

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 709
    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto/16 :goto_0

    .line 713
    .end local v10    # "newStartValue":F
    .end local v14    # "relativeDiff":F
    .end local v15    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleX(F)V

    .line 714
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setScaleY(F)V

    .line 718
    :cond_2
    sget-object v16, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 720
    .local v5, "holderX":Landroid/animation/PropertyValuesHolder;
    sget-object v16, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleY()F

    move-result v19

    aput v19, v17, v18

    const/16 v18, 0x1

    aput v7, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 722
    .local v6, "holderY":Landroid/animation/PropertyValuesHolder;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v5, v16, v17

    const/16 v17, 0x1

    aput-object v6, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 723
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 724
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v11}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v8

    .line 725
    .local v8, "newDuration":J
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 728
    new-instance v16, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$9;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 736
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 737
    const v16, 0x7f110002

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 738
    const v16, 0x7f11000e

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getScaleX()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 739
    const v16, 0x7f110008

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startYTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 637
    const v14, 0x7f11000c

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 638
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f110006

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 639
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    .line 640
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 686
    :goto_0
    return-void

    .line 643
    :cond_0
    const/high16 v14, 0x7f110000

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 644
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    if-nez v14, :cond_2

    .line 646
    if-eqz v9, :cond_1

    .line 649
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 650
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 651
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 652
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 653
    const v14, 0x7f11000c

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 654
    const v14, 0x7f110006

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 655
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 659
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    goto :goto_0

    .line 664
    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 666
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 667
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 668
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 669
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_4

    .line 670
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 672
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 674
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$8;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 682
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 683
    const/high16 v14, 0x7f110000

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 684
    const v14, 0x7f11000c

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 685
    const v14, 0x7f110006

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private startZTranslationAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
    .locals 19
    .param p1, "child"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "viewState"    # Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    .param p3, "duration"    # J
    .param p5, "delay"    # J

    .prologue
    .line 585
    const v14, 0x7f11000d

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    .line 586
    .local v11, "previousStartValue":Ljava/lang/Float;
    const v14, 0x7f110007

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    .line 587
    .local v10, "previousEndValue":Ljava/lang/Float;
    move-object/from16 v0, p2

    iget v5, v0, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    .line 588
    .local v5, "newEndValue":F
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v5

    if-nez v14, :cond_0

    .line 633
    :goto_0
    return-void

    .line 591
    :cond_0
    const v14, 0x7f110001

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/ObjectAnimator;

    .line 592
    .local v9, "previousAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-boolean v14, v14, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    if-nez v14, :cond_2

    .line 594
    if-eqz v9, :cond_1

    .line 597
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 598
    .local v13, "values":[Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v14

    sub-float v12, v5, v14

    .line 599
    .local v12, "relativeDiff":F
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float v8, v14, v12

    .line 600
    .local v8, "newStartValue":F
    const/4 v14, 0x0

    aget-object v14, v13, v14

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    aput v8, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-virtual {v14, v15}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 601
    const v14, 0x7f11000d

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 602
    const v14, 0x7f110007

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 603
    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 607
    .end local v8    # "newStartValue":F
    .end local v12    # "relativeDiff":F
    .end local v13    # "values":[Landroid/animation/PropertyValuesHolder;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 611
    :cond_2
    sget-object v14, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [F

    const/16 v16, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v17

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 613
    .local v4, "animator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 614
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    .line 615
    .local v6, "newDuration":J
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 616
    const-wide/16 v14, 0x0

    cmp-long v14, p5, v14

    if-lez v14, :cond_4

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v14

    if-nez v14, :cond_4

    .line 617
    :cond_3
    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 619
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->getGlobalAnimationFinishedListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 621
    new-instance v14, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$7;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v4, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 629
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimator(Landroid/animation/ValueAnimator;)V

    .line 630
    const v14, 0x7f110001

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 631
    const v14, 0x7f11000d

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationZ()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    .line 632
    const v14, 0x7f110007

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public animateOverScrollToAmount(FZZ)V
    .locals 4
    .param p1, "targetAmount"    # F
    .param p2, "onTop"    # Z
    .param p3, "isRubberbanded"    # Z

    .prologue
    .line 883
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v1

    .line 884
    .local v1, "startOverScrollAmount":F
    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    .line 917
    :goto_0
    return-void

    .line 887
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->cancelOverScrollAnimators(Z)V

    .line 888
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 890
    .local v0, "overScrollAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 891
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZZ)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 900
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 901
    new-instance v2, Lcom/android/systemui/statusbar/stack/StackStateAnimator$13;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$13;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 911
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 912
    if-eqz p2, :cond_1

    .line 913
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 915
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public cancelOverScrollAnimators(Z)V
    .locals 1
    .param p1, "onTop"    # Z

    .prologue
    .line 920
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;

    .line 921
    .local v0, "currentAnimator":Landroid/animation/ValueAnimator;
    :goto_0
    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 924
    :cond_0
    return-void

    .line 920
    .end local v0    # "currentAnimator":Landroid/animation/ValueAnimator;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.method public clearAnimTask()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 945
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 946
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimatorSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 11
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "animationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    const/16 v10, 0x8

    const/high16 v9, 0x40000000    # 2.0f

    .line 817
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 818
    .local v2, "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    iget-object v1, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->changingView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 819
    .local v1, "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    iget v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    if-nez v6, :cond_3

    .line 823
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    .line 825
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-eqz v5, :cond_0

    .line 829
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 831
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    goto :goto_0

    .line 834
    :cond_1
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->alpha:F

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setAlpha(F)V

    .line 835
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationY(F)V

    .line 836
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->zTranslation:F

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationZ(F)V

    .line 837
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->height:I

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 838
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 840
    :cond_3
    iget v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 842
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v6

    if-ne v6, v10, :cond_4

    .line 843
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_0

    .line 849
    :cond_4
    iget-object v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->viewAfterChangingView:Landroid/view/View;

    invoke-virtual {p2, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v5

    .line 851
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v0

    .line 853
    .local v0, "actualHeight":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 854
    .local v4, "translationDirection":F
    if-eqz v5, :cond_5

    .line 857
    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;->yTranslation:F

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v7

    int-to-float v8, v0

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    mul-float/2addr v6, v9

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 860
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 863
    :cond_5
    const-wide/16 v6, 0x1d0

    new-instance v8, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;

    invoke-direct {v8, p0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator$11;-><init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v1, v6, v7, v4, v8}, Lcom/android/systemui/statusbar/ExpandableView;->performRemoveAnimation(JFLjava/lang/Runnable;)V

    goto :goto_1

    .line 871
    .end local v0    # "actualHeight":I
    .end local v4    # "translationDirection":F
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_6
    iget v6, v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    .line 875
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    goto :goto_1

    .line 879
    .end local v1    # "changingView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "event":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_7
    return-void
.end method

.method public startAnimationForEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;J)V
    .locals 7
    .param p2, "finalState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "additionalDelay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;",
            "Lcom/android/systemui/statusbar/stack/StackScrollState;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "mAnimationEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->processAnimationEvents(Ljava/util/ArrayList;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 115
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v1

    .line 116
    .local v1, "childCount":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mAnimationFilter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->applyCombination(Ljava/util/ArrayList;)V

    .line 117
    iput-wide p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentAdditionalDelay:J

    .line 118
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->combineLength(Ljava/util/ArrayList;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLength:J

    .line 119
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->findLastNotAddedIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mCurrentLastNotAddedIndex:I

    .line 120
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 121
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 123
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;

    move-result-object v3

    .line 124
    .local v3, "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 120
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-direct {p0, v0, v3, p2, v2}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;I)V

    goto :goto_1

    .line 132
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v3    # "viewState":Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->isRunning()Z

    move-result v4

    if-nez v4, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->onAnimationFinished()V

    .line 136
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 137
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mNewAddChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 138
    return-void
.end method
