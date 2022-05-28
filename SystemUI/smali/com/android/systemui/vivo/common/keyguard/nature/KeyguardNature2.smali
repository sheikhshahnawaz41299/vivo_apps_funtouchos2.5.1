.class public Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "KeyguardNature2.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ActivityStarter;


# static fields
.field private static final DARK_GRAY:I = 0x96

.field private static final DEBUG:Z = true

.field private static final DISABLE_ALPHA_ANIM:Z = false

.field private static final DRAG_VIEW_STATE_DOWN:I = 0x1

.field private static final DRAG_VIEW_STATE_UP:I = 0x2

.field private static final DURATION_LONG:I = 0x3e8

.field private static final DURATION_MEDIUM:I = 0x1f4

.field private static final DURATION_SHORT:I = 0xc8

.field private static final HIDE_CAMERA_DELAY:I = 0xbb8

.field private static final LIGHT_GRAY:I = 0xb4

.field private static final MAX_MOVE_VELOCITY:I = 0x2

.field private static final MSG_LOAD_RESOURCE_SUCCESS:I = 0x0

.field private static final MSG_RUN_SCREEN_ON_ANIMATE:I = 0x4

.field private static final MSG_SWITCH_MUSIC_PANEL:I = 0x3

.field private static final MSG_UPDATE_SHORTCUT_VIEW:I = 0x5

.field private static final MSG_UPDATE_VIEWS_COLOR:I = 0x2

.field private static final MSG_UPDATE_WALLPAPER:I = 0x1

.field private static final RESHOW_SIGNATURE_DELAY:I = 0xbb8

.field private static final SHORTCUT_COLOR:I = -0x1

.field private static final SHORTCUT_COLOR_DARK:I = -0xb4b4b5

.field private static final STATE_EDIT:I = 0x1

.field private static final STATE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardNature2"

.field private static final TEXT_COLOR:I = -0x19000001

.field private static final TEXT_COLOR_DARK:I = -0x19b4b4b5


# instance fields
.field private CANCEL_DISTANCE_THRESHOLD:I

.field private CLICK_ANIM_DISTANCE:I

.field private DOWN_MOVE_DISTANCE_THRESHOLD:I

.field private ICON_WIDTH:I

.field private NOTIFICATION_OFFSET:I

.field private SCREEN_HEIGHT:I

.field private SCREEN_ON_ANIM_DISTANCE:I

.field private SCREEN_WIDTH:I

.field private SECURE_VIEWS_DISTANCE_THRESHOLD:I

.field private UNLOCK_DISTANCE_THRESHOLD:I

.field private mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

.field private mAnimCanceled:Z

.field private mAnimY:I

.field private mBatteryLevel:I

.field private mBgCover:Landroid/view/View;

.field private mBgView:Landroid/view/View;

.field private mBlurCover:Landroid/view/View;

.field private mBlurWallpaper:Landroid/graphics/Bitmap;

.field private mBottomValue:I

.field private final mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

.field private mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

.field private mCancleDismiss:Z

.field private mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

.field private mChargeInfoShowing:Z

.field private mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

.field private mChargingInfo:Ljava/lang/String;

.field private mChargingInfoAnim:Landroid/animation/ObjectAnimator;

.field private mChargingSize:I

.field private mCircularSeekBar:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

.field mClickAnims:Landroid/animation/AnimatorSet;

.field private mClickRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCustomIconExists:Z

.field private mCustomIconRect:Landroid/graphics/Rect;

.field private mCustomIconView:Landroid/widget/FrameLayout;

.field private mCustomSettings:Landroid/content/SharedPreferences;

.field private mDate:Landroid/widget/TextView;

.field private mDateString:Ljava/lang/String;

.field private mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

