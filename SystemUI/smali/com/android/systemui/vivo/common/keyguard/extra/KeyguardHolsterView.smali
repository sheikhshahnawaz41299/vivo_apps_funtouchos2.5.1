.class public Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "KeyguardHolsterView.java"


# static fields
.field private static final ACTION_HALLOBSERVER_INVALID:Ljava/lang/String; = "com.android.service.hallobserver.invalid"

.field private static final DEBUG:Z = true

.field private static final MSG_UPDATE_MSG_CALL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardHolsterView"

.field private static final generateViewType_incall:I = 0x1

.field private static final generateViewType_msg:I


# instance fields
.field private UNLOCK_DISTANCE:I

.field private mCallNum:I

.field private mCanUnlock:Z

.field private mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

.field private mContext:Landroid/content/Context;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateTextView:Landroid/widget/TextView;

.field private mDownPosX:I

.field private mDownPosY:I

.field private mHandler:Landroid/os/Handler;

.field private mIncallTextView:Landroid/widget/TextView;

.field private mMsgNum:I

.field private mMsgTextView:Landroid/widget/TextView;

.field private mTimeDateViews:Landroid/widget/LinearLayout;

.field private mTimeDateViewsLayoutType:I

.field private mUnlockTextView:Landroid/widget/TextView;

.field private mUnreadIncallViews:Landroid/widget/RelativeLayout;

.field private mUnreadMsgViews:Landroid/widget/RelativeLayout;

.field private mWeekFormatString:Ljava/lang/String;

.field private mWeekTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    .line 64
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgNum:I

    .line 65
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCallNum:I

    .line 66
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViewsLayoutType:I

    .line 67
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViews:Landroid/widget/LinearLayout;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDateTextView:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mWeekTextView:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgTextView:Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mIncallTextView:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    .line 75
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosX:I

    .line 76
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosY:I

    .line 77
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCanUnlock:Z

    .line 79
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->UNLOCK_DISTANCE:I

    .line 249
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    .line 64
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgNum:I

    .line 65
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCallNum:I

    .line 66
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViewsLayoutType:I

    .line 67
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViews:Landroid/widget/LinearLayout;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDateTextView:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mWeekTextView:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgTextView:Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mIncallTextView:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    .line 75
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosX:I

    .line 76
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosY:I

    .line 77
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCanUnlock:Z

    .line 79
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->UNLOCK_DISTANCE:I

    .line 249
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    .line 64
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgNum:I

    .line 65
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCallNum:I

    .line 66
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViewsLayoutType:I

    .line 67
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViews:Landroid/widget/LinearLayout;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDateTextView:Landroid/widget/TextView;

    .line 69
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mWeekTextView:Landroid/widget/TextView;

    .line 70
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgTextView:Landroid/widget/TextView;

    .line 73
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mIncallTextView:Landroid/widget/TextView;

    .line 74
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    .line 75
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosX:I

    .line 76
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosY:I

    .line 77
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCanUnlock:Z

    .line 79
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->UNLOCK_DISTANCE:I

    .line 249
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->refreshUnreadViewsContainer()V

    return-void
.end method

.method private adjustDimens(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->UNLOCK_DISTANCE:I

    .line 323
    return-void
.end method

.method private refreshDateView()V
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDateTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mWeekTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mWeekTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mWeekFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_1
    return-void
.end method

.method private refreshUnreadViewsContainer()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 289
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgNum:I

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 303
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCallNum:I

    if-nez v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 318
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->updateTimeDateViewsLayout()V

    .line 319
    return-void

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 309
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 312
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mIncallTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mIncallTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCallNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private unlock()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->dismiss()V

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.service.hallobserver.invalid"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method private updateTimeDateViewsLayout()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 261
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViews:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-ne v5, v7, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v5

    if-eq v5, v7, :cond_4

    .line 267
    :cond_3
    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViewsLayoutType:I

    if-eq v5, v6, :cond_0

    .line 268
    iput v6, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViewsLayoutType:I

    .line 269
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f010a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    .line 270
    .local v0, "allHeight":I
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020270

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 272
    .local v1, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 273
    .local v4, "unreadHeight":I
    sub-int v3, v0, v4

    .line 274
    .local v3, "timeDateHeight":I
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViews:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 275
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 276
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViews:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 279
    .end local v0    # "allHeight":I
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "timeDateHeight":I
    .end local v4    # "unreadHeight":I
    :cond_4
    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViewsLayoutType:I

    if-eqz v5, :cond_0

    .line 280
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViewsLayoutType:I

    .line 281
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViews:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 282
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x1

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 283
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViews:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public onCleanup()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDateFormatString:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mWeekFormatString:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    const v1, 0x7f0e017a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->refreshDateView()V

    .line 130
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onFinishInflate()V

    .line 105
    const v0, 0x7f11015a

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .line 106
    const v0, 0x7f110159

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mTimeDateViews:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDateFormatString:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mWeekFormatString:Ljava/lang/String;

    .line 109
    const v0, 0x7f11008b

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDateTextView:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f11015b

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mWeekTextView:Landroid/widget/TextView;

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->refreshDateView()V

    .line 113
    const v0, 0x7f11015f

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadMsgViews:Landroid/widget/RelativeLayout;

    .line 114
    const v0, 0x7f11015d

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnreadIncallViews:Landroid/widget/RelativeLayout;

    .line 115
    const v0, 0x7f110160

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgTextView:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f11015e

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mIncallTextView:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f110161

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->adjustDimens(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public onHide(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->onPause()V

    .line 162
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    :cond_0
    return-void
.end method

.method public onRefreshInfo(II)V
    .locals 3
    .param p1, "msgNum"    # I
    .param p2, "callNum"    # I

    .prologue
    .line 134
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgNum:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCallNum:I

    if-eq v0, p2, :cond_1

    .line 135
    :cond_0
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgNum:I

    .line 136
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCallNum:I

    .line 137
    const-string v0, "KeyguardHolsterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshInfo mMsgNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mMsgNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCallNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCallNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 140
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onRefreshInfo(II)V

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCanUnlock:Z

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 150
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->refreshDateView()V

    .line 173
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 196
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 197
    .local v0, "r":Landroid/content/res/Resources;
    const v4, 0x7f0f010a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 198
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 229
    :cond_0
    :goto_0
    return v6

    .line 200
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosX:I

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosY:I

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosY:I

    if-le v4, v2, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCanUnlock:Z

    if-nez v4, :cond_0

    .line 205
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 206
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 213
    :pswitch_2
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosY:I

    if-le v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mUnlockTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosX:I

    sub-int v1, v4, v5

    .line 215
    .local v1, "xDistance":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mDownPosY:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 216
    .local v3, "yDistance":I
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->UNLOCK_DISTANCE:I

    if-le v1, v4, :cond_0

    mul-int/lit8 v4, v3, 0x2

    if-le v1, v4, :cond_0

    .line 217
    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mCanUnlock:Z

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->unlock()V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 327
    if-ne p1, p0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->userActivity()V

    .line 330
    if-nez p2, :cond_1

    .line 331
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 336
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onVisibilityChanged(Landroid/view/View;I)V

    .line 337
    return-void

    .line 332
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->showNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardHolsterView;->mNotificationView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
