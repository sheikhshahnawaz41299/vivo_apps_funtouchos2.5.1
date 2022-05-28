.class public Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;
.super Landroid/widget/LinearLayout;
.source "ImageDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TAG:Ljava/lang/String; = "ImageDigitalClock"

.field private static final mImageIdIndexs:[I


# instance fields
.field private mAMPMDisplay:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mAttached:Z

.field private mBackgroundBitmaps:[Landroid/graphics/Bitmap;

.field private mBackgroundImageIds:[I

.field private mBackgroundStrs:[Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private mDisplay1:Landroid/widget/TextView;

.field private mDisplay2:Landroid/widget/TextView;

.field private mDisplay3:Landroid/widget/TextView;

.field private mDisplay4:Landroid/widget/TextView;

.field private mDisplay5:Landroid/widget/TextView;

.field private mDisplayLinearLayout:Landroid/widget/LinearLayout;

.field private mDotImageBitmap:Landroid/graphics/Bitmap;

.field private mDotImageId:I

.field private mForceCenter:Z

.field private mFormat:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private mPaddingView:Landroid/widget/TextView;

.field private mPmString:Ljava/lang/String;

.field private mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mImageIdIndexs:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0xa

    .line 143
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    .line 64
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "num_0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "num_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "num_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "num_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "num_4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "num_5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "num_6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "num_7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "num_8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "num_9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundStrs:[Ljava/lang/String;

    .line 71
    const v0, 0x7f020312

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageId:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->init(Landroid/util/AttributeSet;)V

    .line 146
    return-void

    .line 52
    nop

    :array_0
    .array-data 4
        0x7f020308
        0x7f020309
        0x7f02030a
        0x7f02030b
        0x7f02030c
        0x7f02030d
        0x7f02030e
        0x7f02030f
        0x7f020310
        0x7f020311
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0xa

    .line 137
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    .line 64
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "num_0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "num_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "num_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "num_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "num_4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "num_5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "num_6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "num_7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "num_8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "num_9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundStrs:[Ljava/lang/String;

    .line 71
    const v0, 0x7f020312

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageId:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    .line 139
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->init(Landroid/util/AttributeSet;)V

    .line 140
    return-void

    .line 52
    :array_0
    .array-data 4
        0x7f020308
        0x7f020309
        0x7f02030a
        0x7f02030b
        0x7f02030c
        0x7f02030d
        0x7f02030e
        0x7f02030f
        0x7f020310
        0x7f020311
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v1, 0xa

    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    .line 64
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "num_0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "num_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "num_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "num_3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "num_4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "num_5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "num_6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "num_7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "num_8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "num_9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundStrs:[Ljava/lang/String;

    .line 71
    const v0, 0x7f020312

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageId:I

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    .line 133
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->init(Landroid/util/AttributeSet;)V

    .line 134
    return-void

    .line 52
    :array_0
    .array-data 4
        0x7f020308
        0x7f020309
        0x7f02030a
        0x7f02030b
        0x7f02030c
        0x7f02030d
        0x7f02030e
        0x7f02030f
        0x7f020310
        0x7f020311
    .end array-data
.end method

.method private getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 276
    const-string v3, "ImageDigitalClock"

    const-string v4, "ImageDigitalClock init"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 278
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setOrientation(I)V

    .line 280
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->initBitmap(Landroid/util/AttributeSet;)V

    .line 281
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    .line 283
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    .line 284
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 286
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 287
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    .line 288
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 289
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 290
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    invoke-virtual {v3, v8, v6, v6, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 291
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay2:Landroid/widget/TextView;

    .line 298
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay2:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 299
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay3:Landroid/widget/TextView;

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setDotImage()V

    .line 302
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay3:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 303
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay4:Landroid/widget/TextView;

    .line 305
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay4:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay5:Landroid/widget/TextView;

    .line 308
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay5:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 310
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->addView(Landroid/view/View;)V

    .line 312
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    .line 318
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 319
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 321
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    const/high16 v4, -0x67000000

    invoke-virtual {v3, v8, v6, v6, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 322
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "ampm":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAmString:Ljava/lang/String;

    .line 326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPmString:Ljava/lang/String;

    .line 327
    return-void
.end method

.method private initBitmap(Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, -0x1

    .line 189
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    if-nez v5, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    iput-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    .line 193
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    if-eqz v5, :cond_5

    .line 194
    const/4 v3, 0x0

    .line 196
    .local v3, "parseFailed":Z
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    if-nez v5, :cond_1

    .line 197
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundStrs:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Landroid/graphics/Bitmap;

    iput-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    .line 200
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundStrs:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 201
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundStrs:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v5, v2

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    const-string v6, "num_dot"

    invoke-virtual {v5, v6}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 207
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v0

    if-nez v5, :cond_3

    .line 208
    const/4 v3, 0x1

    .line 206
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_7

    .line 213
    :goto_2
    if-eqz v3, :cond_5

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->recycleSkin()V

    .line 218
    .end local v0    # "i":I
    .end local v2    # "j":I
    .end local v3    # "parseFailed":Z
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    if-nez v5, :cond_a

    if-eqz p1, :cond_a

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/R$styleable;->ImageDigitalClock:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 221
    .local v4, "typeArray":Landroid/content/res/TypedArray;
    if-eqz v4, :cond_a

    .line 222
    const/4 v1, -0x1

    .line 223
    .local v1, "imageId":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    sget-object v5, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mImageIdIndexs:[I

    array-length v5, v5

    if-ge v0, v5, :cond_8

    .line 224
    sget-object v5, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mImageIdIndexs:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 225
    if-eq v1, v8, :cond_6

    .line 226
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    aput v1, v5, v0

    .line 223
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 211
    .end local v1    # "imageId":I
    .end local v4    # "typeArray":Landroid/content/res/TypedArray;
    .restart local v2    # "j":I
    .restart local v3    # "parseFailed":Z
    :cond_7
    const/4 v3, 0x1

    goto :goto_2

    .line 230
    .end local v2    # "j":I
    .end local v3    # "parseFailed":Z
    .restart local v1    # "imageId":I
    .restart local v4    # "typeArray":Landroid/content/res/TypedArray;
    :cond_8
    const/16 v5, 0xa

    invoke-virtual {v4, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 232
    if-eq v1, v8, :cond_9

    .line 233
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageId:I

    .line 236
    :cond_9
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 239
    .end local v0    # "i":I
    .end local v1    # "imageId":I
    .end local v4    # "typeArray":Landroid/content/res/TypedArray;
    :cond_a
    return-void
.end method

.method private recycleSkin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_2
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    .line 255
    .end local v0    # "i":I
    :cond_3
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    .line 256
    return-void
.end method

.method private setDigitalImage(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "num"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    aget-object v2, v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setDotImage()V
    .locals 4

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkinBase;

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay3:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay3:Landroid/widget/TextView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setFormat()V
    .locals 1

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    .line 331
    return-void

    .line 330
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method private setIsMorning(Z)V
    .locals 2
    .param p1, "isMorning"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mForceCenter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAmString:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPmString:Ljava/lang/String;

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPmString:Ljava/lang/String;

    goto :goto_1
.end method

.method private setShowAmPm(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 335
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mForceCenter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 340
    :cond_0
    return-void

    .line 335
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mForceCenter:Z

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 337
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mForceCenter:Z

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public disableAmPmShadow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 397
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mForceCenter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 401
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 157
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAttached:Z

    .line 160
    const-string v0, "ImageDigitalClock"

    const-string v1, "ImageDigitalClock attached to window"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock$TimeChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 168
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 169
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 416
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 417
    .local v0, "ampm":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAmString:Ljava/lang/String;

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPmString:Ljava/lang/String;

    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 420
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 175
    const-string v0, "ImageDigitalClock"

    const-string v1, "ImageDigitalClock detached from window"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->recycleSkin()V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAttached:Z

    .line 182
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 424
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 425
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mLocale:Ljava/util/Locale;

    .line 426
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setLayoutDirection(I)V

    .line 427
    return-void
.end method

.method public setAmPmShadow(I)V
    .locals 4
    .param p1, "shadowColor"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 404
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mForceCenter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mPaddingView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 410
    :cond_0
    return-void
.end method

.method public setForceCenter(Z)V
    .locals 0
    .param p1, "center"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mForceCenter:Z

    .line 392
    return-void
.end method

.method public setImageId([II)V
    .locals 0
    .param p1, "backgroundImageIds"    # [I
    .param p2, "dotImageId"    # I

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    .line 150
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDotImageId:I

    .line 151
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setDotImage()V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 153
    return-void
.end method

.method public updateSkin()V
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->initBitmap(Landroid/util/AttributeSet;)V

    .line 431
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setDotImage()V

    .line 432
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 433
    return-void
.end method

.method public updateTime()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAttached:Z

    if-nez v4, :cond_0

    .line 383
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setFormat()V

    .line 354
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 355
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 356
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 358
    .local v2, "newTime":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 359
    .local v0, "hour":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    const-string v5, "kk:mm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 361
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 374
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    div-int/lit8 v5, v0, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setDigitalImage(Landroid/view/View;I)V

    .line 375
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay2:Landroid/widget/TextView;

    rem-int/lit8 v5, v0, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setDigitalImage(Landroid/view/View;I)V

    .line 377
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 378
    .local v1, "min":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay4:Landroid/widget/TextView;

    div-int/lit8 v5, v1, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setDigitalImage(Landroid/view/View;I)V

    .line 379
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay5:Landroid/widget/TextView;

    rem-int/lit8 v5, v1, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setDigitalImage(Landroid/view/View;I)V

    .line 380
    const-string v4, "ImageDigitalClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    const-string v5, "h:mm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setShowAmPm(Z)V

    .line 382
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setIsMorning(Z)V

    goto/16 :goto_0

    .line 363
    .end local v1    # "min":I
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 364
    if-nez v0, :cond_3

    .line 365
    const/16 v0, 0xc

    .line 368
    :cond_3
    div-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_4

    .line 369
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 371
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateViewsColor([III)V
    .locals 1
    .param p1, "backgroundImageIds"    # [I
    .param p2, "dotImageId"    # I
    .param p3, "color"    # I

    .prologue
    .line 386
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setImageId([II)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 388
    return-void
.end method
