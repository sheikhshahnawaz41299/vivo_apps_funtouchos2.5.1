.class public Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
.super Landroid/widget/RelativeLayout;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;
    }
.end annotation


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mAlarmShowing:Z

.field private mAlarmStatus:Landroid/widget/TextView;

.field private mAmPm:Landroid/widget/TextView;

.field private mAvatarCollapsedScaleFactor:F

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryLevel:Landroid/widget/TextView;

.field private mCaptureValues:Z

.field private mCarrierLabelSim1:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

.field private mCarrierLabelSim2:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

.field private final mClipBounds:Landroid/graphics/Rect;

.field private mClock:Landroid/view/View;

.field private mClockCollapsedScaleFactor:F

.field private mClockCollapsedSize:I

.field private mClockDateContainer:Landroid/view/ViewGroup;

.field private mClockExpandedSize:I

.field private mClockMarginBottomCollapsed:I

.field private mClockMarginBottomExpanded:I

.field private mCollapsedHeight:I

.field private final mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mCurrentT:F

.field private final mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mDateCollapsed:Landroid/widget/TextView;

.field private mDateExpanded:Landroid/widget/TextView;

.field private mDateGroup:Landroid/view/View;

.field private mEmergencyCallsOnly:Landroid/widget/TextView;

.field private mExpanded:Z

.field private mExpandedHeight:I

.field private final mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

.field private mHeaderInitHeight:I

.field private mListening:Z

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field private mMultiUserCollapsedMargin:I

.field private mMultiUserExpandedMargin:I

.field private mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mMultiUserSwitchWidthCollapsed:I

.field private mMultiUserSwitchWidthExpanded:I

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mOneCarrierLabelHeight:I

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsDetailHeader:Landroid/view/View;

.field private mQsDetailHeaderProgress:Landroid/widget/ImageView;

.field private mQsDetailHeaderSwitch:Landroid/widget/Switch;

.field private mQsDetailHeaderTitle:Landroid/widget/TextView;

.field private final mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mSettingsButton:Landroid/view/View;

.field private mShowEmergencyCallsOnly:Z

.field private mShowingDetail:Z

.field private mSignalCluster:Landroid/view/View;

.field private mSignalClusterDetached:Z

.field private mSystemIcons:Landroid/widget/LinearLayout;

.field private mSystemIconsContainer:Landroid/view/ViewGroup;

.field private mSystemIconsSuperContainer:Landroid/view/View;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    .line 119
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .line 752
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # F

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateHeaderHeights()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateHeights()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private applyAlpha(Landroid/view/View;F)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    .line 635
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_2

    .line 639
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 641
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 642
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 5
    .param p1, "values"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 648
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setY(F)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 664
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_5

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_4

    .line 667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 673
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 680
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 683
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 684
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-nez v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyAlpha(Landroid/view/View;F)V

    .line 693
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_2

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleX(F)V

    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setScaleY(F)V

    .line 697
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 698
    return-void

    .line 662
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_0

    .line 670
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto/16 :goto_1

    .line 676
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_2
.end method

.method private captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V
    .locals 4
    .param p1, "target"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 600
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->timeScale:F

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->clockY:F

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateY:F

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->emergencyCallsOnlyAlpha:F

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->alarmStatusAlpha:F

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateCollapsedAlpha:F

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->dateExpandedAlpha:F

    .line 610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarScale:F

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarX:F

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->avatarY:F

    .line 613
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_3

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    .line 620
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryY:F

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryLevelAlpha:F

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getAlphaForVisibility(Landroid/view/View;)F

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsAlpha:F

    .line 623
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsTranslation:F

    .line 626
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    iput v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->signalClusterAlpha:F

    .line 627
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v0, :cond_1

    const/high16 v2, 0x42b40000    # 90.0f

    :cond_1
    iput v2, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->settingsRotation:F

    .line 628
    return-void

    .line 600
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    goto/16 :goto_0

    .line 617
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->batteryX:F

    goto :goto_1

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLeft()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    goto :goto_2
.end method

