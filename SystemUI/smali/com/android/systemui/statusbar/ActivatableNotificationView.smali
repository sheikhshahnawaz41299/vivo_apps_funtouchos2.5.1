.class public abstract Lcom/android/systemui/statusbar/ActivatableNotificationView;
.super Lcom/android/systemui/statusbar/ExpandableOutlineView;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
    }
.end annotation


# static fields
.field private static final ACTIVATE_ANIMATION_LENGTH:I = 0xdc

.field private static final ACTIVATE_ANIMATION_NOT_REVERSE_MS:J = 0x96L

.field private static final ACTIVATE_ANIMATION_REVERSE_MS:J = 0x15eL

.field private static final ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ALPHA_ANIMATION_END:F = 0.0f

.field private static final BACKGROUND_ANIMATION_LENGTH_MS:I = 0xdc

.field private static final DARK_ANIMATION_LENGTH:I = 0xaa

.field private static final DARK_EXIT_SCALE_START:F = 0.93f

.field private static final DOUBLETAP_TIMEOUT_MS:J = 0x1f4L

.field private static final HORIZONTAL_ANIMATION_END:F = 0.2f

.field private static final HORIZONTAL_ANIMATION_START:F = 1.0f

.field private static final HORIZONTAL_COLLAPSED_REST_PARTIAL:F = 0.05f

.field private static final TAP_TIP_TIMEOUT_MS:J = 0x7d0L

.field private static final VERTICAL_ANIMATION_START:F = 1.0f


# instance fields
.field mActivateAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mActivated:Z

.field private mAlreadyPostTapTipRunnable:Z

.field private mAnimationTranslationY:F

.field private mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mAppearAnimationFraction:F

.field private mAppearAnimationRect:Landroid/graphics/RectF;

.field private mAppearAnimationTranslation:F

.field private mAppearAnimator:Landroid/animation/ValueAnimator;

.field private mAppearPaint:Landroid/graphics/Paint;

.field private mBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

.field private mBgTint:I

.field private mBoundsBottom:I

.field private mBoundsTop:I

.field private mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

.field private mDark:Z

.field private mDimmed:Z

.field private mDownX:F

.field private mDownY:F

.field private mDrawingAppearAnimation:Z

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBelowSpeedBump:Z

.field private final mLegacyColor:I

.field private final mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLowPriorityColor:I

.field private final mLowPriorityRippleColor:I

.field private final mNormalColor:I

.field private final mNormalRippleColor:I

.field private mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

.field private mResetTapTip:Z

.field private mReverse:Z

.field private final mRoundedRectCornerRadius:I

.field private mShowingLegacyBackground:Z

.field private final mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

.field private final mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mTapTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTapTipTimeoutRunnable:Ljava/lang/Runnable;

.field private final mTintedRippleColor:I

.field private final mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 106
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 108
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->ACTIVATE_INVERSE_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v6, 0x3f4ccccd    # 0.8f

    const v5, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    iput v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 143
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    .line 149
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 163
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mReverse:Z

    .line 164
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAlreadyPostTapTipRunnable:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mResetTapTip:Z

    .line 219
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$1;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$2;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTipTimeoutRunnable:Ljava/lang/Runnable;

    .line 906
    new-instance v0, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$8;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 170
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    .line 175
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 177
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v6, v3, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    .line 180
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v3, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 183
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v6, v3, v4, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 184
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 186
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipChildren(Z)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToPadding(Z)V

    .line 188
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLegacyColor:I

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    .line 201
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAlreadyPostTapTipRunnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mResetTapTip:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mReverse:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mResetTapTip:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTipTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onShowTapTip()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/ActivatableNotificationView;)Lcom/android/systemui/statusbar/NotificationBackgroundView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/ActivatableNotificationView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 612
    return-void
.end method

