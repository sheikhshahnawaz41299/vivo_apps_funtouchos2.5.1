.class public Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "KeyguardNature.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ActivityStarter;


# static fields
.field private static final DRAG_VIEW_STATE_DOWN:I = 0x2

.field private static final DRAG_VIEW_STATE_NONE:I = 0x1

.field private static final DRAG_VIEW_STATE_UP:I = 0x4

.field private static final DURATION_MEDIUM:I = 0x1f4

.field private static final DURATION_SHORT:I = 0xc8

.field private static final HIDE_CAMERA_DELAY:I = 0xbb8

.field private static final MAX_MOVE_VELOCITY:I = 0x2

.field private static final MSG_LOAD_RESOURCE_SUCCESS:I = 0x0

.field private static final MSG_REFRESH_BATTERY_INFO:I = 0x2

.field private static final MSG_UPDATE_WALLPAPER:I = 0x1

.field private static final RESHOW_SIGNATURE_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "KeyguardNature"

.field private static final TOUCH_ITEM_CALL:I = 0x1

.field private static final TOUCH_ITEM_MOVE:I = 0x0

.field private static final TOUCH_ITEM_MSG:I = 0x2

.field private static final TOUCH_ITEM_NONE:I = -0x1


# instance fields
.field private CHARGE_ITEM_WIDTH:I

.field private CHARGE_MOVE_VIEW_WIDTH:I

.field private CHARGE_TOP_MARGIN:I

.field private CLICK_ANIM_DISTANCE:I

.field private DOWN_MOVE_DISTANCE_THRESHOLD:I

.field private ICON_WIDTH:I

.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private SECURE_UNLOCK_DISTANCE_THRESHOLD:I

.field private UNLOCK_DISTANCE_THRESHOLD:I

.field private mAnimY:I

.field private mAuthenticated:Z