.method private getAlphaForVisibility(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 631
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadDimens()V
    .locals 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockCollapsedMargin()V

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 275
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 277
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mHeaderInitHeight:I

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mOneCarrierLabelHeight:I

    .line 281
    return-void
.end method

.method private reattachSignalCluster()V
    .locals 3

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 393
    return-void
.end method

.method private requestCaptureValues()V
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 253
    return-void
.end method

.method private setClipping(F)V
    .locals 6
    .param p1, "height"    # F

    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    float-to-int v5, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 528
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->invalidateOutline()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private startBatteryActivity()V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 567
    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 562
    return-void
.end method

.method private updateAmPmTranslation()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 437
    .local v0, "rtl":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    mul-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getScaleX()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 438
    return-void

    .line 436
    .end local v0    # "rtl":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 437
    .restart local v0    # "rtl":Z
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateAvatarScale()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 417
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 424
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAvatarCollapsedScaleFactor:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method

.method private updateClickTargets()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setClickable(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setFocusable(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 468
    return-void

    .line 467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClockCollapsedMargin()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 241
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0f0093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 242
    .local v2, "padding":I
    const v4, 0x7f0f0094

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 244
    .local v1, "largePadding":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    const v5, 0x3fa66666    # 1.3f

    invoke-static {v4, v6, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998    # 0.29999995f

    div-float v0, v4, v5

    .line 246
    .local v0, "largeFactor":F
    sub-float v4, v6, v0

    int-to-float v5, v2

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestLayout()V

    .line 248
    return-void
.end method

.method private updateClockLp()V
    .locals 3

    .prologue
    .line 471
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomExpanded:I

    .line 474
    .local v1, "marginBottom":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 475
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v2, :cond_0

    .line 476
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 477
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    :cond_0
    return-void

    .line 471
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "marginBottom":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockMarginBottomCollapsed:I

    goto :goto_0
.end method

.method private updateClockScale()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 430
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleX(F)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setScaleY(F)V

    .line 432
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAmPmTranslation()V

    .line 433
    return-void

    .line 427
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private updateHeaderHeights()V
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockDateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mOneCarrierLabelHeight:I

    .line 353
    .local v0, "carrierLabel":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabelSim1:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabelSim2:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 354
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mOneCarrierLabelHeight:I

    add-int/2addr v0, v1

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockDateContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 357
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    goto :goto_0
.end method

.method private updateHeights()V
    .locals 3

    .prologue
    .line 339
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    .line 340
    .local v0, "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 341
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v0, :cond_0

    .line 342
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 343
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_0
    return-void

    .line 339
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    goto :goto_0
.end method

.method private updateLayoutValues(F)V
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;->interpoloate(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;F)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->applyLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    goto :goto_0
.end method

.method private updateListeners()V
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    .line 414
    :goto_0
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    goto :goto_0
.end method

.method private updateMultiUserSwitch()V
    .locals 4

    .prologue
    .line 484
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v3, :cond_2

    .line 485
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserExpandedMargin:I

    .line 486
    .local v1, "marginEnd":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthExpanded:I

    .line 491
    .local v2, "width":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 492
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    if-ne v1, v3, :cond_0

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v3, v2, :cond_1

    .line 493
    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 494
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 495
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 497
    :cond_1
    return-void

    .line 488
    .end local v0    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "marginEnd":I
    .end local v2    # "width":I
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserCollapsedMargin:I

    .line 489
    .restart local v1    # "marginEnd":I
    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitchWidthCollapsed:I

    .restart local v2    # "width":I
    goto :goto_0
.end method

.method private updateSignalClusterDetachment()V
    .locals 3

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    .line 380
    .local v0, "detached":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    if-eq v0, v1, :cond_0

    .line 381
    if-eqz v0, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 387
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalClusterDetached:Z

    .line 388
    return-void

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->reattachSignalCluster()V

    goto :goto_0
.end method

.method private updateSystemIconsLayoutParams()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 396
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 397
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v1

    .line 400
    .local v1, "rule":I
    :goto_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    aget v2, v2, v3

    if-eq v1, v2, :cond_0

    .line 401
    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 402
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    :cond_0
    return-void

    .line 397
    .end local v1    # "rule":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getId()I

    move-result v1

    goto :goto_0
.end method

.method private updateVisibilities()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 362
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowingDetail:Z

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSignalClusterDetachment()V

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v2, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 376
    return-void

    :cond_2
    move v0, v2

    .line 362
    goto :goto_0

    :cond_3
    move v0, v1

    .line 363
    goto :goto_1

    :cond_4
    move v0, v2

    .line 364
    goto :goto_2

    :cond_5
    move v1, v3

    .line 375
    goto :goto_3
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 597
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    return v0
.end method

.method public getExpandedHeight()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 6
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 442
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-double v2, p1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "percentage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 547
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    if-ne p1, v1, :cond_1

    .line 548
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startSettingsActivity()V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    if-ne p1, v1, :cond_2

    .line 550
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->startBatteryActivity()V

    goto :goto_0

    .line 551
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 553
    .local v0, "showIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const v5, 0x7f0f009c

    const v4, 0x7f0f009b

    const v3, 0x7f0f0048

    const v2, 0x7f0f009e

    .line 217
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    const v1, 0x7f0f00b2

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x7f0f009d

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 224
    const v0, 0x1020016

    invoke-static {p0, v0, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 225
    const v0, 0x1020017

    invoke-static {p0, v0, v3}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 227
    const v0, 0x7f1100ee

    invoke-static {p0, v0, v5}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/view/View;II)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    const v1, 0x10403ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    .line 233
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedSize:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockExpandedSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockCollapsedScaleFactor:F

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockCollapsedMargin()V

    .line 237
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 140
    const v0, 0x7f110090

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    .line 141
    const v0, 0x7f110091

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsContainer:Landroid/view/ViewGroup;

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIconsSuperContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v0, 0x7f110105

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateGroup:Landroid/view/View;

    .line 144
    const v0, 0x7f110082

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClock:Landroid/view/View;

    .line 145
    const v0, 0x7f1100ec

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mTime:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f1100ed

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAmPm:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f11008e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 148
    const v0, 0x7f11008f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserAvatar:Landroid/widget/ImageView;

    .line 149
    const v0, 0x7f110106

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateCollapsed:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f110107

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mDateExpanded:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f110102

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSettingsButton:Landroid/view/View;

    .line 153
    const v0, 0x7f110108

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderTitle:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeader:Landroid/view/View;

    const v1, 0x1020017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderSwitch:Landroid/widget/Switch;

    .line 157
    const v0, 0x7f110109

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsDetailHeaderProgress:Landroid/widget/ImageView;

    .line 158
    const v0, 0x7f110103

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mEmergencyCallsOnly:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f110092

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryLevel:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f11008c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v0, 0x7f11013a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSignalCluster:Landroid/view/View;

    .line 163
    const v0, 0x7f110138

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 165
    const v0, 0x7f11013d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabelSim1:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .line 166
    const v0, 0x7f11013e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCarrierLabelSim2:Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .line 167
    const v0, 0x7f110104

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mClockDateContainer:Landroid/view/ViewGroup;

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->loadDimens()V

    .line 170
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 173
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 191
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 198
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 202
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 203
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    if-eqz v0, :cond_0

    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    .line 209
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCaptureValues:Z

    .line 210
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateLayoutValues(F)V

    .line 213
    :cond_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedValues:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->captureLayoutValues(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$LayoutValues;)V

    goto :goto_0
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 2
    .param p1, "nextAlarm"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 454
    if-eqz p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/keyguard/KeyguardStatusView;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mAlarmShowing:Z

    .line 458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 459
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 460
    return-void

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPowerSaveChanged()V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 285
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 289
    const v0, 0x7f11013b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/BatteryMeterView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 290
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 313
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 314
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 318
    :cond_0
    return-void

    .line 313
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpansion(F)V
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 500
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-nez v1, :cond_0

    .line 501
    const/4 p1, 0x0

    .line 503
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCurrentT:F

    .line 505
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateHeaderHeights()V

    .line 507
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 508
    .local v0, "height":F
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 509
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mCollapsedHeight:I

    int-to-float v0, v1

    .line 511
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 512
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpandedHeight:I

    int-to-float v0, v1

    .line 514
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setClipping(F)V

    .line 515
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateLayoutValues(F)V

    .line 516
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listening"    # Z

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    if-ne p1, v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mListening:Z

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateListeners()V

    goto :goto_0
.end method

.method public setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 0
    .param p1, "nextAlarmController"    # Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 294
    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 2
    .param p1, "qsp"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mQsPanelCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 575
    return-void
.end method

.method public setShowEmergencyCallsOnly(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 583
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 584
    .local v0, "changed":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 585
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mShowEmergencyCallsOnly:Z

    .line 586
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->mExpanded:Z

    if-eqz v1, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateEverything()V

    .line 588
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 591
    :cond_0
    return-void

    .line 583
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 1
    .param p1, "userInfoController"    # Lcom/android/systemui/statusbar/policy/UserInfoController;

    .prologue
    .line 537
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    .line 543
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    return v0
.end method

.method public updateEverything()V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateHeaderHeights()V

    .line 324
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateHeights()V

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateVisibilities()V

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateSystemIconsLayoutParams()V

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClickTargets()V

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateMultiUserSwitch()V

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateClockScale()V

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->updateAvatarScale()V

    .line 335
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->requestCaptureValues()V

    .line 336
    return-void
.end method