.method private drawAppearRect(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 855
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 856
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mRoundedRectCornerRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 859
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 860
    return-void
.end method

.method private enableAppearDrawing(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 820
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eq p1, v2, :cond_0

    .line 821
    if-eqz p1, :cond_2

    .line 822
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 829
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 830
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->draw(Landroid/graphics/Canvas;)V

    .line 831
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v0, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 836
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    .line 837
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    goto :goto_0

    .line 834
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1
.end method

.method private fadeDimmedBackground()V
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 550
    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 551
    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 552
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v5, :cond_0

    .line 553
    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 557
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v5, :cond_1

    move v2, v3

    .line 558
    .local v2, "startAlpha":F
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v5, :cond_2

    move v1, v4

    .line 559
    .local v1, "endAlpha":F
    :goto_2
    const/16 v0, 0xdc

    .line 561
    .local v0, "duration":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_3

    .line 562
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 563
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-int v0, v4

    .line 564
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 565
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 566
    if-gtz v0, :cond_3

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 588
    :goto_3
    return-void

    .line 555
    .end local v0    # "duration":I
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 557
    goto :goto_1

    .restart local v2    # "startAlpha":F
    :cond_2
    move v1, v3

    .line 558
    goto :goto_2

    .line 571
    .restart local v0    # "duration":I
    .restart local v1    # "endAlpha":F
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 572
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput v2, v5, v6

    const/4 v6, 0x1

    aput v1, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 574
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 575
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 576
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$5;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 587
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3
.end method

.method private fadeInFromDark(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const v3, 0x3f6e147b    # 0.93f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 521
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 522
    .local v0, "background":Landroid/view/View;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 523
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 525
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 526
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 527
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xaa

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 544
    return-void

    .line 521
    .end local v0    # "background":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    goto :goto_0
.end method

.method private getBackgroundColor()I
    .locals 1

    .prologue
    .line 789
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 790
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 796
    :goto_0
    return v0

    .line 791
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_1

    .line 792
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLegacyColor:I

    goto :goto_0

    .line 793
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_2

    .line 794
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityColor:I

    goto :goto_0

    .line 796
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    goto :goto_0
.end method

.method private getRippleColor()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    if-eqz v0, :cond_0

    .line 802
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    .line 808
    :goto_0
    return v0

    .line 803
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    if-eqz v0, :cond_1

    .line 804
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTintedRippleColor:I

    goto :goto_0

    .line 805
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eqz v0, :cond_2

    .line 806
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLowPriorityRippleColor:I

    goto :goto_0

    .line 808
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalRippleColor:I

    goto :goto_0
.end method

.method private handleTouchEventDimmed(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 287
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v2, v3

    .line 328
    :goto_1
    return v2

    .line 289
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    .line 290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    .line 291
    iget v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    goto :goto_1

    .line 296
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 297
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_1

    .line 302
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isWithinTouchSlop(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 304
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithShade()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performClick()Z

    move v2, v3

    .line 306
    goto :goto_1

    .line 309
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-nez v2, :cond_2

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeActive()V

    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performClick()Z

    move-result v1

    .line 314
    .local v1, "performed":Z
    if-eqz v1, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 319
    .end local v1    # "performed":Z
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0

    .line 323
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private isWithinTouchSlop(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTouchSlop:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeActive()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAlreadyPostTapTipRunnable:Z

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTapTip(Z)V

    .line 335
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 340
    :cond_1
    return-void
.end method

.method private onShowTapTip()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onShowTapTip(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 904
    :cond_0
    return-void
.end method

.method private startActivateAnimation(Z)V
    .locals 4
    .param p1, "reverse"    # Z

    .prologue
    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v3, 0x7f0200eb

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 352
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x15e

    :goto_3
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 358
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mReverse:Z

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivateAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    move v0, v2

    .line 352
    goto :goto_1

    :cond_2
    move v2, v1

    .line 353
    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x96

    goto :goto_3
.end method

.method private startAppearAnimation(ZFJJLjava/lang/Runnable;)V
    .locals 5
    .param p1, "isAppearing"    # Z
    .param p2, "translationDirection"    # F
    .param p3, "delay"    # J
    .param p5, "duration"    # J
    .param p7, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 662
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    .line 666
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 668
    if-eqz p1, :cond_3

    .line 669
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 670
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 678
    :cond_1
    :goto_0
    if-eqz p1, :cond_4

    .line 679
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutFastInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 680
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 681
    const/high16 v0, 0x3f800000    # 1.0f

    .line 687
    .local v0, "targetValue":F
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    .line 689
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    long-to-float v2, p5

    iget v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 692
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$6;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 701
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-lez v1, :cond_2

    .line 703
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V

    .line 704
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V

    .line 705
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 707
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;

    invoke-direct {v2, p0, p7}, Lcom/android/systemui/statusbar/ActivatableNotificationView$7;-><init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 732
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 733
    return-void

    .line 672
    .end local v0    # "targetValue":F
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 673
    iput v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    goto :goto_0

    .line 683
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    .line 684
    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mSlowOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 685
    const/4 v0, 0x0

    .restart local v0    # "targetValue":F
    goto :goto_1
.end method

.method private updateAppearAnimationAlpha()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 774
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getBackgroundColor()I

    move-result v0

    .line 775
    .local v0, "backgroundColor":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 776
    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    .line 777
    .local v1, "contentAlphaProgress":F
    div-float/2addr v1, v4

    .line 778
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 779
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 780
    const/high16 v3, 0x437f0000    # 255.0f

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 783
    .local v2, "sourceColor":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v2}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 784
    iget-object v3, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 786
    .end local v1    # "contentAlphaProgress":F
    .end local v2    # "sourceColor":I
    :cond_0
    return-void
.end method

.method private updateAppearRect()V
    .locals 15

    .prologue
    const v14, 0x3dcccccd    # 0.1f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    .line 736
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F

    sub-float v3, v13, v10

    .line 737
    .local v3, "inverseFraction":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    .line 738
    .local v8, "translationFraction":F
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float v7, v8, v10

    .line 739
    .local v7, "translateYTotalAmount":F
    iput v7, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    .line 742
    sub-float v10, v3, v12

    const v11, 0x3f4ccccd    # 0.8f

    div-float v9, v10, v11

    .line 744
    .local v9, "widthFraction":F
    invoke-static {v12, v9}, Ljava/lang/Math;->max(FF)F

    move-result v10

    invoke-static {v13, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 745
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ef33333    # 0.475f

    mul-float/2addr v10, v11

    mul-float v4, v10, v9

    .line 748
    .local v4, "left":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v5, v10, v4

    .line 751
    .local v5, "right":F
    sub-float v10, v3, v12

    div-float v2, v10, v13

    .line 753
    .local v2, "heightFraction":F
    invoke-static {v12, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 754
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mCurrentAppearInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getActualHeight()I

    move-result v0

    .line 759
    .local v0, "actualHeight":I
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_0

    .line 760
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    mul-float/2addr v11, v2

    mul-float/2addr v11, v14

    sub-float/2addr v10, v11

    sub-float v1, v10, v7

    .line 762
    .local v1, "bottom":F
    mul-float v6, v1, v2

    .line 768
    .local v6, "top":F
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationRect:Landroid/graphics/RectF;

    invoke-virtual {v10, v4, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 769
    iget v10, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v10, v6

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationTranslation:F

    add-float/2addr v11, v1

    invoke-virtual {p0, v4, v10, v5, v11}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOutlineRect(FFFF)V

    .line 771
    return-void

    .line 764
    .end local v1    # "bottom":F
    .end local v6    # "top":F
    :cond_0
    int-to-float v10, v0

    iget v11, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAnimationTranslationY:F

    add-float/2addr v10, v11

    mul-float/2addr v10, v2

    mul-float/2addr v10, v14

    sub-float v6, v10, v7

    .line 766
    .restart local v6    # "top":F
    int-to-float v10, v0

    sub-float v11, v13, v2

    mul-float/2addr v10, v11

    mul-float v11, v6, v2

    add-float v1, v10, v11

    .restart local v1    # "bottom":F
    goto :goto_0
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->cancelFadeAnimations()V

    .line 592
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 604
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_0

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateBackgroundTint()V
    .locals 4

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getBackgroundColor()I

    move-result v0

    .line 503
    .local v0, "color":I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getRippleColor()I

    move-result v1

    .line 504
    .local v1, "rippleColor":I
    iget v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mNormalColor:I

    if-ne v0, v2, :cond_0

    .line 506
    const/4 v0, 0x0

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 512
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setTint(I)V

    .line 513
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 514
    iget-object v2, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setRippleColor(I)V

    .line 515
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-nez v0, :cond_0

    .line 845
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    :goto_0
    return-void

    .line 850
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->drawAppearRect(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 846
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableHotspotChanged(FF)V

    .line 273
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->drawableStateChanged()V

    .line 278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setState([I)V

    goto :goto_0
.end method

.method public makeInactive(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    .line 412
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    .line 413
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_0

    .line 414
    if-eqz p1, :cond_3

    .line 415
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startActivateAnimation(Z)V

    .line 432
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 438
    return-void

    .line 417
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 423
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mResetTapTip:Z

    if-nez v0, :cond_0

    .line 424
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTapTip(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTipTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 426
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAlreadyPostTapTipRunnable:Z

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onShowTapTip()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onFinishInflate()V

    .line 206
    const v0, 0x7f11010d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 207
    const v0, 0x7f11010e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    .line 211
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const v1, 0x7f0200eb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setAlpha(F)V

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 217
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 616
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onLayout(ZIIII)V

    .line 617
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotX(F)V

    .line 618
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBoundsTop:I

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBoundsBottom:I

    if-eq v0, v1, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBoundsTop:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBoundsBottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 243
    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0

    .line 247
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 248
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->handleTouchEventDimmed(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 250
    :cond_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performAddAnimation(JJ)V
    .locals 9
    .param p1, "delay"    # J
    .param p3, "duration"    # J

    .prologue
    const/4 v2, 0x1

    .line 654
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 655
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_0

    .line 656
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 658
    :cond_0
    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 9
    .param p1, "duration"    # J
    .param p3, "translationDirection"    # F
    .param p4, "onFinishedRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x0

    .line 642
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->enableAppearDrawing(Z)V

    .line 644
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDrawingAppearAnimation:Z

    if-eqz v0, :cond_1

    .line 645
    const-wide/16 v4, 0x0

    move-object v1, p0

    move v3, p3

    move-wide v6, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    if-eqz p4, :cond_0

    .line 648
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public removeTapTip()V
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTapTip(Z)V

    .line 898
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 867
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTintColor(I)V

    .line 868
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setShowingLegacyBackground(Z)V

    .line 869
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setBelowSpeedBump(Z)V

    .line 870
    return-void
.end method

.method public resetTapTip()V
    .locals 1

    .prologue
    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mResetTapTip:Z

    .line 894
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 622
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setActualHeight(IZ)V

    .line 623
    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setPivotY(F)V

    .line 624
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setActualHeight(I)V

    .line 626
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 1
    .param p1, "below"    # Z

    .prologue
    .line 486
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setBelowSpeedBump(Z)V

    .line 487
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    if-eq p1, v0, :cond_0

    .line 488
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mIsBelowSpeedBump:Z

    .line 489
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 491
    :cond_0
    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 258
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBoundsTop:I

    .line 261
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBoundsBottom:I

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBoundsBottom:I

    iput v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBoundsTop:I

    goto :goto_0
.end method

.method public setClipTopAmount(I)V
    .locals 1
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 630
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setClipTopAmount(I)V

    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 632
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setClipTopAmount(I)V

    .line 633
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 457
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ExpandableOutlineView;->setDark(ZZJ)V

    .line 458
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    if-ne v0, p1, :cond_0

    .line 477
    :goto_0
    return-void

    .line 461
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDark:Z

    .line 462
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 463
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mActivated:Z

    if-eqz v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 473
    :goto_1
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeInFromDark(J)V

    goto :goto_0

    .line 466
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_1

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundDimmed:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBackgroundNormal:Lcom/android/systemui/statusbar/NotificationBackgroundView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setVisibility(I)V

    goto :goto_1

    .line 475
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setDimmed(ZZ)V
    .locals 1
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    if-eq v0, p1, :cond_0

    .line 447
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mDimmed:Z

    .line 448
    if-eqz p2, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->fadeDimmedBackground()V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground()V

    goto :goto_0
.end method

.method public setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V
    .locals 0
    .param p1, "onActivatedListener"    # Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .prologue
    .line 863
    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    .line 864
    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mShowingLegacyBackground:Z

    .line 481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 482
    return-void
.end method

.method protected setTapTip(Z)V
    .locals 1
    .param p1, "showTip"    # Z

    .prologue
    .line 884
    if-nez p1, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mTapTipTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 886
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mOnActivatedListener:Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;->onShowTapTipReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 890
    :cond_0
    return-void
.end method

.method public setTintColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 497
    iput p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView;->mBgTint:I

    .line 498
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    .line 499
    return-void
.end method
