.class abstract Lcom/android/keyguard/VivoBaseView;
.super Landroid/widget/RelativeLayout;
.source "VivoBaseView.java"


# static fields
.field private static final ACTION_VISITMODE_SWITCH:Ljava/lang/String; = "android.settings.VisitMode.action.TURN_ON"

.field public static final FINGERNUM:Ljava/lang/String; = "secure_finger_print_record_num"

.field public static final FINGERVISITORMODE:Ljava/lang/String; = "secure_finger_print_visit_mode"

.field private static final TAG:Ljava/lang/String; = "VivoBaseView"

.field public static mCurPadNormal:Z

.field public static mPadZoomingOut:Z


# instance fields
.field public final DRAG_TO_LEFT:I

.field public final DRAG_TO_RIGHT:I

.field private final EYECOUNTFIBIDEN:I

.field public MINIFICATION:F

.field private VIVO_ONEHAND_BTN_WIDTH:I

.field private VIVO_PASSWORD_HEIGHT:I

.field private VIVO_PASSWORD_WIDTH:I

.field private VIVO_PATTERN_HEIGHT:I

.field private VIVO_PATTERN_WIDTH:I

.field private VIVO_PIN_HEIGHT:I

.field private VIVO_PIN_WIDTH:I

.field private X_HIT_MIN:I

.field private mAniSet:Landroid/animation/AnimatorSet;

.field private mAutoUp:Z

.field private mBFinger:Z

.field public mDensity:F

.field private mDoubleClickHelper:Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;

.field public mDragDirection:I

.field private mEyeFailedCount:I

.field private mFingerObserver:Landroid/database/ContentObserver;

.field public mLastX:I

.field public mLastY:I

.field private mMaxHeight:F

.field public mScaleX:F

.field public mScaleY:F

.field private mShowScreen:Z

.field private mStartEye:Z

.field private needMoveView:Z

.field private oldRawY:F