.field private mDigitalImages:[I

.field private mDigitalImagesDark:[I

.field private mDoubleClickHelper:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

.field private mDownPosX:I

.field private mDownPosY:I

.field private mDownTime:J

.field private mDragViewState:I

.field private mEnableScreenOnAnim:Z

.field private mFirstFingerDown:Z

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

.field private mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

.field private mHeadPortraitNameView:Landroid/widget/TextView;

.field private mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

.field private mHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

.field mHelperCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

.field private final mHideCameraPreview:Ljava/lang/Runnable;

.field private mHideMovingViews:Z

.field private mIconScaleWidth:F

.field private mIconSelector:Landroid/widget/RelativeLayout;

.field private mIndicatorAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimating:Z

.field private mIsBouncer:Z

.field private mIsCamera:Z

.field private mIsCharged:Z

.field private mIsLeftDouble:Z

.field private mIsMusicShowing:Z

.field private mIsNotificationEmpty:Z

.field private mIsQuickChargingShowing:Z

.field private mIsRetain:Z

.field private mIsRightDouble:Z

.field private mIsSecureCameraLauching:Z

.field private mIsStartActivity:Z

.field private mIsUnlocking:Z

.field private mLeftCls:Ljava/lang/String;

.field private mLeftIcon:Landroid/graphics/Bitmap;

.field private mLeftPkg:Ljava/lang/String;

.field private mLeftRightIconListener:Landroid/view/View$OnTouchListener;

.field private mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mLeftShortcutExists:Z

.field private mMainContainer:Landroid/view/ViewGroup;

.field private mMoveOffset:I

.field private mMusicIconView:Landroid/widget/FrameLayout;

.field private mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

.field private mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

.field private mNamePanel:Landroid/widget/RelativeLayout;

.field private mNotificationAnim:Landroid/animation/AnimatorSet;

.field private mOnLeftRightIcon:Z

.field private mOnResume:Z

.field private mOnlyAffordanceInThisMotion:Z

.field private mPluggedIn:Z

.field private mPortraitIconId:I

.field private mPortraitName:Ljava/lang/String;

.field private mQuickChargeViewAinmDuration:I

.field private mQuickChargeViewAinmOffset:I

.field private mQuickChargeViewMarginBottom:I

.field private mRightCls:Ljava/lang/String;

.field private mRightIcon:Landroid/graphics/Bitmap;

.field private mRightPkg:Ljava/lang/String;

.field private mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mRightShortcutExists:Z

.field private mScreenOnAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedIcon:Landroid/view/View;

.field private mSelectedIconRect:Landroid/graphics/Rect;

.field private mSelectorIconMagin:I

.field private mSelectorIndicator:Landroid/widget/ImageView;

.field private mShortcutArea:Landroid/widget/FrameLayout;

.field private mShortcutIndicator:Landroid/view/View;

.field private mShortcutIndicatorInfo:Landroid/widget/TextView;

.field mShortcutTipsAnim:Landroid/animation/AnimatorSet;

.field private mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

.field private mSignature:Landroid/widget/TextView;

.field private mSignatureName:Ljava/lang/String;

.field private mSignatureSize:I

.field private mSongName:Landroid/widget/TextView;

.field private mState:I

.field private mStateInfo:Landroid/content/SharedPreferences;

.field private mSwitched:Z

.field private mTimeDateBg:Landroid/view/View;

.field private mTopValue:I

.field private mTranslationY:I

.field mUnlockAnims:Landroid/animation/AnimatorSet;

.field private mUnlockIndicator:Landroid/widget/LinearLayout;

.field private mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

.field private final mUnlockIndicatorAnimRunnable:Ljava/lang/Runnable;

.field private mUnlockIndicatorMarginBottom:I

.field private mUnreadPanel:Landroid/view/View;

.field private mUpTime:J

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mViewsFadeAnim:Landroid/animation/AnimatorSet;

.field private mViewsOffset:I

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private final mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/16 v2, 0x2d0

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_WIDTH:I

    .line 105
    const/16 v2, 0x500

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    .line 106
    const/16 v2, 0xd2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->UNLOCK_DISTANCE_THRESHOLD:I

    .line 107
    const/16 v2, 0x17c

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SECURE_VIEWS_DISTANCE_THRESHOLD:I

    .line 108
    const/16 v2, 0x46

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->DOWN_MOVE_DISTANCE_THRESHOLD:I

    .line 109
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CANCEL_DISTANCE_THRESHOLD:I

    .line 110
    const/16 v2, 0x64

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->ICON_WIDTH:I

    .line 111
    const/16 v2, 0x28

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    .line 112
    const/16 v2, 0x32

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_ON_ANIM_DISTANCE:I

    .line 113
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->NOTIFICATION_OFFSET:I

    .line 155
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconRect:Landroid/graphics/Rect;

    .line 156
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIconRect:Landroid/graphics/Rect;

    .line 160
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    .line 161
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    .line 162
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconExists:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSwitched:Z

    .line 164
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mFirstFingerDown:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHideMovingViews:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsAnimating:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    .line 195
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCancleDismiss:Z

    .line 207
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 215
    const/16 v2, 0xfa

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewAinmDuration:I

    .line 218
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeInfoShowing:Z

    .line 220
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalImages:[I

    .line 232
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalImagesDark:[I

    .line 251
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    .line 1222
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    .line 1223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    .line 1224
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mScreenOnAnimList:Ljava/util/ArrayList;

    .line 1247
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$16;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnimRunnable:Ljava/lang/Runnable;

    .line 1389
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$18;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    .line 2259
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$27;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHelperCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    .line 2310
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$28;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$28;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftRightIconListener:Landroid/view/View$OnTouchListener;

    .line 2327
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$29;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$29;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHideCameraPreview:Ljava/lang/Runnable;

    .line 2576
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 284
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    .line 287
    const-string v2, "state_info"

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mStateInfo:Landroid/content/SharedPreferences;

    .line 288
    const-string v2, "custom_settings"

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    .line 289
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->getCurrentThemeId()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mEnableScreenOnAnim:Z

    .line 290
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDoubleClickHelper:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    .line 292
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->setCurrentState(I)V

    .line 293
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->adjustDimens(Landroid/content/Context;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorMarginBottom:I

    .line 296
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewMarginBottom:I

    .line 297
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewAinmOffset:I

    .line 299
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 300
    return-void

    :cond_0
    move v0, v1

    .line 289
    goto :goto_0

    .line 220
    nop

    :array_0
    .array-data 4
        0x7f0202dc
        0x7f0202dd
        0x7f0202de
        0x7f0202df
        0x7f0202e0
        0x7f0202e1
        0x7f0202e2
        0x7f0202e3
        0x7f0202e4
        0x7f0202e5
    .end array-data

    .line 232
    :array_1
    .array-data 4
        0x7f0202e6
        0x7f0202e7
        0x7f0202e8
        0x7f0202e9
        0x7f0202ea
        0x7f0202eb
        0x7f0202ec
        0x7f0202ed
        0x7f0202ee
        0x7f0202ef
    .end array-data
.end method

.method private ShortcutTipsAnim()V
    .locals 12

    .prologue
    const v11, 0x3f99999a    # 1.2f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1554
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsAnimating:Z

    if-nez v1, :cond_4

    .line 1555
    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsAnimating:Z

    .line 1557
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    if-nez v1, :cond_3

    .line 1558
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    shr-int/lit8 v0, v1, 0x1

    .line 1559
    .local v0, "tipsDistance":I
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    .line 1560
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1561
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    const/16 v2, 0x8

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    const-string v4, "translationY"

    new-array v5, v9, [F

    neg-int v6, v0

    int-to-float v6, v6

    const/high16 v7, 0x40200000    # 2.5f

    mul-float/2addr v6, v7

    aput v6, v5, v10

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    const-string v4, "translationY"

    new-array v5, v9, [F

    neg-int v6, v0

    int-to-float v6, v6

    const v7, 0x40133333    # 2.3f

    mul-float/2addr v6, v7

    aput v6, v5, v10

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    const-string v5, "translationY"

    new-array v6, v9, [F

    neg-int v7, v0

    int-to-float v7, v7

    const v8, 0x3fcccccd    # 1.6f

    mul-float/2addr v7, v8

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnreadPanel:Landroid/view/View;

    const-string v5, "translationY"

    new-array v6, v9, [F

    neg-int v7, v0

    int-to-float v7, v7

    const v8, 0x3fb33333    # 1.4f

    mul-float/2addr v7, v8

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v5, "translationY"

    new-array v6, v9, [F

    neg-int v7, v0

    int-to-float v7, v7

    mul-float/2addr v7, v11

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    const-string v5, "translationY"

    new-array v6, v9, [F

    neg-int v7, v0

    int-to-float v7, v7

    mul-float/2addr v7, v11

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNamePanel:Landroid/widget/RelativeLayout;

    const-string v5, "translationY"

    new-array v6, v9, [F

    neg-int v7, v0

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutArea:Landroid/widget/FrameLayout;

    const-string v5, "translationY"

    new-array v6, v9, [F

    neg-int v7, v0

    int-to-float v7, v7

    aput v7, v6, v10

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1569
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCamera:Z

    if-eqz v1, :cond_1

    .line 1570
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1571
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    sub-int/2addr v6, v0

    int-to-float v6, v6

    aput v6, v5, v10

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1573
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    if-eqz v1, :cond_2

    .line 1574
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    new-array v2, v9, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const-string v4, "translationY"

    new-array v5, v9, [F

    neg-int v6, v0

    int-to-float v6, v6

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v5, v10

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1576
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$23;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$23;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1585
    .end local v0    # "tipsDistance":I
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1587
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateDisplay()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->handleUpdateWallpaper()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectorIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSwitched:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconSelector:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCircularSeekBar:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsStartActivity:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsStartActivity:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateViewsColor(II)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showUnlockIndicator(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isMusicPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showQuickChargeViewIfNeed(Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->switchNameInfo()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->sendUnlockBroadcast()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnlyAffordanceInThisMotion:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnlyAffordanceInThisMotion:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCancleDismiss:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCancleDismiss:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    return p1
.end method

.method static synthetic access$3702(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->switchIcon(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->startSettingActivity()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->setCurrentState(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsSecureCameraLauching:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsSecureCameraLauching:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickCharging:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->startUnlockIndicatorAnim()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->screenOnAnim()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateChargingInfo(Z)V

    return-void
.end method

.method static synthetic access$5102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeInfoShowing:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideChargingInfoAnim()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimY:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNamePanel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->loadResources()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateShortcutView()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTopValue:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTopValue:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBottomValue:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBottomValue:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->onAnimationToSideStarted()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->onAnimationToSideEnded()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIcon:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIcon:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$7100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    return v0
.end method

.method static synthetic access$7200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCamera:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCamera:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isCameraSelected(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateMusicPanel(Z)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->setIcon(I)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    return v0
.end method

.method static synthetic access$8100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateUnlockIndicatorLoc(Z)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->changePanelViewsVisibility()V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideChargeView()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showChargeView()V

    return-void
.end method

.method static synthetic access$8902(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # I

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->finishIconSet(I)V

    return-void
.end method

.method static synthetic access$9002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$9100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$9500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    return-object v0
.end method

.method private adjustDimens(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 467
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 469
    .local v0, "density":F
    const v2, 0x7f0f00fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignatureSize:I

    .line 470
    const v2, 0x7f0f00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingSize:I

    .line 472
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_WIDTH:I

    .line 473
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    .line 475
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->ICON_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->ICON_WIDTH:I

    .line 476
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->UNLOCK_DISTANCE_THRESHOLD:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->UNLOCK_DISTANCE_THRESHOLD:I

    .line 477
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->DOWN_MOVE_DISTANCE_THRESHOLD:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->DOWN_MOVE_DISTANCE_THRESHOLD:I

    .line 479
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SECURE_VIEWS_DISTANCE_THRESHOLD:I

    .line 480
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    .line 481
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_ON_ANIM_DISTANCE:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_ON_ANIM_DISTANCE:I

    .line 482
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CANCEL_DISTANCE_THRESHOLD:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CANCEL_DISTANCE_THRESHOLD:I

    .line 483
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->NOTIFICATION_OFFSET:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->NOTIFICATION_OFFSET:I

    .line 485
    .end local v0    # "density":F
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method private cancelClickAnim()V
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1549
    :cond_0
    return-void
.end method

.method private cancelNotificationAnim()V
    .locals 1

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2572
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2574
    :cond_0
    return-void
.end method

.method private cancelQuickChargeViewAnim()V
    .locals 1

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2776
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2778
    :cond_0
    return-void
.end method

.method private cancelScreenOnAnim()V
    .locals 2

    .prologue
    .line 1487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mScreenOnAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1488
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mScreenOnAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1489
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mScreenOnAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1487
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1492
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1493
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1496
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showAllViews()V

    .line 1497
    return-void
.end method

.method private cancelShortcutTipsAnim(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x3

    .line 1590
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1591
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1592
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_3

    .line 1595
    :cond_0
    if-ne v0, v2, :cond_1

    .line 1596
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mFirstFingerDown:Z

    .line 1599
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$24;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$24;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1609
    .end local v0    # "action":I
    :cond_2
    :goto_0
    return-void

    .line 1604
    .restart local v0    # "action":I
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_2

    .line 1606
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0
.end method

.method private cancelUnlockAnim()V
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNamePanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimY:I

    .line 1187
    :goto_0
    return-void

    .line 1185
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimY:I

    goto :goto_0
.end method

.method private changePanelViewsVisibility()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 927
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 930
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 933
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->setAlpha(F)V

    .line 935
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->setVisibility(I)V

    .line 946
    :goto_0
    return-void

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 939
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->setAlpha(F)V

    .line 941
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 944
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private clickAnim()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1502
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsAnimating:Z

    if-nez v2, :cond_3

    .line 1503
    iput-boolean v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsAnimating:Z

    .line 1505
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_2

    .line 1506
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    .line 1507
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    const-wide/16 v4, 0x384

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1508
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1510
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1511
    .local v1, "view":Landroid/view/View;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    new-array v3, v10, [Landroid/animation/Animator;

    const-string v4, "translationY"

    const/4 v5, 0x4

    new-array v5, v5, [F

    aput v12, v5, v11

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    neg-int v6, v6

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3dcccccd    # 0.1f

    int-to-float v9, v0

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    aput v6, v5, v10

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    shr-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    aput v6, v5, v13

    aput v12, v5, v14

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1509
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1516
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    new-array v3, v10, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v5, "translationY"

    const/4 v6, 0x4

    new-array v6, v6, [F

    aput v12, v6, v11

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    neg-int v7, v7

    int-to-float v7, v7

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    aput v7, v6, v10

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    shr-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    aput v7, v6, v13

    aput v12, v6, v14

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1520
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    if-eqz v2, :cond_1

    .line 1521
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    new-array v3, v13, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutArea:Landroid/widget/FrameLayout;

    const-string v5, "translationY"

    const/4 v6, 0x4

    new-array v6, v6, [F

    aput v12, v6, v11

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    neg-int v7, v7

    int-to-float v7, v7

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    aput v7, v6, v10

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    shr-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    aput v7, v6, v13

    aput v12, v6, v14

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v11

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    const-string v5, "translationY"

    const/4 v6, 0x4

    new-array v6, v6, [F

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    aput v7, v6, v11

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    neg-int v7, v7

    int-to-float v7, v7

    const v8, 0x3f333333    # 0.7f

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v6, v10

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->CLICK_ANIM_DISTANCE:I

    shr-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    aput v7, v6, v13

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    aput v7, v6, v14

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1531
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$22;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$22;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1541
    .end local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1543
    :cond_3
    return-void
.end method

.method private finishIconSet(I)V
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 680
    if-ltz p1, :cond_0

    .line 681
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$5;->start()V

    .line 688
    :cond_0
    return-void
.end method

.method private getHeadPortraitIconId()I
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "icon_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getHeadPortraitName()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7f0e017d

    .line 488
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v2, "name"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "name":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 493
    :cond_0
    return-object v0
.end method

.method private getSignatureName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e017e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleSwitch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 404
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->prepareSelectorView(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;Landroid/view/LayoutInflater;)V

    .line 406
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->moveViews(I)V

    .line 407
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateSelectedIconRect(I)V

    .line 408
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showIconSelector(Z)V

    .line 409
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showUnlockIndicator(Z)V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSwitched:Z

    goto :goto_0
.end method

.method private handleUpdateWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1883
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    .line 1884
    .local v0, "kwm":Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    .line 1885
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1886
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 1887
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickCharging:Z

    if-nez v1, :cond_1

    .line 1888
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateBgView(Z)V

    .line 1892
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1895
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1896
    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTopValue:I

    .line 1897
    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBottomValue:I

    .line 1898
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTopValue:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBottomValue:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateViewsColor(II)V

    .line 1903
    :cond_0
    :goto_1
    return-void

    .line 1890
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateBgView(Z)V

    goto :goto_0

    .line 1900
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateViewsColor()V

    goto :goto_1
.end method

.method private hideAllViews()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const v6, 0x3f8ccccd    # 1.1f

    const v5, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    .line 1307
    const-string v2, "KeyguardNature2"

    const-string v3, "hideAllViews"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1321
    .local v1, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1322
    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 1323
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 1324
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    .line 1326
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_ON_ANIM_DISTANCE:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1327
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1328
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1330
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1331
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1334
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1335
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1336
    return-void
.end method

.method private hideChargeView()V
    .locals 2

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 1794
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 1795
    return-void
.end method

.method private hideChargingInfoAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    const-string v1, "alpha"

    new-array v2, v4, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$17;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1386
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1387
    return-void

    .line 1365
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private hideMusicPanel()V
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeSwitchPanelMsg()V

    .line 720
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    if-eqz v0, :cond_0

    .line 721
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->switchIcon(Z)V

    .line 724
    :cond_0
    return-void
.end method

.method private hideQuickChargeView(IZ)V
    .locals 4
    .param p1, "reason"    # I
    .param p2, "anim"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1851
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->hideNormalChargeView(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1852
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideChargeView()V

    .line 1856
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    if-eqz v1, :cond_0

    .line 1857
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    if-nez v1, :cond_2

    .line 1875
    :cond_0
    :goto_1
    return-void

    .line 1854
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showChargeView()V

    goto :goto_0

    .line 1858
    :cond_2
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideQuickChargeView reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelQuickChargeViewAnim()V

    .line 1860
    if-eqz p2, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v1, :cond_3

    const/4 p2, 0x1

    .line 1861
    :goto_2
    if-eqz p2, :cond_4

    .line 1862
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeViewWithAnim(I)V

    goto :goto_1

    :cond_3
    move p2, v0

    .line 1860
    goto :goto_2

    .line 1864
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setVisibility(I)V

    .line 1865
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateUnlockIndicatorLoc(Z)V

    .line 1866
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1867
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 1868
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->changePanelViewsVisibility()V

    .line 1869
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    .line 1870
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateBgView(Z)V

    .line 1872
    :cond_5
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    goto :goto_1
.end method

.method private hideQuickChargeViewWithAnim(I)V
    .locals 9
    .param p1, "reason"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2712
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    .line 2713
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewAinmDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2714
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const-string v3, "translationY"

    new-array v4, v8, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewAinmOffset:I

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewAinmOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2720
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_0

    .line 2721
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    new-array v1, v8, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2723
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2771
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2772
    return-void

    .line 2714
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 2721
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private initViewList()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1227
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1228
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnreadPanel:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNamePanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1236
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1237
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1238
    .local v2, "view":Landroid/view/View;
    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1239
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1240
    mul-int/lit16 v3, v1, -0x12c

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 1241
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1242
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1243
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1245
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 1238
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isActivityAvailable(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "isDouble"    # Z

    .prologue
    .line 2342
    const/4 v0, 0x0

    .line 2344
    .local v0, "available":Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 2346
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2347
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2348
    .local v1, "component":Landroid/content/ComponentName;
    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 2349
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    if-eqz p3, :cond_0

    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isCloneEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2355
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return v0

    .line 2349
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v3    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2350
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 2351
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "KeyguardNature2"

    const-string v6, "the activity is not available."

    invoke-static {v5, v6, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isCameraSelected(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_0

    const-string v0, "com.android.camera.CameraActivity"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_2

    const-string v0, "com.android.camera.CameraActivity"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isInIconArea(III)Z
    .locals 6
    .param p1, "downX"    # I
    .param p2, "downY"    # I
    .param p3, "moveY"    # I

    .prologue
    .line 1761
    const/4 v1, 0x0

    .line 1762
    .local v1, "result":Z
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    .line 1763
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 1764
    .local v0, "location":[I
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 1765
    const/4 v5, 0x0

    aget v3, v0, v5

    .line 1766
    .local v3, "x":I
    const/4 v5, 0x1

    aget v4, v0, v5

    .line 1767
    .local v4, "y":I
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    .line 1768
    .local v2, "w":I
    if-lt p1, v3, :cond_1

    add-int v5, v3, v2

    if-gt p1, v5, :cond_1

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    if-le p2, v5, :cond_1

    add-int v5, v4, v2

    if-gt p2, v5, :cond_1

    if-le p3, v4, :cond_1

    .line 1769
    const/4 v1, 0x1

    .line 1775
    .end local v0    # "location":[I
    .end local v2    # "w":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_0
    :goto_0
    return v1

    .line 1771
    .restart local v0    # "location":[I
    .restart local v2    # "w":I
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMusicPlaying()Z
    .locals 1

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    if-eqz v0, :cond_0

    .line 2651
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    .line 2653
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResources()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 434
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->getHeadPortraitIconId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    .line 435
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->getHeadPortraitName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitName:Ljava/lang/String;

    .line 436
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->getSignatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignatureName:Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/bbkcore/lock_screen_nature/icon"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconExists:Z

    .line 440
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    if-gez v1, :cond_0

    .line 441
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    .line 444
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/data/bbkcore/lock_screen_nature/left_shortcut"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcutExists:Z

    .line 446
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v4, "left_pkg"

    const-string v5, "com.android.dialer"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v4, "left_cls"

    const-string v5, "com.android.dialer.TwelveKeyDialer"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    .line 448
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v4, "left_double"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsLeftDouble:Z

    .line 449
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutWidth:I

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsLeftDouble:Z

    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftIcon:Landroid/graphics/Bitmap;

    .line 451
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/data/bbkcore/lock_screen_nature/right_shortcut"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcutExists:Z

    .line 453
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v2, "right_pkg"

    const-string v4, "com.android.camera"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    .line 454
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v2, "right_cls"

    const-string v4, "com.android.camera.CameraActivity"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    .line 455
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v2, "right_double"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsRightDouble:Z

    .line 456
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutWidth:I

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsRightDouble:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightIcon:Landroid/graphics/Bitmap;

    .line 457
    const-string v1, "KeyguardNature2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcut - left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is double instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsLeftDouble:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", right: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is double instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsRightDouble:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const-string v1, "KeyguardNature2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPortraitIconId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPortraitName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSignatureName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void

    :cond_1
    move v1, v3

    .line 445
    goto/16 :goto_0

    :cond_2
    move v2, v3

    .line 452
    goto/16 :goto_1
.end method

.method private moveViews(I)V
    .locals 5
    .param p1, "distance"    # I

    .prologue
    const v4, 0x3f99999a    # 1.2f

    const/4 v3, 0x0

    .line 1190
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    int-to-float v1, p1

    const/high16 v2, 0x40200000    # 2.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setTranslationY(F)V

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    int-to-float v1, p1

    const v2, 0x40133333    # 2.3f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1192
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    int-to-float v1, p1

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1193
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnreadPanel:Landroid/view/View;

    int-to-float v1, p1

    const v2, 0x3fb33333    # 1.4f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1194
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    int-to-float v1, p1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMoveOffset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    int-to-float v1, p1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMoveOffset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 1196
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNamePanel:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMoveOffset:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 1197
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    if-eqz v0, :cond_0

    .line 1198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    int-to-float v1, p1

    mul-float/2addr v1, v4

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMoveOffset:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setTranslationY(F)V

    .line 1201
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    neg-int v2, p1

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1206
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    if-eqz v0, :cond_4

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutArea:Landroid/widget/FrameLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1208
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCamera:Z

    if-eqz v0, :cond_3

    .line 1209
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1220
    :cond_3
    :goto_0
    return-void

    .line 1213
    :cond_4
    if-nez p1, :cond_3

    .line 1214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private notificationAnim(ZZZ)V
    .locals 11
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z
    .param p3, "animated"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/16 v8, 0xb4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2475
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelNotificationAnim()V

    .line 2476
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeChargingInfoAnim()V

    .line 2477
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    .line 2478
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_4

    const-wide/16 v0, 0x1f4

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2479
    if-eqz p1, :cond_5

    .line 2480
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    .line 2481
    if-nez p2, :cond_2

    .line 2482
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2483
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$30;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$30;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2493
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 2494
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2498
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$31;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$31;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2511
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTopValue:I

    if-gt v0, v8, :cond_1

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBottomValue:I

    if-le v0, v8, :cond_2

    .line 2512
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$32;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$32;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2559
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v10

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_3

    if-nez p2, :cond_3

    .line 2560
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMoveOffset:I

    .line 2561
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v3, "translationY"

    new-array v4, v7, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    const-string v3, "translationY"

    new-array v4, v7, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNamePanel:Landroid/widget/RelativeLayout;

    const-string v3, "translationY"

    new-array v4, v7, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v5, v5

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2567
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2568
    return-void

    .line 2478
    :cond_4
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    .line 2521
    :cond_5
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->NOTIFICATION_OFFSET:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    .line 2522
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeChargingInfoAnim()V

    .line 2523
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateSignatureInfo()V

    .line 2525
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    if-eq v0, v7, :cond_6

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->statusBarDisabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2527
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2530
    :cond_6
    if-nez p2, :cond_2

    .line 2531
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v10, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2532
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$33;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$33;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2538
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_7

    .line 2539
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2540
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$34;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$34;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2548
    :cond_7
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTopValue:I

    if-gt v0, v8, :cond_8

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBottomValue:I

    if-le v0, v8, :cond_2

    .line 2549
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$35;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$35;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1

    .line 2494
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 2539
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private prepareSelectorView(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;Landroid/view/LayoutInflater;)V
    .locals 10
    .param p1, "container"    # Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 527
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 528
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v3, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 532
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, 0x0

    .line 533
    .local v7, "view":Landroid/view/ViewGroup;
    const v8, 0x7f040061

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 534
    .local v6, "v":Landroid/view/View;
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 649
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "view":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .restart local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v6    # "v":Landroid/view/View;
    .restart local v7    # "view":Landroid/view/ViewGroup;
    :cond_1
    move-object v7, v6

    .line 537
    check-cast v7, Landroid/view/ViewGroup;

    .line 539
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 540
    .local v5, "n":I
    if-eqz v7, :cond_8

    if-lez v5, :cond_8

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v8

    array-length v8, v8

    if-gt v5, v8, :cond_8

    .line 541
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_8

    .line 542
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 543
    .local v1, "childViewGroup":Landroid/view/View;
    if-eqz v1, :cond_4

    instance-of v8, v1, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_4

    .line 545
    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    add-int/lit8 v9, v2, -0x1

    if-ne v8, v9, :cond_2

    .line 546
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIcon:Landroid/view/View;

    .line 547
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIcon:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    move-object v8, v1

    .line 549
    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    .line 551
    .local v0, "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setViewShape(I)V

    .line 552
    instance-of v8, v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    if-eqz v8, :cond_3

    .line 553
    if-nez v2, :cond_5

    .line 554
    const v8, 0x7f0202a5

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(I)V

    .line 569
    :cond_3
    :goto_2
    add-int/lit8 v8, v2, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setTag(Ljava/lang/Object;)V

    .line 570
    new-instance v8, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;

    invoke-direct {v8, p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 541
    .end local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 558
    .restart local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    :cond_5
    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconExists:Z

    if-eqz v8, :cond_7

    .line 559
    const/4 v8, 0x1

    if-ne v2, v8, :cond_6

    .line 560
    const-string v8, "/data/bbkcore/lock_screen_nature/icon"

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(Ljava/lang/String;)V

    goto :goto_2

    .line 562
    :cond_6
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v8

    add-int/lit8 v9, v2, -0x2

    aget v8, v8, v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(I)V

    goto :goto_2

    .line 565
    :cond_7
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v8

    add-int/lit8 v9, v2, -0x1

    aget v8, v8, v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(I)V

    goto :goto_2

    .line 587
    .end local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    .end local v1    # "childViewGroup":Landroid/view/View;
    .end local v2    # "i":I
    :cond_8
    invoke-virtual {p1, v7, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addScreen(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    const v8, 0x7f040061

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 592
    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_0

    move-object v7, v6

    .line 595
    check-cast v7, Landroid/view/ViewGroup;

    .line 597
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 598
    .local v4, "m":I
    if-eqz v7, :cond_d

    if-lez v4, :cond_d

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v8

    array-length v8, v8

    sub-int/2addr v8, v5

    if-gt v4, v8, :cond_d

    .line 599
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v4, :cond_d

    .line 600
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 601
    .restart local v1    # "childViewGroup":Landroid/view/View;
    if-eqz v1, :cond_b

    instance-of v8, v1, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_b

    .line 602
    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    add-int v9, v2, v5

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_9

    .line 603
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIcon:Landroid/view/View;

    .line 604
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIcon:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    move-object v8, v1

    .line 606
    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    .line 609
    .restart local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setViewShape(I)V

    .line 610
    instance-of v8, v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    if-eqz v8, :cond_a

    .line 611
    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconExists:Z

    if-eqz v8, :cond_c

    .line 612
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v8

    add-int v9, v2, v5

    add-int/lit8 v9, v9, -0x2

    aget v8, v8, v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(I)V

    .line 620
    :cond_a
    :goto_4
    add-int v8, v2, v5

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setTag(Ljava/lang/Object;)V

    .line 621
    new-instance v8, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;

    invoke-direct {v8, p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 599
    .end local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 614
    .restart local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    :cond_c
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v8

    add-int v9, v2, v5

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(I)V

    .line 615
    add-int/lit8 v8, v4, -0x1

    if-ne v2, v8, :cond_a

    .line 616
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 637
    .end local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    .end local v1    # "childViewGroup":Landroid/view/View;
    .end local v2    # "i":I
    :cond_d
    invoke-virtual {p1, v7, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addScreen(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    new-instance v8, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$4;

    invoke-direct {v8, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {p1, v8}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->registerCallback(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;)V

    goto/16 :goto_0
.end method

.method private recycleShortcutIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2207
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2208
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2209
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2211
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftIcon:Landroid/graphics/Bitmap;

    .line 2213
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 2214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2215
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightIcon:Landroid/graphics/Bitmap;

    .line 2217
    :cond_1
    return-void
.end method

.method private refreshDayDate()V
    .locals 3

    .prologue
    .line 1961
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeInfoShowing:Z

    if-nez v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDateString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1964
    :cond_0
    return-void
.end method

.method private removeChargingInfoAnim()V
    .locals 3

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1403
    :goto_0
    return-void

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDateString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private removeSwitchPanelMsg()V
    .locals 2

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2647
    return-void
.end method

.method private resetShortcutTipsViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1292
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1295
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutIndicator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1299
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1300
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    .line 1301
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsAnimating:Z

    .line 1302
    return-void
.end method

.method private resetTouchState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1752
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    .line 1753
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMoveOffset:I

    .line 1754
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHideMovingViews:Z

    .line 1755
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mFirstFingerDown:Z

    .line 1756
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownTime:J

    .line 1757
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsSecureCameraLauching:Z

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnlyAffordanceInThisMotion:Z

    .line 1758
    return-void

    :cond_0
    move v0, v1

    .line 1757
    goto :goto_0
.end method

.method private resetUnlockAnim()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2665
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    if-ne v0, v3, :cond_1

    .line 2667
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showUnlockIndicator(Z)V

    .line 2668
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    .line 2672
    :cond_0
    :goto_0
    return-void

    .line 2669
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    if-eqz v0, :cond_0

    .line 2670
    const/16 v0, 0x1f4

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V

    goto :goto_0
.end method

.method private resetViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1275
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelQuickChargeViewAnim()V

    .line 1276
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->moveViews(I)V

    .line 1277
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickCharging:Z

    if-nez v0, :cond_1

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1279
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateBgView(Z)V

    .line 1281
    :cond_1
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    .line 1283
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    if-ne v0, v3, :cond_2

    .line 1284
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showIconSelector(Z)V

    .line 1287
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    .line 1288
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->resetShortcutTipsViews()V

    .line 1289
    return-void
.end method

.method private rotateAnim(Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .param p1, "currentView"    # Landroid/view/View;
    .param p2, "nextView"    # Landroid/view/View;
    .param p3, "needAnim"    # Z

    .prologue
    .line 862
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 863
    const/4 v8, 0x1

    .line 864
    .local v8, "canceled":Z
    invoke-virtual {p2}, Landroid/view/View;->clearAnimation()V

    .line 868
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 869
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 872
    :cond_0
    if-nez p3, :cond_2

    .line 873
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->changePanelViewsVisibility()V

    .line 924
    :goto_1
    return-void

    .line 866
    .end local v8    # "canceled":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "canceled":Z
    goto :goto_0

    .line 877
    :cond_2
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;

    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 879
    .local v0, "animPrev":Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;
    const-wide/16 v2, 0x78

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->setDuration(J)V

    .line 880
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 882
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, -0x3dcc0000    # -45.0f

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 884
    .local v1, "animNext":Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->setDuration(J)V

    .line 885
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 887
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;

    move-object v3, p0

    move-object v4, p1

    move v5, v8

    move-object v6, p2

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;ZLandroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 908
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$11;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$11;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 923
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private screenOnAnim()V
    .locals 13

    .prologue
    .line 1406
    const-string v7, "KeyguardNature2"

    const-string v8, "screenOnAnim"

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1408
    .local v5, "listSize":I
    const/16 v3, 0x258

    .line 1409
    .local v3, "duration":I
    const/16 v2, 0x50

    .line 1416
    .local v2, "delayInterval":I
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1417
    .local v1, "bgAnim":Landroid/animation/AnimatorSet;
    const-wide/16 v8, 0x3e8

    invoke-virtual {v1, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1418
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1419
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgView:Landroid/view/View;

    const-string v10, "scaleX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_0

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgView:Landroid/view/View;

    const-string v10, "scaleY"

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_1

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1421
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1423
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

    if-nez v7, :cond_0

    .line 1424
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v8, "alpha"

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_2

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

    .line 1425
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x258

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1426
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

    new-instance v8, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$19;

    invoke-direct {v8, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$19;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1433
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mScreenOnAnimList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v5, :cond_3

    .line 1434
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mScreenOnAnimList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1435
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 1436
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1437
    .local v6, "view":Landroid/view/View;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1438
    .local v0, "anims":Landroid/animation/AnimatorSet;
    const-wide/16 v8, 0x258

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1439
    new-instance v7, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1440
    const/4 v7, 0x3

    if-gt v4, v7, :cond_2

    .line 1441
    mul-int v7, v2, v4

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1442
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    const-string v9, "scaleX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "scaleY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1449
    :goto_1
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    const-string v9, "alpha"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1452
    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_ON_ANIM_DISTANCE:I

    int-to-float v12, v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v6, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1454
    new-instance v7, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$20;

    invoke-direct {v7, p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$20;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1461
    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 1462
    new-instance v7, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$21;

    invoke-direct {v7, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$21;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1475
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mScreenOnAnimList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1445
    :cond_2
    add-int/lit8 v7, v4, -0x3

    mul-int/2addr v7, v2

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto :goto_1

    .line 1479
    .end local v0    # "anims":Landroid/animation/AnimatorSet;
    .end local v4    # "i":I
    .end local v6    # "view":Landroid/view/View;
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimCanceled:Z

    if-nez v7, :cond_4

    .line 1480
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mScreenOnAnimList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 1481
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mScreenOnAnimList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1480
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1484
    .end local v4    # "i":I
    :cond_4
    return-void

    .line 1419
    nop

    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 1424
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1442
    :array_3
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 1449
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private sendUnlockBroadcast()V
    .locals 3

    .prologue
    .line 1175
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.vivo.intent.action.NATURE2_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 1177
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1178
    return-void
.end method

.method private setCurrentState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 398
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    .line 399
    return-void
.end method

.method private setHeadPortraitIcon(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 506
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconExists:Z

    if-eqz v0, :cond_2

    .line 508
    if-nez p1, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    const-string v1, "/data/bbkcore/lock_screen_nature/icon"

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(Ljava/lang/String;)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(I)V

    goto :goto_0

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(I)V

    goto :goto_0
.end method

.method private setIcon(I)V
    .locals 2
    .param p1, "iconIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 652
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsStartActivity:Z

    .line 655
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showIconSelector(Z)V

    .line 665
    :goto_0
    return-void

    .line 657
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->startSettingActivity()V

    goto :goto_0

    .line 660
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateSelectedIconRect(I)V

    .line 661
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    .line 662
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->setHeadPortraitIcon(I)V

    .line 663
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showIconSelector(Z)V

    goto :goto_0
.end method

.method private showAllViews()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 1339
    const-string v2, "KeyguardNature2"

    const-string v3, "showAllViews"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1341
    invoke-direct {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->moveViews(I)V

    .line 1346
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1347
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1348
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x3

    if-gt v0, v2, :cond_0

    .line 1349
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 1350
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleY(F)V

    .line 1352
    :cond_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1353
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1343
    .end local v0    # "i":I
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SECURE_VIEWS_DISTANCE_THRESHOLD:I

    neg-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->moveViews(I)V

    goto :goto_0

    .line 1355
    .restart local v0    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1356
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1358
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-nez v2, :cond_3

    .line 1359
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1361
    :cond_3
    return-void
.end method

.method private showChargeView()V
    .locals 2

    .prologue
    .line 1779
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPluggedIn:Z

    if-eqz v0, :cond_1

    .line 1780
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setAlpha(F)V

    .line 1783
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 1784
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCharged:Z

    if-eqz v0, :cond_2

    .line 1785
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 1790
    :cond_1
    :goto_0
    return-void

    .line 1787
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->startChargeAnimation()V

    goto :goto_0
.end method

.method private showIconSelector(Z)V
    .locals 14
    .param p1, "show"    # Z

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 735
    const-string v4, "KeyguardNature2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showIconSelector("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 737
    .local v0, "anim":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 739
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getCurrentSreen()I

    move-result v4

    if-eqz v4, :cond_1

    .line 740
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {v4, v9}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreenImmediately(I)V

    .line 745
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 746
    invoke-direct {p0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->setCurrentState(I)V

    .line 748
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 749
    .local v1, "scale":F
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float v5, v12, v1

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconScaleWidth:F

    .line 750
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconScaleWidth:F

    sub-float v2, v4, v5

    .line 751
    .local v2, "translationX":F
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIconRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v12, v1

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 754
    .local v3, "translationY":F
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconSelector:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 755
    const/4 v4, 0x7

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconSelector:Landroid/widget/RelativeLayout;

    const-string v6, "translationY"

    new-array v7, v13, [F

    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconSelector:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v9

    aput v11, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCircularSeekBar:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v13

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    const-string v7, "translationY"

    new-array v8, v10, [F

    aput v3, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    const-string v7, "translationX"

    new-array v8, v10, [F

    aput v2, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    const-string v7, "scaleX"

    new-array v8, v10, [F

    aput v1, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    const-string v7, "scaleY"

    new-array v8, v10, [F

    aput v1, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 762
    new-instance v4, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$6;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 807
    .end local v1    # "scale":F
    .end local v2    # "translationX":F
    .end local v3    # "translationY":F
    :goto_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 808
    return-void

    .line 741
    :cond_1
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getCurrentSreen()I

    move-result v4

    if-eq v4, v10, :cond_0

    .line 742
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {v4, v10}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreenImmediately(I)V

    goto/16 :goto_0

    .line 771
    :cond_2
    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->setCurrentState(I)V

    .line 773
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIcon:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    .line 774
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIcon:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 777
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIconRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconScaleWidth:F

    sub-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setX(F)V

    .line 778
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 779
    const/4 v4, 0x5

    new-array v4, v4, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconSelector:Landroid/widget/RelativeLayout;

    const-string v6, "translationY"

    new-array v7, v13, [F

    aput v11, v7, v9

    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconSelector:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    const-string v6, "translationY"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    const-string v6, "translationX"

    new-array v7, v10, [F

    aput v11, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v13

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    const-string v7, "scaleX"

    new-array v8, v10, [F

    aput v12, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    const-string v7, "scaleY"

    new-array v8, v10, [F

    aput v12, v8, v9

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 784
    new-instance v4, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1
.end method

.method private showMusicPanel()V
    .locals 4

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isMusicPlaying()Z

    move-result v0

    .line 709
    .local v0, "isPlaying":Z
    const-string v1, "KeyguardNature2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show, iMusic is playing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    if-nez v1, :cond_0

    .line 712
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->switchIcon(Z)V

    .line 714
    :cond_0
    return-void
.end method

.method private showQuickChargeViewIfNeed(Z)V
    .locals 6
    .param p1, "anim"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1798
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showQuickChargeView mIsBouncer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsMusicShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsNotificationEmpty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1799
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickCharging:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    if-eq v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPluggedIn:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCharged:Z

    if-eqz v2, :cond_2

    .line 1806
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showChargeView()V

    .line 1834
    :cond_1
    :goto_0
    return-void

    .line 1809
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    if-eqz v2, :cond_1

    .line 1810
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    if-nez v2, :cond_1

    .line 1811
    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v2, :cond_3

    move p1, v0

    .line 1812
    :goto_1
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showQuickChargeView mPluggedIn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPluggedIn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsCharged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCharged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", anim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1813
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPluggedIn:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCharged:Z

    if-nez v2, :cond_1

    .line 1814
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    .line 1815
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelQuickChargeViewAnim()V

    .line 1816
    if-eqz p1, :cond_4

    .line 1817
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showQuickChargeViewWithAinm()V

    .line 1831
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideChargeView()V

    .line 1832
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showQuickChargeView done mHeadPortraitFlipper y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mQuickChargeView y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move p1, v1

    .line 1811
    goto :goto_1

    .line 1819
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setVisibility(I)V

    .line 1820
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-eqz v1, :cond_5

    .line 1821
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v2, v2

    int-to-float v2, v2

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setTranslationY(F)V

    .line 1825
    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateBgView(Z)V

    .line 1826
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->onBatteryChanged(I)V

    .line 1827
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1828
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1829
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateUnlockIndicatorLoc(Z)V

    goto :goto_2

    .line 1823
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setTranslationY(F)V

    goto :goto_3
.end method

.method private showQuickChargeViewWithAinm()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 2781
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    .line 2782
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewAinmDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2783
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const-string v3, "translationY"

    new-array v4, v6, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewAinmOffset:I

    int-to-float v5, v5

    aput v5, v4, v7

    const/4 v5, 0x0

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    const-string v3, "translationY"

    new-array v4, v8, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewAinmOffset:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2790
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$38;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$38;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2829
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShowQuickChargeViewAinm:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2830
    return-void

    .line 2783
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private showUnlockIndicator(Z)V
    .locals 10
    .param p1, "show"    # Z

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 950
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    if-nez v0, :cond_0

    .line 951
    if-eqz p1, :cond_3

    .line 952
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-virtual {v0, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    .line 958
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 961
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    .line 963
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v7

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1018
    :cond_2
    :goto_1
    return-void

    .line 954
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->animateHideLeftRightIcon()V

    goto :goto_0

    .line 980
    :cond_4
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    .line 981
    if-eqz p1, :cond_6

    .line 982
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 983
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 988
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    if-eqz v0, :cond_5

    .line 989
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 992
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$12;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1016
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 998
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelNotificationAnim()V

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    if-eqz v0, :cond_7

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    const-string v3, "alpha"

    new-array v4, v5, [F

    aput v7, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1010
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$13;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2
.end method

.method private startSettingActivity()V
    .locals 3

    .prologue
    .line 668
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 669
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.vivo.common.keyguard.nature.iconset.IconSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    const-string v1, "image_width"

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->ICON_WIDTH:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    const-string v1, "image_height"

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->ICON_WIDTH:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 673
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 674
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 675
    return-void
.end method

.method private startUnlockIndicatorAnim()V
    .locals 3

    .prologue
    .line 1255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1257
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1258
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 1255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1261
    :cond_1
    return-void
.end method

.method private stopUnlockIndicatorAnim()V
    .locals 3

    .prologue
    .line 1264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1265
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1266
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 1264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1268
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1269
    return-void
.end method

.method private switchIcon(Z)V
    .locals 5
    .param p1, "needAnim"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 812
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    .line 813
    const-string v0, "KeyguardNature2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show music panel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", with anim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    if-eqz v0, :cond_2

    .line 815
    const/4 v0, 0x2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicIconView:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->rotateAnim(Landroid/view/View;Landroid/view/View;Z)V

    .line 820
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 812
    goto :goto_0

    :cond_1
    move v1, v2

    .line 815
    goto :goto_1

    .line 818
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicIconView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->rotateAnim(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_2
.end method

.method private switchNameInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 823
    const/16 v1, 0xc8

    .line 824
    .local v1, "duration":I
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 825
    .local v0, "anim":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 827
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    if-eqz v2, :cond_0

    .line 828
    new-array v2, v7, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 829
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$8;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 857
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 858
    return-void

    .line 842
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 844
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private unlockAnim(ZI)V
    .locals 13
    .param p1, "unlock"    # Z
    .param p2, "duration"    # I

    .prologue
    const v12, 0x3f99999a    # 1.2f

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1039
    const-string v0, "KeyguardNature2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old unlocking = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-ne v0, p1, :cond_0

    .line 1172
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1044
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    .line 1047
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1049
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    .line 1050
    if-eqz p1, :cond_6

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    const-string v3, "translationY"

    new-array v4, v9, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    const/high16 v6, 0x40200000    # 2.5f

    mul-float/2addr v5, v6

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    const-string v3, "translationY"

    new-array v4, v9, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    const v6, 0x40133333    # 2.3f

    mul-float/2addr v5, v6

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    const-string v3, "translationY"

    new-array v4, v9, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    const v6, 0x3fcccccd    # 1.6f

    mul-float/2addr v5, v6

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnreadPanel:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v6, v6

    int-to-float v6, v6

    const v7, 0x3fb33333    # 1.4f

    mul-float/2addr v6, v7

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v12

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v12

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNamePanel:Landroid/widget/RelativeLayout;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1059
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1060
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    if-eq v0, v11, :cond_2

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v9, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1065
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    if-eqz v0, :cond_4

    .line 1066
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutArea:Landroid/widget/FrameLayout;

    const-string v3, "translationY"

    new-array v4, v9, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1067
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCamera:Z

    if-eqz v0, :cond_4

    .line 1068
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v9, [F

    aput v10, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1071
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    if-eqz v0, :cond_5

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const-string v3, "translationY"

    new-array v4, v9, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v12

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1075
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$14;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1171
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 1112
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    if-ne v0, v11, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    if-nez v0, :cond_7

    .line 1113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1114
    invoke-virtual {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateBgView(Z)V

    .line 1117
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    const/16 v1, 0xa

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    const-string v3, "translationY"

    new-array v4, v9, [F

    aput v10, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    const-string v3, "translationY"

    new-array v4, v9, [F

    aput v10, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    const-string v3, "translationY"

    new-array v4, v9, [F

    aput v10, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v11

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnreadPanel:Landroid/view/View;

    const-string v4, "translationY"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    add-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    add-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNamePanel:Landroid/widget/RelativeLayout;

    const-string v4, "translationY"

    new-array v5, v9, [F

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewsOffset:I

    add-int/lit8 v6, v6, 0x0

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutArea:Landroid/widget/FrameLayout;

    const-string v4, "translationY"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v10, v5, v8

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1129
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCamera:Z

    if-eqz v0, :cond_9

    .line 1130
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    const-string v3, "translationY"

    new-array v4, v9, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    aput v5, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1133
    :cond_9
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    if-eqz v0, :cond_a

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const-string v3, "translationY"

    new-array v4, v9, [F

    aput v10, v4, v8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1137
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$15;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1
.end method

.method private unlockDuration(JI)I
    .locals 5
    .param p1, "velocity"    # J
    .param p3, "translationY"    # I

    .prologue
    .line 1021
    const/16 v0, 0x12c

    .line 1022
    .local v0, "duration":I
    const-wide/16 v2, 0x2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    .line 1023
    int-to-long v2, v0

    div-long/2addr v2, p1

    long-to-int v0, v2

    .line 1028
    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 1029
    const/16 v0, 0x32

    .line 1031
    :cond_0
    const-string v1, "KeyguardNature2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "velocity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", translationY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    return v0

    .line 1025
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    sub-int/2addr v1, p3

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    div-int v0, v1, v2

    goto :goto_0
.end method

.method private updateChargingInfo(Z)V
    .locals 3
    .param p1, "charging"    # Z

    .prologue
    .line 2456
    if-eqz p1, :cond_0

    .line 2457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeInfoShowing:Z

    .line 2458
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2459
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2463
    :goto_0
    return-void

    .line 2461
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDateString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateCustomizeInfo()V
    .locals 1

    .prologue
    .line 1967
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$25;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$25;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$25;->start()V

    .line 1977
    return-void
.end method

.method private updateDisplay()V
    .locals 2

    .prologue
    .line 425
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->setHeadPortraitIcon(I)V

    .line 426
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPortraitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateSignatureInfo()V

    .line 430
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateShortcutView()V

    .line 431
    return-void
.end method

.method private updateMusicPanel(Z)V
    .locals 2
    .param p1, "isPlaying"    # Z

    .prologue
    .line 2637
    if-eqz p1, :cond_0

    .line 2638
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeSwitchPanelMsg()V

    .line 2639
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsMusicShowing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2643
    :cond_0
    return-void
.end method

.method private updateSelectedIconRect(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 727
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_WIDTH:I

    div-int/lit8 v1, v2, 0x4

    .line 728
    .local v1, "width":I
    add-int/lit8 v2, p1, 0x1

    rem-int/lit8 v2, v2, 0x4

    mul-int v0, v2, v1

    .line 729
    .local v0, "left":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectedIconRect:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectorIconMagin:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconSelector:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectorIconMagin:I

    add-int/2addr v4, v5

    add-int v5, v0, v1

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectorIconMagin:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectorIconMagin:I

    sub-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 732
    return-void
.end method

.method private updateShortcutView()V
    .locals 4

    .prologue
    const v3, 0x7f0202a8

    const v2, 0x7f0202a7

    .line 2380
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateShortcutVisibility()V

    .line 2382
    const-string v0, "com.android.dialer.TwelveKeyDialer"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.dialer"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    .line 2391
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateViewsColor()V

    .line 2393
    const-string v0, "com.android.dialer.TwelveKeyDialer"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.android.dialer"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2394
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    .line 2402
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateViewsColor()V

    .line 2403
    return-void

    .line 2384
    :cond_0
    const-string v0, "com.android.camera.CameraActivity"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2385
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    goto :goto_0

    .line 2386
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcutExists:Z

    if-eqz v0, :cond_2

    .line 2387
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2389
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    goto :goto_0

    .line 2395
    :cond_3
    const-string v0, "com.android.camera.CameraActivity"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2396
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    goto :goto_1

    .line 2397
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcutExists:Z

    if-eqz v0, :cond_5

    .line 2398
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 2400
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateShortcutVisibility()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 2359
    const/4 v0, 0x0

    .line 2360
    .local v0, "hidePkg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const-string v4, "visit_password"

    invoke-static {v3, v4, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 2361
    .local v1, "isVisitorMode":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2362
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getVisitHideApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2364
    :cond_0
    const-string v3, ""

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsLeftDouble:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isActivityAvailable(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2366
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    .line 2371
    :goto_1
    const-string v3, ""

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsRightDouble:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isActivityAvailable(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2373
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    .line 2377
    :goto_2
    return-void

    .end local v1    # "isVisitorMode":Z
    :cond_3
    move v1, v2

    .line 2360
    goto :goto_0

    .line 2368
    .restart local v1    # "isVisitorMode":Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    goto :goto_1

    .line 2375
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateSignatureInfo()V
    .locals 3

    .prologue
    .line 2466
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2469
    :cond_0
    const-string v0, "KeyguardNature2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSignatureInfo signature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignatureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2470
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2471
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignatureSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2472
    return-void
.end method

.method private updateUnlockIndicatorLoc(Z)V
    .locals 3
    .param p1, "quickcharging"    # Z

    .prologue
    const/16 v2, 0xc

    .line 1837
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1838
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 1839
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1840
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1847
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMainContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1848
    return-void

    .line 1843
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1844
    const/4 v1, 0x2

    const v2, 0x7f11017c

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1845
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorMarginBottom:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0
.end method

.method private updateViewsColor()V
    .locals 1

    .prologue
    .line 1980
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->start()V

    .line 1998
    return-void
.end method

.method private updateViewsColor(II)V
    .locals 10
    .param p1, "topValue"    # I
    .param p2, "bottomValue"    # I

    .prologue
    const/4 v9, -0x1

    const v8, -0xb4b4b5

    const/16 v7, 0xb4

    const v6, -0x19000001

    const v5, -0x19b4b4b5    # -2.4000733E23f

    .line 1914
    const-string v2, "KeyguardNature2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "topValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", LIGHT_GRAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bottomValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", LIGHT_GRAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    if-le p1, v7, :cond_1

    .line 1916
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTimeDateBg:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1917
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalImagesDark:[I

    const v4, 0x7f0202f0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateViewsColor([III)V

    .line 1919
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1920
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1933
    :goto_0
    if-le p2, v7, :cond_4

    .line 1934
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1935
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1936
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateButtonColor(Z)V

    .line 1937
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1938
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1939
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1940
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "view":Landroid/view/View;
    const v2, 0x7f0202f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1937
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1922
    .end local v0    # "i":I
    :cond_1
    const/16 v2, 0x96

    if-le p1, v2, :cond_2

    .line 1923
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTimeDateBg:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1928
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalImages:[I

    const v4, 0x7f0202f2

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateViewsColor([III)V

    .line 1929
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1930
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1925
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTimeDateBg:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1943
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setViewsColor(I)V

    .line 1944
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setViewsColor(I)V

    .line 1958
    :goto_3
    return-void

    .line 1946
    .end local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1947
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1948
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateButtonColor(Z)V

    .line 1949
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1950
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1951
    .restart local v1    # "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 1952
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "view":Landroid/view/View;
    const v2, 0x7f0202f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1949
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1955
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setViewsColor(I)V

    .line 1956
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setViewsColor(I)V

    goto :goto_3
.end method

.method private updateWallpaper()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1878
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1879
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1880
    return-void
.end method


# virtual methods
.method protected addQuickChargeView()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 2675
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    if-nez v1, :cond_0

    .line 2676
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    .line 2677
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2679
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2680
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2681
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeViewMarginBottom:I

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2682
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2683
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setVisibility(I)V

    .line 2685
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onBatteryChanged(ZZIZ)V
    .locals 6
    .param p1, "pluggedIn"    # Z
    .param p2, "isCharged"    # Z
    .param p3, "level"    # I
    .param p4, "isLowLevel"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2114
    const-string v0, "KeyguardNature2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pluggedIn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isCharged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", BatteryLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0, p3}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setLevel(I)V

    .line 2116
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCharged:Z

    .line 2117
    iput p3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    .line 2119
    if-eqz p2, :cond_3

    .line 2120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0179

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfo:Ljava/lang/String;

    .line 2128
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPluggedIn:Z

    if-eq v0, p1, :cond_0

    .line 2129
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPluggedIn:Z

    .line 2130
    if-eqz p1, :cond_5

    .line 2131
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeChargingInfoAnim()V

    .line 2132
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateChargingInfo(Z)V

    .line 2133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2139
    :cond_0
    :goto_1
    if-eqz p1, :cond_9

    .line 2140
    if-eqz p2, :cond_7

    .line 2141
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    .line 2148
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 2149
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeInfoShowing:Z

    if-eqz v0, :cond_1

    .line 2150
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateChargingInfo(Z)V

    .line 2152
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->onBatteryChanged(I)V

    .line 2154
    :cond_2
    return-void

    .line 2122
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickCharging:Z

    if-eqz v0, :cond_4

    .line 2123
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01a8

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfo:Ljava/lang/String;

    goto :goto_0

    .line 2125
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0178

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfo:Ljava/lang/String;

    goto :goto_0

    .line 2135
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeChargingInfoAnim()V

    goto :goto_1

    :cond_6
    move v0, v2

    .line 2141
    goto :goto_2

    .line 2143
    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v0, :cond_8

    move v2, v1

    :cond_8
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showQuickChargeViewIfNeed(Z)V

    goto :goto_3

    .line 2146
    :cond_9
    const/4 v0, 0x3

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v3, :cond_a

    move v2, v1

    :cond_a
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    goto :goto_3
.end method

.method public onBouncerChanged(Z)V
    .locals 5
    .param p1, "bouncer"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2221
    const-string v2, "KeyguardNature2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBouncerChanged bouncer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    if-eqz p1, :cond_5

    .line 2223
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    if-ne v2, v0, :cond_1

    .line 2224
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showIconSelector(Z)V

    .line 2246
    :cond_0
    :goto_0
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v3, :cond_4

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    .line 2256
    :goto_2
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    .line 2257
    return-void

    .line 2226
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mEnableScreenOnAnim:Z

    if-eqz v2, :cond_2

    .line 2227
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimCanceled:Z

    .line 2228
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelScreenOnAnim()V

    .line 2230
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelClickAnim()V

    .line 2231
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelUnlockAnim()V

    .line 2232
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelNotificationAnim()V

    .line 2233
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCancleDismiss:Z

    .line 2234
    const/16 v2, 0xc8

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V

    .line 2235
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-ne v2, p1, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-nez v2, :cond_3

    .line 2236
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 2237
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2241
    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsSecureCameraLauching:Z

    if-eqz v2, :cond_0

    .line 2242
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHideCameraPreview:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2243
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 2239
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showUnlockIndicator(Z)V

    goto :goto_3

    :cond_4
    move v0, v1

    .line 2246
    goto :goto_1

    .line 2248
    :cond_5
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    if-ne v2, v0, :cond_6

    .line 2249
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showIconSelector(Z)V

    .line 2254
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    goto :goto_2

    .line 2251
    :cond_6
    const/16 v2, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V

    goto :goto_4
.end method

.method public onChargingModeChanged(Z)V
    .locals 6
    .param p1, "quick"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2689
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onChargingModeChanged(Z)V

    .line 2691
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickCharging:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCharged:Z

    if-nez v2, :cond_3

    .line 2692
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01a8

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfo:Ljava/lang/String;

    .line 2693
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v2, :cond_0

    .line 2694
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2695
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateChargingInfo(Z)V

    .line 2696
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2698
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v2, :cond_1

    .line 2699
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v2, :cond_2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showQuickChargeViewIfNeed(Z)V

    .line 2708
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 2699
    goto :goto_0

    .line 2703
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCharged:Z

    if-nez v2, :cond_4

    .line 2704
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0178

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfo:Ljava/lang/String;

    .line 2706
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v3, :cond_5

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public onCleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2081
    const-string v0, "KeyguardNature2"

    const-string v1, "onCleanup"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->stopUnlockIndicatorAnim()V

    .line 2083
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHideCameraPreview:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2084
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->removeCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 2085
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeChargingInfoAnim()V

    .line 2086
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mEnableScreenOnAnim:Z

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2090
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    if-eqz v0, :cond_1

    .line 2091
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2094
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 2095
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2096
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mViewList:Ljava/util/ArrayList;

    .line 2098
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 2099
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2100
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIndicatorAnimList:Ljava/util/ArrayList;

    .line 2102
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2104
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 2106
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2108
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    .line 2110
    :cond_5
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 373
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->getSignatureName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignatureName:Ljava/lang/String;

    .line 376
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->getHeadPortraitName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDateString:Ljava/lang/String;

    .line 378
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->refreshDayDate()V

    .line 379
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutIndicatorInfo:Landroid/widget/TextView;

    const v3, 0x7f0e01a7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 380
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPluggedIn:Z

    if-eqz v2, :cond_4

    .line 381
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsCharged:Z

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0179

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfo:Ljava/lang/String;

    .line 383
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    .line 395
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 383
    goto :goto_0

    .line 385
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickCharging:Z

    if-eqz v2, :cond_2

    .line 386
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01a8

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfo:Ljava/lang/String;

    .line 389
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v2, :cond_3

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showQuickChargeViewIfNeed(Z)V

    goto :goto_1

    .line 388
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0178

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargingInfo:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move v0, v1

    .line 389
    goto :goto_3

    .line 392
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeChargingInfoAnim()V

    .line 393
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateSignatureInfo()V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 304
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onFinishInflate()V

    .line 305
    const v1, 0x7f110178

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgView:Landroid/view/View;

    .line 306
    const v1, 0x7f110149

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurCover:Landroid/view/View;

    .line 307
    const v1, 0x7f110182

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgCover:Landroid/view/View;

    .line 308
    const v1, 0x7f110186

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTimeDateBg:Landroid/view/View;

    .line 309
    const v1, 0x7f110183

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutIndicator:Landroid/view/View;

    .line 310
    const v1, 0x7f110184

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutIndicatorInfo:Landroid/widget/TextView;

    .line 311
    const v1, 0x7f110185

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    .line 312
    const v1, 0x7f11017c

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    .line 313
    const v1, 0x7f11018e

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    .line 314
    const v1, 0x7f11018f

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicIconView:Landroid/widget/FrameLayout;

    .line 315
    const v1, 0x7f11018d

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCircularSeekBar:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    .line 316
    const v1, 0x7f110192

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    .line 317
    const v1, 0x7f110062

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDate:Landroid/widget/TextView;

    .line 318
    const v1, 0x7f110082

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .line 319
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setForceCenter(Z)V

    .line 320
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->disableAmPmShadow()V

    .line 321
    const v1, 0x7f110163

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMainContainer:Landroid/view/ViewGroup;

    .line 322
    const v1, 0x7f11017e

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    .line 324
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setViewShape(I)V

    .line 326
    const v1, 0x7f11018c

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .line 327
    const v1, 0x7f110190

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    .line 328
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 329
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setViewShape(I)V

    .line 330
    const v1, 0x7f110189

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNamePanel:Landroid/widget/RelativeLayout;

    .line 331
    const v1, 0x7f11018b

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    .line 332
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicWidget:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSongName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCircularSeekBar:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->setMusicInfoViews(Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;Landroid/widget/TextView;Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;)V

    .line 334
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->registerCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 336
    const v1, 0x7f110187

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnreadPanel:Landroid/view/View;

    .line 338
    const v1, 0x7f11017d

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitNameView:Landroid/widget/TextView;

    .line 339
    const v1, 0x7f11017b

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSignature:Landroid/widget/TextView;

    .line 341
    const v1, 0x7f110188

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIconSelector:Landroid/widget/RelativeLayout;

    .line 342
    const v1, 0x7f110181

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    .line 343
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 344
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 345
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 346
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    const v1, 0x7f110180

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectorIndicator:Landroid/widget/ImageView;

    .line 348
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSelectorIconMagin:I

    .line 350
    const v1, 0x7f110146

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mShortcutArea:Landroid/widget/FrameLayout;

    .line 351
    const v1, 0x7f110148

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 352
    const v1, 0x7f110147

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 353
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftRightIconListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftRightIconListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHelperCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    .line 356
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    .line 357
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDateString:Ljava/lang/String;

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->initViewList()V

    .line 363
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateCustomizeInfo()V

    .line 365
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isUnicomEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    .line 367
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->addView(Landroid/view/View;)V

    .line 369
    :cond_0
    return-void
.end method

.method public onHide(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 2073
    const-string v0, "KeyguardNature2"

    const-string v1, "onHide."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    .line 2075
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->onPause()V

    .line 2076
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideMusicPanel()V

    .line 2077
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1613
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->userActivity()V

    .line 1615
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressed(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 692
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->userActivity()V

    .line 695
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 696
    .local v0, "keyCode":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 698
    :cond_0
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 699
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showIconSelector(Z)V

    .line 704
    .end local v0    # "keyCode":I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyPressed(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2188
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 2189
    if-eqz p1, :cond_1

    .line 2190
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showMusicPanel()V

    .line 2191
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateShortcutVisibility()V

    .line 2192
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateCustomizeInfo()V

    .line 2193
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 2194
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setAlpha(F)V

    .line 2195
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2196
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    .line 2198
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showQuickChargeViewIfNeed(Z)V

    .line 2204
    :goto_0
    return-void

    .line 2200
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    .line 2201
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->recycleShortcutIcon()V

    goto :goto_0
.end method

.method public onNotificationChanged(ZZ)V
    .locals 5
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2169
    const-string v0, "KeyguardNature2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationChanged: mIsNotificationEmpty = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsRetain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsRetain:Z

    if-eq v0, p2, :cond_2

    .line 2171
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    .line 2172
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsRetain:Z

    .line 2173
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mEnableScreenOnAnim:Z

    if-eqz v0, :cond_1

    .line 2174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2175
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelScreenOnAnim()V

    .line 2177
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->notificationAnim(ZZZ)V

    .line 2179
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_5

    .line 2180
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v0, :cond_4

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showQuickChargeViewIfNeed(Z)V

    .line 2184
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v2

    .line 2177
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2180
    goto :goto_1

    .line 2182
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-nez v0, :cond_6

    move v2, v1

    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    goto :goto_2
.end method

.method public onNotificationClicked(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "clickRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 2658
    const-string v0, "KeyguardNature2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNotificationClicked , clickRunnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old clickRunnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2659
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mClickRunnable:Ljava/lang/Runnable;

    .line 2660
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showUnlockIndicator(Z)V

    .line 2661
    const/4 v0, 0x1

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V

    .line 2662
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2059
    const-string v0, "KeyguardNature2"

    const-string v1, "onPause."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    .line 2062
    const/4 v0, 0x4

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeView(IZ)V

    .line 2063
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->stopUnlockIndicatorAnim()V

    .line 2064
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsSecureCameraLauching:Z

    .line 2065
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 2066
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->resetViews()V

    .line 2067
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    .line 2069
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2035
    const-string v0, "KeyguardNature2"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    .line 2037
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showQuickChargeViewIfNeed(Z)V

    .line 2038
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 2039
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2040
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mNotificationView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2042
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelScreenOnAnim()V

    .line 2044
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mEnableScreenOnAnim:Z

    if-nez v0, :cond_1

    .line 2045
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2046
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2048
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUnlockIndicatorAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2049
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    if-eqz v0, :cond_3

    .line 2050
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_2

    .line 2051
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->setAlpha(F)V

    .line 2053
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->onResume()V

    .line 2055
    :cond_3
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 5
    .param p1, "screenState"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    .line 2002
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v0, :cond_1

    .line 2003
    if-ne p1, v1, :cond_3

    .line 2004
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 2005
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeChargingInfoAnim()V

    .line 2006
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateChargingInfo(Z)V

    .line 2007
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2009
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mEnableScreenOnAnim:Z

    if-eqz v0, :cond_1

    .line 2010
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimCanceled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_2

    .line 2011
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2012
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelScreenOnAnim()V

    .line 2013
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideAllViews()V

    .line 2014
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2030
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onScreenStateChanged(I)V

    .line 2031
    return-void

    .line 2017
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelScreenOnAnim()V

    goto :goto_0

    .line 2021
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->removeChargingInfoAnim()V

    .line 2022
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mEnableScreenOnAnim:Z

    if-eqz v0, :cond_1

    .line 2023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimCanceled:Z

    .line 2024
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_1

    .line 2025
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideAllViews()V

    goto :goto_0
.end method

.method public onThemeChanged()V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onThemeChanged()V

    .line 419
    const-string v0, "KeyguardNature2"

    const-string v1, "onThemeChanged"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->recycleShortcutIcon()V

    .line 421
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateCustomizeInfo()V

    .line 422
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 2159
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->refreshDayDate()V

    .line 2160
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v9, 0x1f4

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 1620
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->userActivity()V

    .line 1621
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDoubleClickHelper:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;->onDoubleClick(Landroid/view/MotionEvent;)V

    .line 1623
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsAnimating:Z

    if-eqz v6, :cond_1

    .line 1624
    const-string v6, "KeyguardNature2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "is keyguard animating : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsAnimating:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelShortcutTipsAnim(Landroid/view/MotionEvent;)V

    .line 1748
    :cond_0
    :goto_0
    return v10

    .line 1629
    :cond_1
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    if-eq v6, v10, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    if-eqz v6, :cond_3

    .line 1630
    :cond_2
    const-string v6, "KeyguardNature2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", is bouncer = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsBouncer:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", resume = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnResume:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", unlocking = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsUnlocking:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1637
    :cond_3
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    if-eqz v6, :cond_4

    .line 1638
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-virtual {v6, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1641
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1643
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mEnableScreenOnAnim:Z

    if-eqz v6, :cond_5

    .line 1644
    iput-boolean v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimCanceled:Z

    .line 1645
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelScreenOnAnim()V

    .line 1647
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelUnlockAnim()V

    .line 1648
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->cancelQuickChargeViewAnim()V

    .line 1649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosX:I

    .line 1650
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    .line 1651
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->resetTouchState()V

    .line 1652
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    if-eqz v6, :cond_0

    .line 1653
    invoke-direct {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showUnlockIndicator(Z)V

    .line 1654
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->ShortcutTipsAnim()V

    goto/16 :goto_0

    .line 1659
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mFirstFingerDown:Z

    if-nez v6, :cond_6

    .line 1660
    const-string v6, "KeyguardNature2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancel ACTION_MOVE, mFirstFingerDown = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mFirstFingerDown:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1664
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v2, v6

    .line 1665
    .local v2, "movePosX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v3, v6

    .line 1667
    .local v3, "movePosY":I
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    if-nez v6, :cond_7

    .line 1668
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosX:I

    .line 1669
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    .line 1670
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->resetTouchState()V

    .line 1673
    :cond_7
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimY:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    .line 1676
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    if-ltz v6, :cond_8

    .line 1677
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosX:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    invoke-direct {p0, v6, v7, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isInIconArea(III)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSwitched:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->DOWN_MOVE_DISTANCE_THRESHOLD:I

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCustomIconView:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v6

    cmpl-float v6, v6, v11

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHeadPortraitFlipper:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsQuickChargingShowing:Z

    if-nez v6, :cond_0

    .line 1683
    iput-boolean v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mSwitched:Z

    .line 1684
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->handleSwitch()V

    goto/16 :goto_0

    .line 1687
    :cond_8
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    if-ne v6, v10, :cond_0

    .line 1688
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHideMovingViews:Z

    if-nez v6, :cond_9

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    if-eq v6, v10, :cond_9

    .line 1689
    invoke-direct {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showUnlockIndicator(Z)V

    .line 1690
    iput-boolean v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHideMovingViews:Z

    .line 1693
    :cond_9
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->moveViews(I)V

    goto/16 :goto_0

    .line 1699
    .end local v2    # "movePosX":I
    .end local v3    # "movePosY":I
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mFirstFingerDown:Z

    if-nez v6, :cond_a

    .line 1700
    const-string v6, "KeyguardNature2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancel ACTION_UP, mFirstFingerDown = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mFirstFingerDown:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1704
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimY:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    .line 1705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUpTime:J

    .line 1706
    iget-wide v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mUpTime:J

    iget-wide v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownTime:J

    sub-long v0, v6, v8

    .line 1707
    .local v0, "div":J
    const-wide/16 v4, 0x0

    .line 1708
    .local v4, "velocity":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_b

    .line 1709
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    neg-int v6, v6

    int-to-long v6, v6

    div-long v4, v6, v0

    .line 1712
    :cond_b
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mState:I

    if-eq v6, v10, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnlyAffordanceInThisMotion:Z

    if-nez v6, :cond_0

    .line 1713
    const-wide/16 v6, 0x2

    cmp-long v6, v4, v6

    if-ltz v6, :cond_c

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    if-ltz v6, :cond_d

    :cond_c
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    neg-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->UNLOCK_DISTANCE_THRESHOLD:I

    if-le v6, v7, :cond_e

    :cond_d
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->SCREEN_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_e

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    if-nez v6, :cond_e

    .line 1715
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    neg-int v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockDuration(JI)I

    move-result v6

    invoke-direct {p0, v10, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V

    .line 1722
    :goto_1
    const-wide/16 v6, 0xc8

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getTranslationY()F

    move-result v6

    cmpl-float v6, v6, v11

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsNotificationEmpty:Z

    if-eqz v6, :cond_0

    .line 1724
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->clickAnim()V

    goto/16 :goto_0

    .line 1716
    :cond_e
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDragViewState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    if-gez v6, :cond_f

    .line 1717
    const/16 v6, 0x96

    invoke-direct {p0, v10, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V

    goto :goto_1

    .line 1719
    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->resetUnlockAnim()V

    goto :goto_1

    .line 1731
    .end local v0    # "div":J
    .end local v4    # "velocity":J
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mDownPosY:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mAnimY:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    .line 1732
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTranslationY:I

    if-eqz v6, :cond_10

    .line 1733
    invoke-direct {p0, v8, v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V

    goto/16 :goto_0

    .line 1735
    :cond_10
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnLeftRightIcon:Z

    goto/16 :goto_0

    .line 1740
    :pswitch_5
    const-string v6, "KeyguardNature2"

    const-string v7, "ACTION_POINTER_DOWN"

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1741
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mFirstFingerDown:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mOnlyAffordanceInThisMotion:Z

    if-nez v6, :cond_0

    .line 1742
    iput-boolean v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mFirstFingerDown:Z

    .line 1743
    invoke-direct {p0, v8, v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->unlockAnim(ZI)V

    goto/16 :goto_0

    .line 1641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onWallpaperChanged()V
    .locals 0

    .prologue
    .line 2164
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateWallpaper()V

    .line 2165
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2308
    return-void
.end method

.method public startShortcutActivity(Z)V
    .locals 8
    .param p1, "rightPage"    # Z

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v5, 0x1

    .line 2406
    if-eqz p1, :cond_3

    .line 2407
    const-string v3, "com.android.camera.CameraActivity"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.android.camera"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2408
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->startSecureCameraLaunch()V

    .line 2409
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2410
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsSecureCameraLauching:Z

    .line 2411
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHideCameraPreview:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2428
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const-string v4, "10643"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeCollectData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    :goto_1
    return-void

    .line 2413
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2414
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2416
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2417
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2418
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsRightDouble:Z

    if-eqz v3, :cond_2

    .line 2419
    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->putDoubleInstanceFlag(Landroid/content/Intent;)V

    .line 2422
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2423
    :catch_0
    move-exception v1

    .line 2424
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "KeyguardNature2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start actibity failed, pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cls = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mRightCls:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2430
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "com.android.camera.CameraActivity"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "com.android.camera"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2431
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->startSecureCameraLaunch()V

    .line 2432
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2433
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsSecureCameraLauching:Z

    .line 2434
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mHideCameraPreview:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2451
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    const-string v4, "10642"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeCollectData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2436
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 2437
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    .restart local v0    # "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2439
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2440
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2441
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mIsLeftDouble:Z

    if-eqz v3, :cond_6

    .line 2442
    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->putDoubleInstanceFlag(Landroid/content/Intent;)V

    .line 2445
    :cond_6
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2446
    :catch_1
    move-exception v1

    .line 2447
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v3, "KeyguardNature2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start actibity failed, pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cls = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected updateBgView(Z)V
    .locals 4
    .param p1, "isBlur"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2834
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->updateBgView(Z)V

    .line 2835
    if-eqz p1, :cond_0

    .line 2836
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateViewsColor(II)V

    .line 2837
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2842
    :goto_0
    return-void

    .line 2839
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mTopValue:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBottomValue:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateViewsColor(II)V

    .line 2840
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mBgView:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