.field private mBackgroundIndicatorIds:[I

.field private mBatteryLevel:I

.field private mBgShadow:Landroid/widget/FrameLayout;

.field private mBgView:Landroid/widget/RelativeLayout;

.field private mBlurCover:Landroid/view/View;

.field private mBlurWallpaper:Landroid/graphics/Bitmap;

.field private mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

.field private mCameraLaunching:Z

.field private mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

.field private mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

.field private mChargingInfo:Ljava/lang/String;

.field private mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

.field private mContext:Landroid/content/Context;

.field private mCustomIconExists:Z

.field private mCustomSettings:Landroid/content/SharedPreferences;

.field private mDate:Landroid/widget/TextView;

.field private mDateString:Ljava/lang/String;

.field private mDownPosX:I

.field private mDownPosY:I

.field private mDownTime:J

.field private mDragViewState:I

.field private mFirstFingerDown:Z

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHasInited:Z

.field private mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

.field private mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

.field private mHeadPortraitNameView:Landroid/widget/TextView;

.field private mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

.field private final mHideCameraPreview:Ljava/lang/Runnable;

.field private mIndicatorBitmap:[Landroid/graphics/Bitmap;

.field private mIsAnimating:Z

.field private mIsBouncer:Z

.field private mIsCharged:Z

.field private mIsEditing:Z

.field private mIsLiveWallpaper:Z

.field private mIsNotificationEmpty:Z

.field private mIsRetain:Z

.field private mIsStartActivity:Z

.field private mIsUnlocking:Z

.field private mKeyguardMusicManagerNullCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

.field private mLocale:Ljava/util/Locale;

.field mNotificationAnim:Landroid/animation/AnimatorSet;

.field private mOnResume:Z

.field private mPanelBg:Landroid/widget/TextView;

.field private mPanelBgBitmap:Landroid/graphics/Bitmap;

.field private mPluggedIn:Z

.field private mPortraitIconId:I

.field private mPortraitName:Ljava/lang/String;

.field private mSecurityBg:Landroid/view/View;

.field private mSecurityView:Landroid/view/View;

.field private mSelectorIndicator:Landroid/widget/ImageView;

.field private mShowGuide:Z

.field private mSignature:Landroid/widget/TextView;

.field private mSignatureColor:I

.field private mSignatureName:Ljava/lang/String;

.field private mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

.field private mStateInfo:Landroid/content/SharedPreferences;

.field private mSwipeAnimator:Landroid/animation/AnimatorSet;

.field private mSwipingInProgress:Z

.field private mSwipingX:Z

.field private mSwitched:Z

.field private mTouchItem:I

.field private mTouchSlop:I

.field private mTranslationX:I

.field private mTranslationY:I

.field mUnlockAnims:Landroid/animation/AnimatorSet;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private final mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_WIDTH:I

    .line 85
    const/16 v0, 0x500

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    .line 86
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->UNLOCK_DISTANCE_THRESHOLD:I

    .line 87
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    .line 88
    const/16 v0, 0x46

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->DOWN_MOVE_DISTANCE_THRESHOLD:I

    .line 89
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->ICON_WIDTH:I

    .line 90
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CHARGE_MOVE_VIEW_WIDTH:I

    .line 91
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CHARGE_ITEM_WIDTH:I

    .line 92
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CHARGE_TOP_MARGIN:I

    .line 93
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CLICK_ANIM_DISTANCE:I

    .line 120
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    .line 121
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomIconExists:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHasInited:Z

    .line 125
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mFirstFingerDown:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mOnResume:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mShowGuide:Z

    .line 150
    new-array v0, v3, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIndicatorBitmap:[Landroid/graphics/Bitmap;

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTouchItem:I

    .line 165
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsNotificationEmpty:Z

    .line 170
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mKeyguardMusicManagerNullCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 244
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 262
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBackgroundIndicatorIds:[I

    .line 271
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    .line 1250
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$13;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    .line 1348
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$15;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$15;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHideCameraPreview:Ljava/lang/Runnable;

    .line 295
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    .line 297
    const-string v0, "state_info"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mStateInfo:Landroid/content/SharedPreferences;

    .line 298
    const-string v0, "custom_settings"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomSettings:Landroid/content/SharedPreferences;

    .line 299
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mStateInfo:Landroid/content/SharedPreferences;

    const-string v1, "show_tips"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mShowGuide:Z

    .line 300
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->adjustDimens(Landroid/content/Context;)V

    .line 301
    return-void

    .line 262
    nop

    :array_0
    .array-data 4
        0x7f0202d6
        0x7f0202d7
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipeAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateDisplay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->handleUpdateWallpaper()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->refreshBatteryInfo()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/widget/ViewFlipper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->loadResources()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)[Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIndicatorBitmap:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSelectorIndicator:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBackgroundIndicatorIds:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->setIcon(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->finishIconSet(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomSettings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsStartActivity:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsStartActivity:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->startSettingActivity()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->natureDismiss()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLaunching:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAuthenticated:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->switchPage()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->hideChargingInfoAnim()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->resetCamera()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHideCameraPreview:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateNotificationVisibility(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    return v0
.end method

.method private adjustDimens(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 404
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 405
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTouchSlop:I

    .line 406
    const-string v2, "KeyguardNature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "touch slop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTouchSlop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_WIDTH:I

    .line 409
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    .line 411
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 412
    .local v1, "density":F
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->ICON_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->ICON_WIDTH:I

    .line 413
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->UNLOCK_DISTANCE_THRESHOLD:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->UNLOCK_DISTANCE_THRESHOLD:I

    .line 414
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->DOWN_MOVE_DISTANCE_THRESHOLD:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->DOWN_MOVE_DISTANCE_THRESHOLD:I

    .line 416
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    .line 417
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CHARGE_MOVE_VIEW_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CHARGE_MOVE_VIEW_WIDTH:I

    .line 418
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_WIDTH:I

    div-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CHARGE_ITEM_WIDTH:I

    .line 419
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CHARGE_TOP_MARGIN:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CHARGE_TOP_MARGIN:I

    .line 420
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CLICK_ANIM_DISTANCE:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CLICK_ANIM_DISTANCE:I

    .line 421
    return-void
.end method

.method private cancelNotificationAnim()V
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1487
    :cond_0
    return-void
.end method

.method private clickAnim()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 845
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsAnimating:Z

    if-nez v1, :cond_0

    .line 846
    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsAnimating:Z

    .line 848
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 849
    .local v0, "anims":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 850
    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    const-string v3, "translationY"

    const/4 v4, 0x5

    new-array v4, v4, [F

    aput v6, v4, v8

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CLICK_ANIM_DISTANCE:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    aput v6, v4, v9

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CLICK_ANIM_DISTANCE:I

    neg-int v5, v5

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    aput v5, v4, v10

    const/4 v5, 0x4

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 852
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecureMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 853
    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSecurityView:Landroid/view/View;

    const-string v3, "translationY"

    const/4 v4, 0x5

    new-array v4, v4, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    int-to-float v5, v5

    aput v5, v4, v8

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CLICK_ANIM_DISTANCE:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v4, v7

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    int-to-float v5, v5

    aput v5, v4, v9

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CLICK_ANIM_DISTANCE:I

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v4, v10

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 860
    :goto_0
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$12;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 866
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 868
    .end local v0    # "anims":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    .line 857
    .restart local v0    # "anims":Landroid/animation/AnimatorSet;
    :cond_1
    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const-string v3, "translationY"

    const/4 v4, 0x5

    new-array v4, v4, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    aput v5, v4, v8

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CLICK_ANIM_DISTANCE:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v4, v7

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    aput v5, v4, v9

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->CLICK_ANIM_DISTANCE:I

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    aput v5, v4, v10

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private finishIconSet(I)V
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 714
    if-ltz p1, :cond_0

    .line 715
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$9;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$9;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;I)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$9;->start()V

    .line 722
    :cond_0
    return-void
.end method

.method private fling(Z)V
    .locals 9
    .param p1, "snapBack"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1363
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsAnimating:Z

    if-nez v2, :cond_1

    .line 1364
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsAnimating:Z

    .line 1366
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_WIDTH:I

    neg-int v2, v2

    int-to-float v1, v2

    .line 1367
    .local v1, "target":F
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 1368
    :cond_0
    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLaunching:Z

    .line 1370
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1371
    .local v0, "anims":Landroid/animation/AnimatorSet;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    const-string v6, "translationX"

    new-array v7, v4, [F

    aput v1, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const-string v6, "translationX"

    new-array v7, v4, [F

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_WIDTH:I

    int-to-float v8, v8

    add-float/2addr v8, v1

    aput v8, v7, v3

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1373
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1374
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1375
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1376
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipeAnimator:Landroid/animation/AnimatorSet;

    .line 1378
    .end local v0    # "anims":Landroid/animation/AnimatorSet;
    .end local v1    # "target":F
    :cond_1
    return-void

    .restart local v1    # "target":F
    :cond_2
    move v2, v4

    .line 1368
    goto :goto_0
.end method

.method private getHeadPortraitIconId()I
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomSettings:Landroid/content/SharedPreferences;

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

    .line 474
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v2, "name"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "name":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    :cond_0
    return-object v0
.end method

.method private getSignatureColor()I
    .locals 6

    .prologue
    .line 486
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v3, "font_color"

    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->COLOR_VALUE:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureColor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureColor:I

    return v2

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getSignatureName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v1, "signature"

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

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

.method private getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    move-result-object v0

    return-object v0
.end method

.method private handleUpdateWallpaper()V
    .locals 5

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    .line 430
    .local v0, "kwm":Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsLiveWallpaper:Z

    .line 431
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mWallpaper:Landroid/graphics/Bitmap;

    .line 432
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 434
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsNotificationEmpty:Z

    if-nez v1, :cond_1

    .line 435
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateBgView(Z)V

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurCover:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSecurityBg:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsLiveWallpaper:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 443
    :cond_0
    return-void

    .line 437
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateBgView(Z)V

    goto :goto_0

    .line 440
    :cond_2
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private hideChargingInfoAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1258
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    const-string v2, "alpha"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1259
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1260
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 1261
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 1262
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$14;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1269
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1270
    return-void

    .line 1258
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isInViewArea(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 886
    const/4 v3, 0x0

    .line 887
    .local v3, "result":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_0

    .line 889
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v0, v5

    .line 890
    .local v0, "downPos":I
    if-eqz p2, :cond_0

    .line 891
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 892
    .local v2, "location":[I
    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 893
    const/4 v5, 0x1

    aget v4, v2, v5

    .line 894
    .local v4, "y":I
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    .line 895
    .local v1, "h":I
    if-lt v0, v4, :cond_1

    if-gt v0, v1, :cond_1

    .line 896
    const/4 v3, 0x1

    .line 903
    .end local v0    # "downPos":I
    .end local v1    # "h":I
    .end local v2    # "location":[I
    .end local v4    # "y":I
    :cond_0
    :goto_0
    return v3

    .line 898
    .restart local v0    # "downPos":I
    .restart local v1    # "h":I
    .restart local v2    # "location":[I
    .restart local v4    # "y":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isSecureMode()Z
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method private loadResources()V
    .locals 4

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->getHeadPortraitIconId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPortraitIconId:I

    .line 451
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->getHeadPortraitName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPortraitName:Ljava/lang/String;

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->getSignatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureName:Ljava/lang/String;

    .line 453
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->getSignatureColor()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureColor:I

    .line 455
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/bbkcore/lock_screen_nature/icon"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 456
    .local v0, "icon":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomIconExists:Z

    .line 457
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPortraitIconId:I

    if-gez v1, :cond_0

    .line 458
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPortraitIconId:I

    .line 461
    :cond_0
    const-string v1, "KeyguardNature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPortraitIconId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method private moveSecurityView(I)V
    .locals 2
    .param p1, "distance"    # I

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSecurityView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSecurityView:Landroid/view/View;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 760
    :cond_0
    return-void
.end method

.method private moveViews(I)V
    .locals 5
    .param p1, "distance"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecure()Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 733
    neg-int v0, p1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const/high16 v1, 0x40000000    # 2.0f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 738
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 741
    neg-int v0, p1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3

    .line 742
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const v1, 0x3f19999a    # 0.6f

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_0
.end method

.method private moveViewsX(I)V
    .locals 2
    .param p1, "distance"    # I

    .prologue
    .line 750
    if-gez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLaunching:Z

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 752
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_WIDTH:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 754
    :cond_0
    return-void
.end method

.method private natureDismiss()V
    .locals 0

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->dismiss()V

    .line 908
    return-void
.end method

.method private notificationAnim(ZZ)V
    .locals 9
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1444
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->cancelNotificationAnim()V

    .line 1446
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    .line 1447
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1448
    if-eqz p1, :cond_1

    .line 1449
    if-nez p2, :cond_0

    .line 1450
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1451
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$18;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1480
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1481
    return-void

    .line 1465
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsBouncer:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->statusBarDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1468
    :cond_2
    if-nez p2, :cond_0

    .line 1469
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1470
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$19;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1450
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1469
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private prepareSelectorView(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;Landroid/view/LayoutInflater;)V
    .locals 12
    .param p1, "container"    # Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 548
    if-eqz p1, :cond_0

    .line 549
    new-instance v10, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;

    invoke-direct {v10, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$6;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {p1, v10}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->registerCallback(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;)V

    .line 571
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 574
    const/4 v9, 0x0

    .line 575
    .local v9, "view":Landroid/view/ViewGroup;
    const v10, 0x7f040061

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 576
    .local v8, "v":Landroid/view/View;
    instance-of v10, v8, Landroid/view/ViewGroup;

    if-nez v10, :cond_2

    .line 684
    .end local v8    # "v":Landroid/view/View;
    .end local v9    # "view":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .restart local v8    # "v":Landroid/view/View;
    .restart local v9    # "view":Landroid/view/ViewGroup;
    :cond_2
    move-object v9, v8

    .line 579
    check-cast v9, Landroid/view/ViewGroup;

    .line 581
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 582
    .local v6, "n":I
    if-eqz v9, :cond_b

    if-lez v6, :cond_b

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v10

    array-length v10, v10

    if-gt v6, v10, :cond_b

    .line 583
    const/4 v2, 0x0

    .line 584
    .local v2, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 585
    .local v7, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_b

    .line 586
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 587
    .local v1, "childViewGroup":Landroid/view/View;
    if-eqz v1, :cond_6

    instance-of v10, v1, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_6

    .line 588
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "childViewGroup":Landroid/view/View;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    .line 591
    .local v0, "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setViewShape(I)V

    .line 592
    instance-of v10, v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    if-eqz v10, :cond_5

    .line 593
    if-nez v3, :cond_8

    .line 594
    const/4 v2, 0x0

    .line 595
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    if-eqz v10, :cond_3

    .line 596
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    const-string v11, "head_add"

    invoke-virtual {v10, v11}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;->getImageNameByKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 598
    :cond_3
    if-eqz v7, :cond_4

    .line 599
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .restart local v2    # "file":Ljava/io/File;
    :cond_4
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 602
    invoke-virtual {v0, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(Ljava/lang/String;)V

    .line 620
    :cond_5
    :goto_2
    add-int/lit8 v10, v3, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setTag(Ljava/lang/Object;)V

    .line 621
    new-instance v10, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$7;

    invoke-direct {v10, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$7;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    .end local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 604
    .restart local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    :cond_7
    const v10, 0x7f0202a5

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(I)V

    goto :goto_2

    .line 609
    :cond_8
    iget-boolean v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomIconExists:Z

    if-eqz v10, :cond_a

    .line 610
    const/4 v10, 0x1

    if-ne v3, v10, :cond_9

    .line 611
    const-string v10, "/data/bbkcore/lock_screen_nature/icon"

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(Ljava/lang/String;)V

    goto :goto_2

    .line 613
    :cond_9
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    add-int/lit8 v11, v3, -0x2

    invoke-static {v10, v0, v11}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V

    goto :goto_2

    .line 616
    :cond_a
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    add-int/lit8 v11, v3, -0x1

    invoke-static {v10, v0, v11}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V

    goto :goto_2

    .line 634
    .end local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i":I
    .end local v7    # "path":Ljava/lang/String;
    :cond_b
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v4, v10, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 636
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v9, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addScreen(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    const v10, 0x7f040061

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 642
    instance-of v10, v8, Landroid/view/ViewGroup;

    if-eqz v10, :cond_1

    move-object v9, v8

    .line 645
    check-cast v9, Landroid/view/ViewGroup;

    .line 647
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 648
    .local v5, "m":I
    if-eqz v9, :cond_f

    if-lez v5, :cond_f

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v10

    array-length v10, v10

    sub-int/2addr v10, v6

    if-gt v5, v10, :cond_f

    .line 649
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v5, :cond_f

    .line 650
    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 651
    .restart local v1    # "childViewGroup":Landroid/view/View;
    if-eqz v1, :cond_d

    instance-of v10, v1, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_d

    move-object v10, v1

    .line 652
    check-cast v10, Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    .line 655
    .restart local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setViewShape(I)V

    .line 656
    instance-of v10, v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    if-eqz v10, :cond_c

    .line 657
    iget-boolean v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomIconExists:Z

    if-eqz v10, :cond_e

    .line 658
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    add-int v11, v3, v6

    add-int/lit8 v11, v11, -0x2

    invoke-static {v10, v0, v11}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V

    .line 666
    :cond_c
    :goto_4
    add-int v10, v3, v6

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setTag(Ljava/lang/Object;)V

    .line 667
    new-instance v10, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$8;

    invoke-direct {v10, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$8;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    .end local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 660
    .restart local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    :cond_e
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    add-int v11, v3, v6

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v0, v11}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V

    .line 661
    add-int/lit8 v10, v5, -0x1

    if-ne v3, v10, :cond_c

    .line 662
    const/4 v10, 0x4

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 681
    .end local v0    # "childView":Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
    .end local v1    # "childViewGroup":Landroid/view/View;
    .end local v3    # "i":I
    :cond_f
    invoke-virtual {p1, v9, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addScreen(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private refreshBatteryInfo()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1231
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPluggedIn:Z

    if-eqz v0, :cond_3

    .line 1232
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setLevel(I)V

    .line 1233
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mOnResume:Z

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 1238
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsCharged:Z

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 1240
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->invalidate()V

    .line 1248
    :cond_0
    :goto_1
    return-void

    .line 1236
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    goto :goto_0

    .line 1242
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mOnResume:Z

    if-eqz v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->startChargeAnimation()V

    goto :goto_1

    .line 1246
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    goto :goto_1
.end method

.method private refreshDayDate()V
    .locals 3

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDateString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method private resetCamera()V
    .locals 1

    .prologue
    .line 1356
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLaunching:Z

    if-eqz v0, :cond_0

    .line 1357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLaunching:Z

    .line 1358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->fling(Z)V

    .line 1360
    :cond_0
    return-void
.end method

.method private resetPage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 516
    .local v0, "currentIndex":I
    if-eqz v0, :cond_0

    .line 517
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    .line 518
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    .line 522
    .end local v0    # "currentIndex":I
    :cond_0
    return-void
.end method

.method private resetViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 911
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->resetPage()V

    .line 912
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->moveViews(I)V

    .line 913
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->moveSecurityView(I)V

    .line 914
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipeAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 917
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-eqz v0, :cond_1

    .line 918
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->fling(Z)V

    .line 920
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    .line 921
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    .line 922
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    .line 923
    return-void
.end method

.method private setHeadPortraitIcon(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 500
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getHeadPortpaitSelectorIcon()[I

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 501
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCustomIconExists:Z

    if-eqz v0, :cond_2

    .line 502
    if-nez p1, :cond_1

    .line 503
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    const-string v1, "/data/bbkcore/lock_screen_nature/icon"

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImage(Ljava/lang/String;)V

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    add-int/lit8 v2, p1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V

    goto :goto_0

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->setHeadImageById(Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;I)V

    goto :goto_0
.end method

.method private setIcon(I)V
    .locals 2
    .param p1, "iconIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 687
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 688
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsStartActivity:Z

    .line 690
    const/16 v0, 0xc8

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    .line 699
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->switchPage()V

    .line 700
    return-void

    .line 692
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->startSettingActivity()V

    goto :goto_0

    .line 695
    :cond_1
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPortraitIconId:I

    .line 696
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->setHeadPortraitIcon(I)V

    goto :goto_0
.end method

.method private shouldSwipe(FF)Z
    .locals 4
    .param p1, "moveX"    # F
    .param p2, "moveY"    # F

    .prologue
    .line 1381
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosX:I

    int-to-float v2, v2

    sub-float v0, v2, p1

    .line 1382
    .local v0, "x":F
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    int-to-float v2, v2

    sub-float v1, v2, p2

    .line 1383
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTouchSlop:I

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startSettingActivity()V
    .locals 3

    .prologue
    .line 703
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 704
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const-string v2, "com.android.systemui.vivo.common.keyguard.nature.iconset.IconSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const-string v1, "image_width"

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->ICON_WIDTH:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    const-string v1, "image_height"

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->ICON_WIDTH:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const-string v1, "show_color_list"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 708
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 709
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 710
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 711
    return-void
.end method

.method private switchPage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 525
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAuthenticated:Z

    if-nez v0, :cond_0

    .line 526
    const/16 v0, 0xc8

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    .line 544
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHasInited:Z

    if-nez v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->prepareSelectorView(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;Landroid/view/LayoutInflater;)V

    .line 535
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    if-nez v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 537
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    .line 543
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    goto :goto_0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 540
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    goto :goto_1
.end method

.method private unlockAnim(ZI)V
    .locals 10
    .param p1, "unlock"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 765
    const-string v0, "KeyguardNature"

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsUnlocking:Z

    if-ne v0, p1, :cond_0

    .line 842
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    .line 773
    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsAnimating:Z

    .line 774
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsUnlocking:Z

    .line 775
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    .line 776
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 778
    if-eqz p1, :cond_5

    .line 779
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 780
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const-string v3, "alpha"

    new-array v4, v6, [F

    const v5, 0x3f333333    # 0.7f

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 785
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 786
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 788
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsLiveWallpaper:Z

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 799
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$10;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 841
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 782
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-array v1, v9, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    aput v8, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const-string v3, "alpha"

    new-array v4, v6, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const-string v3, "translationY"

    new-array v4, v6, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 825
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$11;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_3
.end method

.method private updateBgVisibility()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 1410
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1411
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-eqz v0, :cond_2

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSecurityBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-eqz v0, :cond_4

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->getCameraPreview()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->getCameraPreview()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->onSwipingStarted()V

    .line 1434
    :cond_1
    :goto_1
    return-void

    .line 1414
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSecurityBg:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1417
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSecurityBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1429
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1430
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1431
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1432
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_1
.end method

.method private updateCustomizeInfo()V
    .locals 1

    .prologue
    .line 393
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$5;->start()V

    .line 401
    return-void
.end method

.method private updateDisplay()V
    .locals 2

    .prologue
    .line 466
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPortraitIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->setHeadPortraitIcon(I)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPortraitName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 471
    return-void
.end method

.method private updateNotificationVisibility(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1387
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->cancelNotificationAnim()V

    .line 1390
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    .line 1391
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1392
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$16;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1405
    :goto_0
    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1406
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1407
    return-void

    .line 1398
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v3, [F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1399
    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$17;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private updateSkinBitmap()V
    .locals 4

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    if-nez v0, :cond_0

    .line 1497
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    .line 1500
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    if-eqz v0, :cond_1

    .line 1501
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    const-string v1, "drag_bg"

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPanelBgBitmap:Landroid/graphics/Bitmap;

    .line 1502
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIndicatorBitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    const-string v3, "head_icon_indicator_0"

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIndicatorBitmap:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;

    const-string v3, "head_icon_indicator_1"

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/NatureSkin;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1506
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPanelBgBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1507
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPanelBg:Landroid/widget/TextView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPanelBgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1511
    :goto_0
    return-void

    .line 1509
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPanelBg:Landroid/widget/TextView;

    const v1, 0x7f0202b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateWallpaper()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 424
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 426
    return-void
.end method


# virtual methods
.method public onBatteryChanged(ZZIZ)V
    .locals 5
    .param p1, "pluggedIn"    # Z
    .param p2, "isCharged"    # Z
    .param p3, "level"    # I
    .param p4, "isLowLevel"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1202
    const-string v0, "KeyguardNature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pluggedIn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isCharged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BatteryLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iput p3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBatteryLevel:I

    .line 1204
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsCharged:Z

    .line 1206
    if-eqz p2, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    .line 1216
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPluggedIn:Z

    if-eq v0, p1, :cond_0

    .line 1217
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPluggedIn:Z

    .line 1218
    if-eqz p1, :cond_3

    .line 1219
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1221
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1227
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1228
    return-void

    .line 1209
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsQuickCharging:Z

    if-eqz v0, :cond_2

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01a8

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    goto :goto_0

    .line 1212
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0178

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    goto :goto_0

    .line 1223
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1329
    if-eqz p1, :cond_2

    .line 1330
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    .line 1331
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->cancelNotificationAnim()V

    .line 1332
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateBgVisibility()V

    .line 1333
    const/4 v0, 0x1

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    .line 1334
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsBouncer:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsNotificationEmpty:Z

    if-nez v0, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1336
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1345
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsBouncer:Z

    .line 1346
    return-void

    .line 1338
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateNotificationVisibility(Z)V

    goto :goto_0

    .line 1341
    :cond_2
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1342
    const/16 v0, 0x1f4

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    goto :goto_0
.end method

.method public onChargingModeChanged(Z)V
    .locals 5
    .param p1, "quick"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1521
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onChargingModeChanged(Z)V

    .line 1523
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsQuickCharging:Z

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01a8

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1526
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1527
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1531
    :goto_0
    return-void

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0178

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1180
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHideCameraPreview:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1185
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mWallpaper:Landroid/graphics/Bitmap;

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1189
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mKeyguardMusicManagerNullCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->removeCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 1192
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 368
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 369
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mLocale:Ljava/util/Locale;

    .line 370
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 371
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 372
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 373
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->getSignatureName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureName:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitNameView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->getHeadPortraitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDateString:Ljava/lang/String;

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->refreshDayDate()V

    .line 377
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPluggedIn:Z

    if-eqz v0, :cond_2

    .line 378
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsCharged:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    .line 390
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsQuickCharging:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v1, 0x7f0e01a8

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0178

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    goto :goto_0

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 305
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onFinishInflate()V

    .line 307
    const v1, 0x7f110178

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    .line 308
    const v1, 0x7f110149

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurCover:Landroid/view/View;

    .line 309
    const v1, 0x7f110177

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSecurityBg:Landroid/view/View;

    .line 311
    const v1, 0x7f110179

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    .line 313
    const v1, 0x7f11017a

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPanelBg:Landroid/widget/TextView;

    .line 315
    const v1, 0x7f110176

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    .line 316
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgShadow:Landroid/widget/FrameLayout;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 317
    const v1, 0x7f110082

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .line 318
    const v1, 0x7f110062

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDate:Landroid/widget/TextView;

    .line 319
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDateString:Ljava/lang/String;

    .line 321
    const v1, 0x7f11017c

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    .line 322
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v3, 0x7f050069

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/content/Context;I)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    const v3, 0x7f05006a

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/content/Context;I)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 341
    const v1, 0x7f11017e

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    .line 343
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitIconView:Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setViewShape(I)V

    .line 345
    const v1, 0x7f11017d

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitNameView:Landroid/widget/TextView;

    .line 346
    const v1, 0x7f11017b

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    .line 348
    const v1, 0x7f110180

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSelectorIndicator:Landroid/widget/ImageView;

    .line 349
    const v1, 0x7f110181

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    .line 350
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 351
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 352
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 353
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHeadPortraitScreenView:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateCustomizeInfo()V

    .line 358
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isUnicomEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    .line 360
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mKeyguardMusicManagerNullCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->registerCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 364
    return-void
.end method

.method public onHide(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 1196
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsBouncer:Z

    .line 1197
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->onPause()V

    .line 1198
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->userActivity()V

    .line 929
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressed(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 872
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 875
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    if-eqz v0, :cond_1

    .line 876
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->resetPage()V

    .line 882
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 1312
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 1314
    if-eqz p1, :cond_0

    .line 1315
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateCustomizeInfo()V

    .line 1317
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 1318
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    if-eqz v0, :cond_1

    .line 1319
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->resetPage()V

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1320
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1321
    const/4 v0, 0x0

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    goto :goto_0
.end method

.method public onNotificationChanged(ZZ)V
    .locals 1
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    .line 1304
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsNotificationEmpty:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsRetain:Z

    if-eq v0, p2, :cond_1

    .line 1305
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsNotificationEmpty:Z

    .line 1306
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsRetain:Z

    .line 1307
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->notificationAnim(ZZ)V

    .line 1309
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1166
    const-string v0, "KeyguardNature"

    const-string v1, "onPause."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mOnResume:Z

    if-eqz v0, :cond_0

    .line 1168
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mOnResume:Z

    .line 1169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 1171
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->resetCamera()V

    .line 1172
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAuthenticated:Z

    .line 1173
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsBouncer:Z

    if-nez v0, :cond_1

    .line 1174
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->resetViews()V

    .line 1176
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1145
    const-string v0, "KeyguardNature"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mOnResume:Z

    if-nez v0, :cond_3

    .line 1147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mOnResume:Z

    .line 1148
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsNotificationEmpty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 1149
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1150
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mNotificationView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPluggedIn:Z

    if-eqz v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 1155
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsCharged:Z

    if-nez v0, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->startChargeAnimation()V

    .line 1158
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    if-eqz v0, :cond_3

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->onResume()V

    .line 1162
    :cond_3
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 4
    .param p1, "screenState"    # I

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 1118
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1119
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSignature:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1122
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1128
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onScreenStateChanged(I)V

    .line 1129
    return-void

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onSkinChanged()V
    .locals 1

    .prologue
    .line 1514
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateSkinBitmap()V

    .line 1515
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateSkin()V

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->updateSkin()V

    .line 1517
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 1294
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->refreshDayDate()V

    .line 1295
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->userActivity()V

    .line 936
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsBouncer:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mCameraLaunching:Z

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 1112
    :goto_0
    return v6

    .line 938
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1112
    :cond_2
    :goto_1
    :pswitch_0
    const/4 v6, 0x1

    goto :goto_0

    .line 940
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosX:I

    .line 941
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    .line 942
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    .line 943
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    .line 944
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    .line 945
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mFirstFingerDown:Z

    .line 946
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownTime:J

    .line 947
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v8

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_3

    .line 949
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mUnlockAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->cancel()V

    .line 950
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAnimY:I

    .line 951
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    goto :goto_1

    .line 953
    :cond_3
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAnimY:I

    goto :goto_1

    .line 958
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mFirstFingerDown:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    if-eqz v6, :cond_5

    .line 959
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 962
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v2, v6

    .line 963
    .local v2, "movePosX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v3, v6

    .line 965
    .local v3, "movePosY":I
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    if-nez v6, :cond_6

    .line 966
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosX:I

    .line 967
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    .line 968
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mFirstFingerDown:Z

    .line 969
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownTime:J

    .line 973
    :cond_6
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAnimY:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    .line 974
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosX:I

    sub-int v6, v2, v6

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    .line 976
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsAnimating:Z

    if-nez v6, :cond_b

    .line 977
    int-to-float v6, v2

    int-to-float v7, v3

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->shouldSwipe(FF)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    .line 978
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    if-eqz v6, :cond_b

    .line 979
    const-string v6, "KeyguardNature"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTranslationX = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mTranslationY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mAnimY = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAnimY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_c

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAnimY:I

    if-nez v6, :cond_c

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    if-nez v6, :cond_c

    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    .line 984
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateBgVisibility()V

    .line 985
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    if-ltz v6, :cond_8

    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-nez v6, :cond_9

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    if-gez v6, :cond_9

    .line 988
    :cond_8
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateNotificationVisibility(Z)V

    .line 990
    :cond_9
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    if-ltz v6, :cond_a

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-eqz v6, :cond_b

    .line 991
    :cond_a
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosX:I

    .line 992
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    .line 993
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    sub-int v6, v3, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAnimY:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    .line 994
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosX:I

    sub-int v6, v2, v6

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    .line 999
    :cond_b
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    if-eqz v6, :cond_2

    .line 1000
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-eqz v6, :cond_d

    .line 1001
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->moveViewsX(I)V

    goto/16 :goto_1

    .line 982
    :cond_c
    const/4 v6, 0x0

    goto :goto_2

    .line 1004
    :cond_d
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    if-ltz v6, :cond_f

    .line 1005
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_e

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    if-nez v6, :cond_e

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->DOWN_MOVE_DISTANCE_THRESHOLD:I

    if-le v6, v7, :cond_e

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_e

    .line 1007
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->switchPage()V

    .line 1008
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    .line 1011
    :cond_e
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecureMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1012
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    if-ge v6, v7, :cond_2

    .line 1013
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    neg-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->moveViews(I)V

    .line 1014
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->moveSecurityView(I)V

    goto/16 :goto_1

    .line 1018
    :cond_f
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsAnimating:Z

    if-nez v6, :cond_2

    .line 1019
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    if-eqz v6, :cond_10

    .line 1020
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    if-nez v6, :cond_2

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    neg-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->DOWN_MOVE_DISTANCE_THRESHOLD:I

    if-le v6, v7, :cond_2

    .line 1021
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->switchPage()V

    .line 1022
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    goto/16 :goto_1

    .line 1024
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->isSecureMode()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1025
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    neg-int v7, v7

    if-le v6, v7, :cond_2

    .line 1026
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->moveViews(I)V

    .line 1027
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAuthenticated:Z

    if-nez v6, :cond_2

    .line 1028
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SECURE_UNLOCK_DISTANCE_THRESHOLD:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    add-int/2addr v6, v7

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->moveSecurityView(I)V

    goto/16 :goto_1

    .line 1032
    :cond_11
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->moveViews(I)V

    goto/16 :goto_1

    .line 1041
    .end local v2    # "movePosX":I
    .end local v3    # "movePosY":I
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mFirstFingerDown:Z

    if-nez v6, :cond_12

    .line 1042
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1045
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAnimY:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    .line 1046
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosX:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownTime:J

    sub-long v0, v6, v8

    .line 1049
    .local v0, "div":J
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    if-eqz v6, :cond_1c

    .line 1050
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-eqz v6, :cond_15

    .line 1051
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    if-gez v6, :cond_14

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationX:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_WIDTH:I

    shr-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_13

    const/4 v6, 0x1

    :goto_3
    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->fling(Z)V

    goto/16 :goto_1

    :cond_13
    const/4 v6, 0x0

    goto :goto_3

    :cond_14
    const/4 v6, 0x1

    goto :goto_3

    .line 1053
    :cond_15
    const-wide/16 v4, 0x0

    .line 1054
    .local v4, "velocity":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_16

    .line 1055
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    neg-int v6, v6

    int-to-long v6, v6

    div-long v4, v6, v0

    .line 1058
    :cond_16
    const-wide/16 v6, 0x2

    cmp-long v6, v4, v6

    if-ltz v6, :cond_17

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    if-ltz v6, :cond_18

    :cond_17
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    neg-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->UNLOCK_DISTANCE_THRESHOLD:I

    if-le v6, v7, :cond_19

    :cond_18
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->SCREEN_HEIGHT:I

    div-int/lit8 v7, v7, 0x2

    if-le v6, v7, :cond_19

    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwitched:Z

    if-nez v6, :cond_19

    .line 1060
    const/4 v6, 0x1

    const/16 v7, 0xc8

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    goto/16 :goto_1

    .line 1061
    :cond_19
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1a

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    if-gez v6, :cond_1a

    .line 1062
    const/4 v6, 0x1

    const/16 v7, 0xc8

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    goto/16 :goto_1

    .line 1063
    :cond_1a
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsEditing:Z

    if-nez v6, :cond_2

    .line 1064
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1b

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1066
    :cond_1b
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    if-eqz v6, :cond_2

    .line 1067
    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    goto/16 :goto_1

    .line 1072
    .end local v4    # "velocity":J
    :cond_1c
    const-wide/16 v6, 0xc8

    cmp-long v6, v0, v6

    if-gez v6, :cond_2

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    if-nez v6, :cond_2

    .line 1075
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDragViewState:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 1076
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    .line 1077
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateBgVisibility()V

    .line 1078
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->clickAnim()V

    goto/16 :goto_1

    .line 1086
    .end local v0    # "div":J
    :pswitch_4
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    if-eqz v6, :cond_2

    .line 1087
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mDownPosY:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mAnimY:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    .line 1088
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-eqz v6, :cond_1d

    .line 1089
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->fling(Z)V

    goto/16 :goto_1

    .line 1091
    :cond_1d
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mTranslationY:I

    if-eqz v6, :cond_2

    .line 1092
    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    goto/16 :goto_1

    .line 1099
    :pswitch_5
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mFirstFingerDown:Z

    if-eqz v6, :cond_1e

    .line 1100
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mFirstFingerDown:Z

    .line 1102
    :cond_1e
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingInProgress:Z

    if-eqz v6, :cond_2

    .line 1103
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mSwipingX:Z

    if-eqz v6, :cond_1f

    .line 1104
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->fling(Z)V

    goto/16 :goto_1

    .line 1106
    :cond_1f
    const/4 v6, 0x0

    const/16 v7, 0x1f4

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    goto/16 :goto_1

    .line 938
    nop

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
    .line 1299
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->updateWallpaper()V

    .line 1300
    return-void
.end method

.method public setSimInfoView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1138
    if-eqz p1, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1141
    :cond_0
    return-void
.end method

.method public showSecurityView(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1132
    if-eqz p1, :cond_0

    .line 1133
    const/4 v0, 0x1

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->unlockAnim(ZI)V

    .line 1135
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1439
    return-void
.end method

.method public startChargingAnimation()V
    .locals 2

    .prologue
    .line 1273
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mPluggedIn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    if-eqz v0, :cond_1

    .line 1274
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 1276
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mIsCharged:Z

    if-eqz v0, :cond_2

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 1282
    :cond_1
    :goto_0
    return-void

    .line 1279
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->startChargeAnimation()V

    goto :goto_0
.end method

.method public stopChargingAnimation()V
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 1287
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 1289
    :cond_0
    return-void
.end method

.method protected updateBgView(Z)V
    .locals 4
    .param p1, "isBlur"    # Z

    .prologue
    .line 1535
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->updateBgView(Z)V

    .line 1536
    if-eqz p1, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1541
    :goto_0
    return-void

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mBgView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