.field private touchMoveView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/VivoBaseView;->mCurPadNormal:Z

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$integer;->vivo_minification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    .line 57
    iput v4, p0, Lcom/android/keyguard/VivoBaseView;->DRAG_TO_LEFT:I

    .line 58
    iput v3, p0, Lcom/android/keyguard/VivoBaseView;->DRAG_TO_RIGHT:I

    .line 80
    iput-boolean v2, p0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/keyguard/VivoBaseView;->touchMoveView:Z

    .line 87
    iput-boolean v3, p0, Lcom/android/keyguard/VivoBaseView;->mShowScreen:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/keyguard/VivoBaseView;->mStartEye:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/keyguard/VivoBaseView;->mAutoUp:Z

    .line 90
    iput v2, p0, Lcom/android/keyguard/VivoBaseView;->mEyeFailedCount:I

    .line 91
    iput v4, p0, Lcom/android/keyguard/VivoBaseView;->EYECOUNTFIBIDEN:I

    .line 899
    new-instance v0, Lcom/android/keyguard/VivoBaseView$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/VivoBaseView$6;-><init>(Lcom/android/keyguard/VivoBaseView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mFingerObserver:Landroid/database/ContentObserver;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$integer;->vivo_minification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    .line 57
    iput v4, p0, Lcom/android/keyguard/VivoBaseView;->DRAG_TO_LEFT:I

    .line 58
    iput v3, p0, Lcom/android/keyguard/VivoBaseView;->DRAG_TO_RIGHT:I

    .line 80
    iput-boolean v2, p0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/keyguard/VivoBaseView;->touchMoveView:Z

    .line 87
    iput-boolean v3, p0, Lcom/android/keyguard/VivoBaseView;->mShowScreen:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/keyguard/VivoBaseView;->mStartEye:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/keyguard/VivoBaseView;->mAutoUp:Z

    .line 90
    iput v2, p0, Lcom/android/keyguard/VivoBaseView;->mEyeFailedCount:I

    .line 91
    iput v4, p0, Lcom/android/keyguard/VivoBaseView;->EYECOUNTFIBIDEN:I

    .line 899
    new-instance v0, Lcom/android/keyguard/VivoBaseView$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/VivoBaseView$6;-><init>(Lcom/android/keyguard/VivoBaseView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mFingerObserver:Landroid/database/ContentObserver;

    .line 104
    invoke-direct {p0, p3}, Lcom/android/keyguard/VivoBaseView;->init(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/VivoBaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoBaseView;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/keyguard/VivoBaseView;->mShowScreen:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/VivoBaseView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoBaseView;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/keyguard/VivoBaseView;->mShowScreen:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/VivoBaseView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoBaseView;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/keyguard/VivoBaseView;->mMaxHeight:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/VivoBaseView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoBaseView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/VivoBaseView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoBaseView;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getClosedGesture()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 730
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "closedGesture"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasOneHand()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 803
    const-string v3, "persist.vivo.phone.screen_size"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "screenSizeStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 806
    const/4 v2, 0x1

    .line 812
    :cond_0
    :goto_0
    return v2

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v3, "VivoBaseView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException when get screen size"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private init(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3c23d70a    # 0.01f

    .line 109
    const-string v0, "VivoBaseView"

    const-string v1, " init"

    invoke-static {v0, v1}, Lcom/android/keyguard/vivo/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->vivo_pin_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->VIVO_PIN_WIDTH:I

    .line 111
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->vivo_pin_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->VIVO_PIN_HEIGHT:I

    .line 112
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->vivo_pattern_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->VIVO_PATTERN_WIDTH:I

    .line 113
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->vivo_pattern_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->VIVO_PATTERN_HEIGHT:I

    .line 114
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->vivo_password_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->VIVO_PASSWORD_WIDTH:I

    .line 115
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->vivo_password_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->VIVO_PASSWORD_HEIGHT:I

    .line 120
    iput v3, p0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    .line 121
    iput v3, p0, Lcom/android/keyguard/VivoBaseView;->mScaleY:F

    .line 122
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->isFingerprintAuthAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/VivoBaseView;->mBFinger:Z

    .line 123
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mAniSet:Landroid/animation/AnimatorSet;

    .line 124
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->mDensity:F

    .line 125
    iget v0, p0, Lcom/android/keyguard/VivoBaseView;->mDensity:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 126
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->X_HIT_MIN:I

    .line 130
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->mDragDirection:I

    .line 131
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->mMaxHeight:F

    .line 133
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$integer;->vivo_password_minification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    .line 135
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->resume_password_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->VIVO_ONEHAND_BTN_WIDTH:I

    .line 140
    :goto_1
    new-instance v0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;

    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mDoubleClickHelper:Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;

    .line 142
    return-void

    .line 128
    :cond_0
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->X_HIT_MIN:I

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$integer;->vivo_minification:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    .line 138
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->resume_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->VIVO_ONEHAND_BTN_WIDTH:I

    goto :goto_1
.end method

.method private isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 761
    const/4 v1, 0x0

    .line 762
    .local v1, "isExist":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 764
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    const/4 v1, 0x1

    .line 769
    :goto_0
    return v1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private moveYAnim(Landroid/view/View;FFLcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 6
    .param p1, "indicator"    # Landroid/view/View;
    .param p2, "starty"    # F
    .param p3, "endy"    # F
    .param p4, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 278
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p2, v2, v4

    aput p3, v2, v5

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 279
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 280
    new-instance v2, Lcom/android/keyguard/VivoBaseView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/VivoBaseView$2;-><init>(Lcom/android/keyguard/VivoBaseView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    new-instance v2, Lcom/android/keyguard/VivoBaseView$3;

    invoke-direct {v2, p0, p1, p4}, Lcom/android/keyguard/VivoBaseView$3;-><init>(Lcom/android/keyguard/VivoBaseView;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 299
    new-instance v2, Lcom/android/keyguard/VivoBaseView$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/VivoBaseView$4;-><init>(Lcom/android/keyguard/VivoBaseView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 312
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 313
    .local v1, "animatorSetS":Landroid/animation/AnimatorSet;
    new-array v2, v5, [Landroid/animation/Animator;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 314
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 315
    return-void
.end method

.method private setOffClosedGesture()V
    .locals 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "closedGesture"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 735
    return-void
.end method

.method private showGuideDialog()V
    .locals 5

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$layout;->vivo_onehandguide:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 786
    .local v1, "guideView":Landroid/view/View;
    new-instance v0, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$style;->Transparent:I

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 787
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 789
    iget-object v2, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 790
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 792
    :cond_0
    new-instance v2, Lcom/android/keyguard/VivoBaseView$5;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/VivoBaseView$5;-><init>(Lcom/android/keyguard/VivoBaseView;Landroid/app/Dialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 800
    return-void
.end method


# virtual methods
.method public animatorIsRuning()Z
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    return v0
.end method

.method public clickResume(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lrBtn"    # Landroid/view/View;
    .param p3, "ldBtn"    # Landroid/view/View;
    .param p4, "rrBtn"    # Landroid/view/View;
    .param p5, "rdBtn"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x2

    .line 250
    const-string v6, "x"

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 251
    .local v4, "tranX":Landroid/animation/ObjectAnimator;
    const-string v6, "y"

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 252
    .local v5, "tranY":Landroid/animation/ObjectAnimator;
    const-string v6, "scaleX"

    new-array v7, v8, [F

    fill-array-data v7, :array_2

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 253
    .local v1, "objScaleX":Landroid/animation/ObjectAnimator;
    const-string v6, "scaleY"

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 255
    .local v2, "objScaleY":Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 256
    .local v0, "aniSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 257
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 258
    .local v3, "tranSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 259
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 261
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 263
    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 264
    invoke-virtual {p3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {p4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const-string v6, "ro.product.model.bbk"

    const-string v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1408"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/VivoBaseView;->getClosedGesture()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/android/keyguard/VivoBaseView;->setOffClosedGesture()V

    .line 270
    invoke-direct {p0}, Lcom/android/keyguard/VivoBaseView;->showGuideDialog()V

    .line 272
    :cond_0
    return-void

    .line 250
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 251
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 252
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 253
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getAnin()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mAniSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public getAutoStatus()Z
    .locals 3

    .prologue
    .line 869
    const-string v0, "VivoBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoUp == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/VivoBaseView;->mAutoUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-boolean v0, p0, Lcom/android/keyguard/VivoBaseView;->mAutoUp:Z

    return v0
.end method

.method public getEyeStatus()Z
    .locals 1

    .prologue
    .line 834
    iget-boolean v0, p0, Lcom/android/keyguard/VivoBaseView;->mStartEye:Z

    return v0
.end method

.method public getFinger()Z
    .locals 1

    .prologue
    .line 773
    iget-boolean v0, p0, Lcom/android/keyguard/VivoBaseView;->mBFinger:Z

    return v0
.end method

.method public getGesture()I
    .locals 4

    .prologue
    .line 714
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "handGesture"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 715
    .local v0, "gesture":I
    const-string v1, "VivoBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGesture gesture = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    if-nez v0, :cond_0

    .line 717
    const/4 v0, 0x2

    .line 718
    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoBaseView;->setGesture(I)V

    .line 720
    :cond_0
    return v0
.end method

.method public getOnehandStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 661
    invoke-direct {p0}, Lcom/android/keyguard/VivoBaseView;->hasOneHand()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 662
    const-string v2, "ro.product.model.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1408"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 663
    iget-object v2, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 666
    goto :goto_0

    .line 669
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "onehand"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    .line 672
    goto :goto_0

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "onehand"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v1

    .line 677
    goto :goto_0
.end method

.method public getPinStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 689
    invoke-direct {p0}, Lcom/android/keyguard/VivoBaseView;->hasOneHand()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 690
    const-string v2, "ro.product.model.bbk"

    const-string v3, "unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1408"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 691
    iget-object v2, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Pin_Lock"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 705
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 694
    goto :goto_0

    .line 697
    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Pin_Lock"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    .line 700
    goto :goto_0

    .line 704
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "Pin_Lock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v1

    .line 705
    goto :goto_0
.end method

.method public hideView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 857
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 858
    return-void
.end method

.method public isFingerprintAuthAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 874
    iget-object v2, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "finger_unlock_open"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 877
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lrBtn"    # Landroid/view/View;
    .param p3, "ldBtn"    # Landroid/view/View;
    .param p4, "rrBtn"    # Landroid/view/View;
    .param p5, "rdBtn"    # Landroid/view/View;
    .param p6, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .param p7, "Duration"    # I

    .prologue
    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearAnimation()V

    .line 151
    const/4 v11, 0x0

    .line 152
    .local v11, "tranX":Landroid/animation/ObjectAnimator;
    const/16 v16, 0x0

    .line 153
    .local v16, "tranY":Landroid/animation/ObjectAnimator;
    const/4 v14, 0x0

    .line 154
    .local v14, "tranXResumeLeft":Landroid/animation/ObjectAnimator;
    const/4 v12, 0x0

    .line 155
    .local v12, "tranXDirectLeft":Landroid/animation/ObjectAnimator;
    const/4 v15, 0x0

    .line 156
    .local v15, "tranXResumeRight":Landroid/animation/ObjectAnimator;
    const/4 v13, 0x0

    .line 158
    .local v13, "tranXDirectRight":Landroid/animation/ObjectAnimator;
    const-string v2, "scaleX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    aput v5, v3, v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 159
    .local v9, "objScaleX":Landroid/animation/ObjectAnimator;
    const-string v2, "scaleY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    aput v5, v3, v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 161
    .local v10, "objScaleY":Landroid/animation/ObjectAnimator;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_0

    .line 162
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PATTERN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PATTERN_WIDTH:I

    move/from16 v17, v0

    .line 173
    .local v17, "width":I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 174
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 175
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/VivoBaseView;->mDragDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 179
    const-string v2, "VivoBaseView"

    const-string v3, " MoveLefOrRight  DRAG_TO_LEFT"

    invoke-static {v2, v3}, Lcom/android/keyguard/vivo/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 182
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_2

    .line 183
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->mDensity:F

    const/high16 v6, 0x42580000    # 54.0f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 188
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 189
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_ONEHAND_BTN_WIDTH:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 192
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_ONEHAND_BTN_WIDTH:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 193
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    move/from16 v0, v17

    int-to-float v5, v0

    aput v5, v3, v4

    move-object/from16 v0, p4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 194
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    move/from16 v0, v17

    int-to-float v5, v0

    aput v5, v3, v4

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 217
    :goto_2
    const-string v2, "y"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v5

    aput v5, v3, v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 218
    new-instance v2, Lcom/android/keyguard/VivoBaseView$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/keyguard/VivoBaseView$1;-><init>(Lcom/android/keyguard/VivoBaseView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v11, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 240
    .local v8, "aniSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/keyguard/VivoBaseView;->mAniSet:Landroid/animation/AnimatorSet;

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/VivoBaseView;->mAniSet:Landroid/animation/AnimatorSet;

    const/16 v3, 0x8

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v11, v3, v4

    const/4 v4, 0x3

    aput-object v16, v3, v4

    const/4 v4, 0x4

    aput-object v14, v3, v4

    const/4 v4, 0x5

    aput-object v12, v3, v4

    const/4 v4, 0x6

    aput-object v15, v3, v4

    const/4 v4, 0x7

    aput-object v13, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/VivoBaseView;->mAniSet:Landroid/animation/AnimatorSet;

    move/from16 v0, p7

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 243
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/VivoBaseView;->mAniSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 244
    return-void

    .line 164
    .end local v8    # "aniSet":Landroid/animation/AnimatorSet;
    .end local v17    # "width":I
    :cond_0
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_1

    .line 165
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PIN_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PIN_WIDTH:I

    move/from16 v17, v0

    .restart local v17    # "width":I
    goto/16 :goto_0

    .line 168
    .end local v17    # "width":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PASSWORD_HEIGHT:I

    int-to-float v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotY(F)V

    .line 169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PASSWORD_WIDTH:I

    move/from16 v17, v0

    .restart local v17    # "width":I
    goto/16 :goto_0

    .line 185
    :cond_2
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->mDensity:F

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    goto/16 :goto_1

    .line 196
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/keyguard/VivoBaseView;->mDragDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 197
    const-string v2, "VivoBaseView"

    const-string v3, " MoveLefOrRight  DRAG_TO_RIGHT"

    invoke-static {v2, v3}, Lcom/android/keyguard/vivo/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 200
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_4

    .line 201
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->mDensity:F

    neg-float v5, v5

    const/high16 v6, 0x42580000    # 54.0f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 206
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 207
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_ONEHAND_BTN_WIDTH:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 210
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_ONEHAND_BTN_WIDTH:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v3, v4

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 211
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    move/from16 v0, v17

    int-to-float v5, v0

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_ONEHAND_BTN_WIDTH:I

    sub-int v5, v17, v5

    int-to-float v5, v5

    aput v5, v3, v4

    move-object/from16 v0, p4

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 212
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    move/from16 v0, v17

    int-to-float v5, v0

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_ONEHAND_BTN_WIDTH:I

    sub-int v5, v17, v5

    int-to-float v5, v5

    aput v5, v3, v4

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    goto/16 :goto_2

    .line 203
    :cond_4
    const-string v2, "x"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/VivoBaseView;->mDensity:F

    neg-float v5, v5

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v5, v6

    aput v5, v3, v4

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    goto/16 :goto_3

    .line 215
    :cond_5
    const-string v2, "VivoBaseView"

    const-string v3, " ******* ACTION_UP mDragDirection ERROR *******"

    invoke-static {v2, v3}, Lcom/android/keyguard/vivo/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 882
    const-string v0, "VivoBaseView"

    const-string v1, "onAttachedToWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vivo_secure_fingerprint_iv"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/VivoBaseView;->mFingerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 884
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 885
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 889
    const-string v0, "VivoBaseView"

    const-string v1, "onDetachedFromWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView;->mFingerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 892
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mDoubleClickHelper:Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mDoubleClickHelper:Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->unRegisterContentObserver()V

    .line 896
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 897
    return-void
.end method

.method public onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "lrBtn"    # Landroid/widget/Button;
    .param p4, "ldBtn"    # Landroid/widget/Button;
    .param p5, "rrBtn"    # Landroid/widget/Button;
    .param p6, "rdBtn"    # Landroid/widget/Button;
    .param p7, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;
    .param p8, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 328
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p8

    if-ne v0, v3, :cond_1

    .line 329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PATTERN_WIDTH:I

    move/from16 v18, v0

    .line 344
    .local v18, "width":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/VivoBaseView;->mDoubleClickHelper:Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->DoubleClick(Landroid/view/MotionEvent;)V

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->animatorIsRuning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    const-string v3, "VivoBaseView"

    const-string v4, "animatorIsRuning "

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_0
    :goto_1
    return-void

    .line 330
    .end local v18    # "width":I
    :cond_1
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p8

    if-ne v0, v3, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PIN_WIDTH:I

    move/from16 v18, v0

    .restart local v18    # "width":I
    goto :goto_0

    .line 333
    .end local v18    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PASSWORD_WIDTH:I

    move/from16 v18, v0

    .restart local v18    # "width":I
    goto :goto_0

    .line 349
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 351
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getOnehandStatus()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 352
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 353
    .local v16, "patterRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/VivoBaseView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getBottom()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    const/4 v13, 0x1

    .line 358
    .local v13, "mayZoom":Z
    :goto_2
    if-eqz v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->X_HIT_MIN:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_6

    .line 359
    const-string v3, "VivoBaseView"

    const-string v4, "ACTION_DOWN DRAG_TO_RIGHT "

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mCurPadNormal:Z

    if-eqz v3, :cond_4

    .line 361
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/VivoBaseView;->onZoomPrepared(ILandroid/view/MotionEvent;)V

    .line 375
    .end local v13    # "mayZoom":Z
    .end local v16    # "patterRect":Landroid/graphics/Rect;
    :cond_4
    :goto_3
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    if-nez v3, :cond_0

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->oldRawY:F

    .line 378
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 379
    .restart local v16    # "patterRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/VivoBaseView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 382
    const-string v3, "VivoBaseView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch ACTION_DOWN patterRect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUtils;->getNatureType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getBottom()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    .line 385
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    .line 389
    :goto_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->touchMoveView:Z

    goto/16 :goto_1

    .line 356
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 363
    .restart local v13    # "mayZoom":Z
    :cond_6
    if-eqz v13, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->X_HIT_MIN:I

    sub-int v4, v18, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_7

    .line 364
    const-string v3, "VivoBaseView"

    const-string v4, "ACTION_DOWN DRAG_TO_LEFT "

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mCurPadNormal:Z

    if-eqz v3, :cond_4

    .line 366
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/VivoBaseView;->onZoomPrepared(ILandroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 369
    :cond_7
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    goto/16 :goto_3

    .line 372
    .end local v13    # "mayZoom":Z
    .end local v16    # "patterRect":Landroid/graphics/Rect;
    :cond_8
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    goto/16 :goto_3

    .line 387
    .restart local v16    # "patterRect":Landroid/graphics/Rect;
    :cond_9
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    goto :goto_4

    .line 396
    .end local v16    # "patterRect":Landroid/graphics/Rect;
    :pswitch_1
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    if-eqz v3, :cond_b

    .line 397
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->mLastX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, v18

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    .line 399
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 400
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_1

    .line 402
    :cond_a
    const/16 v10, 0x12c

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v3 .. v10}, Lcom/android/keyguard/VivoBaseView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    goto/16 :goto_1

    .line 408
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->touchMoveView:Z

    if-eqz v3, :cond_0

    .line 409
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->mShowScreen:Z

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getTranslationY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->mMaxHeight:F

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/keyguard/VivoBaseView;->moveYAnim(Landroid/view/View;FFLcom/android/keyguard/KeyguardSecurityCallback;)V

    goto/16 :goto_1

    .line 426
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->mLastX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 427
    .local v11, "absDiffX":I
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    if-eqz v3, :cond_f

    .line 428
    const/16 v3, 0xa

    if-le v11, v3, :cond_0

    .line 429
    sub-int v3, v18, v11

    int-to-float v3, v3

    move/from16 v0, v18

    int-to-float v4, v0

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    .line 430
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    .line 431
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleY:F

    .line 432
    const/16 v17, 0x0

    .line 433
    .local v17, "pivotXValue":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mDragDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 434
    const/16 v17, 0x0

    .line 440
    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 441
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 442
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 443
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_1

    .line 435
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mDragDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v17, v0

    goto :goto_5

    .line 438
    :cond_e
    const-string v3, "VivoBaseView"

    const-string v4, " ******* mDragDirection ERROR *******"

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 446
    .end local v17    # "pivotXValue":F
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    if-le v11, v3, :cond_0

    .line 447
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->oldRawY:F

    sub-float v12, v3, v4

    .line 448
    .local v12, "diffY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getTranslationY()F

    move-result v15

    .line 449
    .local v15, "oldY":F
    add-float v14, v12, v15

    .line 450
    .local v14, "newY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->oldRawY:F

    .line 452
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 453
    .restart local v16    # "patterRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 454
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/VivoBaseView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 458
    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mMaxHeight:F

    cmpg-float v3, v14, v3

    if-gez v3, :cond_0

    .line 459
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/keyguard/VivoBaseView;->setTranslationY(F)V

    .line 460
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->touchMoveView:Z

    goto/16 :goto_1

    .line 469
    .end local v11    # "absDiffX":I
    .end local v12    # "diffY":F
    .end local v14    # "newY":F
    .end local v15    # "oldY":F
    .end local v16    # "patterRect":Landroid/graphics/Rect;
    :pswitch_3
    const-string v3, "VivoBaseView"

    const-string v4, "onTouch ACTION_CANCEL"

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 471
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 472
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    if-eqz v3, :cond_0

    .line 473
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    goto/16 :goto_1

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 20
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;
    .param p3, "lrBtn"    # Landroid/widget/ImageButton;
    .param p4, "ldBtn"    # Landroid/widget/ImageButton;
    .param p5, "rrBtn"    # Landroid/widget/ImageButton;
    .param p6, "rdBtn"    # Landroid/widget/ImageButton;
    .param p7, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;
    .param p8, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 491
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p8

    if-ne v0, v3, :cond_2

    .line 492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PATTERN_WIDTH:I

    move/from16 v19, v0

    .line 506
    .local v19, "width":I
    :goto_0
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p8

    if-ne v0, v3, :cond_4

    .line 507
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 508
    .local v16, "passwordRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 509
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/VivoBaseView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getBottom()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/VivoBaseView;->mDoubleClickHelper:Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->DoubleClick(Landroid/view/MotionEvent;)V

    .line 516
    .end local v16    # "passwordRect":Landroid/graphics/Rect;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->animatorIsRuning()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 652
    :cond_1
    :goto_2
    return-void

    .line 493
    .end local v19    # "width":I
    :cond_2
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, p8

    if-ne v0, v3, :cond_3

    .line 494
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PIN_WIDTH:I

    move/from16 v19, v0

    .restart local v19    # "width":I
    goto :goto_0

    .line 496
    .end local v19    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/VivoBaseView;->VIVO_PASSWORD_WIDTH:I

    move/from16 v19, v0

    .restart local v19    # "width":I
    goto :goto_0

    .line 514
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/VivoBaseView;->mDoubleClickHelper:Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->DoubleClick(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 519
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 521
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getOnehandStatus()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 522
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 523
    .local v17, "patterRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/VivoBaseView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getBottom()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    const/4 v13, 0x1

    .line 528
    .local v13, "mayZoom":Z
    :goto_3
    if-eqz v13, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->X_HIT_MIN:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8

    .line 529
    const-string v3, "VivoBaseView"

    const-string v4, "ACTION_DOWN DRAG_TO_RIGHT "

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mCurPadNormal:Z

    if-eqz v3, :cond_6

    .line 531
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/VivoBaseView;->onZoomPrepared(ILandroid/view/MotionEvent;)V

    .line 545
    .end local v13    # "mayZoom":Z
    .end local v17    # "patterRect":Landroid/graphics/Rect;
    :cond_6
    :goto_4
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    if-nez v3, :cond_1

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->oldRawY:F

    .line 548
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 549
    .restart local v17    # "patterRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 550
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/VivoBaseView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 552
    const-string v3, "VivoBaseView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouch ACTION_DOWN patterRect:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUtils;->getNatureType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, v17

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getBottom()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    .line 555
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    .line 559
    :goto_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->touchMoveView:Z

    goto/16 :goto_2

    .line 526
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 533
    .restart local v13    # "mayZoom":Z
    :cond_8
    if-eqz v13, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->X_HIT_MIN:I

    sub-int v4, v19, v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_9

    .line 534
    const-string v3, "VivoBaseView"

    const-string v4, "ACTION_DOWN DRAG_TO_LEFT "

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mCurPadNormal:Z

    if-eqz v3, :cond_6

    .line 536
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/VivoBaseView;->onZoomPrepared(ILandroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 539
    :cond_9
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    goto/16 :goto_4

    .line 542
    .end local v13    # "mayZoom":Z
    .end local v17    # "patterRect":Landroid/graphics/Rect;
    :cond_a
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    goto/16 :goto_4

    .line 557
    .restart local v17    # "patterRect":Landroid/graphics/Rect;
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    goto :goto_5

    .line 566
    .end local v17    # "patterRect":Landroid/graphics/Rect;
    :pswitch_1
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    if-eqz v3, :cond_d

    .line 567
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->mLastX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    move/from16 v0, v19

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_c

    .line 569
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 570
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_2

    .line 572
    :cond_c
    const/16 v10, 0x12c

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v3 .. v10}, Lcom/android/keyguard/VivoBaseView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    goto/16 :goto_2

    .line 578
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->touchMoveView:Z

    if-eqz v3, :cond_1

    .line 579
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->mShowScreen:Z

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getTranslationY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->mMaxHeight:F

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/keyguard/VivoBaseView;->moveYAnim(Landroid/view/View;FFLcom/android/keyguard/KeyguardSecurityCallback;)V

    goto/16 :goto_2

    .line 596
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->mLastX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    .line 597
    .local v11, "absDiffX":I
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    if-eqz v3, :cond_11

    .line 598
    const/16 v3, 0xa

    if-le v11, v3, :cond_1

    .line 599
    sub-int v3, v19, v11

    int-to-float v3, v3

    move/from16 v0, v19

    int-to-float v4, v0

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    .line 600
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->MINIFICATION:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    .line 601
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleY:F

    .line 602
    const/16 v18, 0x0

    .line 603
    .local v18, "pivotXValue":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mDragDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    .line 604
    const/16 v18, 0x0

    .line 610
    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    .line 612
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 613
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mScaleY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_2

    .line 605
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mDragDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v0, v3

    move/from16 v18, v0

    goto :goto_6

    .line 608
    :cond_10
    const-string v3, "VivoBaseView"

    const-string v4, " ******* mDragDirection ERROR *******"

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 616
    .end local v18    # "pivotXValue":F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->needMoveView:Z

    if-eqz v3, :cond_1

    const/16 v3, 0xa

    if-le v11, v3, :cond_1

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/keyguard/VivoBaseView;->oldRawY:F

    sub-float v12, v3, v4

    .line 618
    .local v12, "diffY":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getTranslationY()F

    move-result v15

    .line 619
    .local v15, "oldY":F
    add-float v14, v12, v15

    .line 620
    .local v14, "newY":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/keyguard/VivoBaseView;->oldRawY:F

    .line 622
    new-instance v17, Landroid/graphics/Rect;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Rect;-><init>()V

    .line 623
    .restart local v17    # "patterRect":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/VivoBaseView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 628
    const/4 v3, 0x0

    cmpl-float v3, v14, v3

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/keyguard/VivoBaseView;->mMaxHeight:F

    cmpg-float v3, v14, v3

    if-gez v3, :cond_1

    .line 629
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/keyguard/VivoBaseView;->setTranslationY(F)V

    .line 630
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/keyguard/VivoBaseView;->touchMoveView:Z

    goto/16 :goto_2

    .line 639
    .end local v11    # "absDiffX":I
    .end local v12    # "diffY":F
    .end local v14    # "newY":F
    .end local v15    # "oldY":F
    .end local v17    # "patterRect":Landroid/graphics/Rect;
    :pswitch_3
    const-string v3, "VivoBaseView"

    const-string v4, "onTouch ACTION_CANCEL"

    invoke-static {v3, v4}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/VivoBaseView;->getPinStatus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 643
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 644
    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 645
    sget-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    if-eqz v3, :cond_1

    .line 646
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    goto/16 :goto_2

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 918
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 919
    const-string v1, "VivoBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged hasWindowFocus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    if-eqz p1, :cond_0

    .line 922
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityModel;

    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    .line 923
    .local v0, "mSecurityModel":Lcom/android/keyguard/KeyguardSecurityModel;
    const-string v1, "VivoBaseView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged mSecurityModel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_1

    .line 931
    .end local v0    # "mSecurityModel":Lcom/android/keyguard/KeyguardSecurityModel;
    :cond_0
    :goto_0
    return-void

    .line 927
    .restart local v0    # "mSecurityModel":Lcom/android/keyguard/KeyguardSecurityModel;
    :cond_1
    const-string v1, "VivoBaseView"

    const-string v2, "onWindowFocusChanged FINGER_SIMPINPUK  = enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_simpinpuk"

    const-string v3, "enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onZoomPrepared(ILandroid/view/MotionEvent;)V
    .locals 4
    .param p1, "direciton"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 752
    const-string v0, "VivoBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoomPrepared  direciton = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/VivoBaseView;->mPadZoomingOut:Z

    .line 754
    iput p1, p0, Lcom/android/keyguard/VivoBaseView;->mDragDirection:I

    .line 755
    iput v3, p0, Lcom/android/keyguard/VivoBaseView;->mScaleX:F

    .line 756
    iput v3, p0, Lcom/android/keyguard/VivoBaseView;->mScaleY:F

    .line 757
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->mLastX:I

    .line 758
    return-void
.end method

.method public setAutoStatus(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    const/4 v0, 0x0

    .line 861
    if-eqz p1, :cond_0

    .line 862
    iput-boolean v0, p0, Lcom/android/keyguard/VivoBaseView;->mStartEye:Z

    .line 863
    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->mEyeFailedCount:I

    .line 865
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/VivoBaseView;->mAutoUp:Z

    .line 866
    return-void
.end method

.method public setEyeStatus(Z)V
    .locals 4
    .param p1, "flag"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 838
    if-nez p1, :cond_1

    .line 839
    iget v0, p0, Lcom/android/keyguard/VivoBaseView;->mEyeFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/VivoBaseView;->mEyeFailedCount:I

    .line 840
    iget v0, p0, Lcom/android/keyguard/VivoBaseView;->mEyeFailedCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 841
    iput-boolean v2, p0, Lcom/android/keyguard/VivoBaseView;->mStartEye:Z

    .line 842
    invoke-virtual {p0, v3}, Lcom/android/keyguard/VivoBaseView;->setAutoStatus(Z)V

    .line 849
    :cond_0
    :goto_0
    const-string v0, "VivoBaseView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEyeFailedCount == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/VivoBaseView;->mEyeFailedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    return-void

    .line 845
    :cond_1
    iput v2, p0, Lcom/android/keyguard/VivoBaseView;->mEyeFailedCount:I

    .line 846
    iput-boolean v3, p0, Lcom/android/keyguard/VivoBaseView;->mStartEye:Z

    .line 847
    invoke-virtual {p0, v2}, Lcom/android/keyguard/VivoBaseView;->setAutoStatus(Z)V

    goto :goto_0
.end method

.method public setGesture(I)V
    .locals 2
    .param p1, "Direction"    # I

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "handGesture"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 727
    return-void
.end method

.method public setPinStatus(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "Pin_Lock"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 711
    return-void

    .line 710
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract showSecurity(Ljava/lang/String;)V
.end method

.method public showView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 853
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 854
    return-void
.end method

.method public startVerifyEye()V
    .locals 3

    .prologue
    .line 824
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 825
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "VivoBaseView"

    const-string v2, "startActivity --VerifyCaptureActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const-string v1, "vivo.intent.vivoeye.verify.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const-string v1, "com.vivo.eye"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v1, "startFrom"

    const-string v2, "screenLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-virtual {p0}, Lcom/android/keyguard/VivoBaseView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 830
    return-void
.end method

.method public vibrate()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 738
    const/4 v1, 0x0

    .line 739
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "mAudioManager":Landroid/media/AudioManager;
    check-cast v1, Landroid/media/AudioManager;

    .line 740
    .restart local v1    # "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 742
    .local v0, "callVibrateSetting":I
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 743
    .local v2, "vibrateSetting":Z
    :cond_0
    const-string v4, "VivoBaseView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vibrate vibrateSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    if-eqz v2, :cond_1

    .line 745
    const-string v4, "VivoBaseView"

    const-string v5, "vibrate 200L "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget-object v4, p0, Lcom/android/keyguard/VivoBaseView;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 747
    .local v3, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 749
    .end local v3    # "vibrator":Landroid/os/Vibrator;
    :cond_1
    return-void
.end method
