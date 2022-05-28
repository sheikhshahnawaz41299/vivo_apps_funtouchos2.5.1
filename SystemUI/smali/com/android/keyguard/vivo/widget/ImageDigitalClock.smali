.class public Lcom/android/keyguard/vivo/widget/ImageDigitalClock;
.super Landroid/widget/LinearLayout;
.source "ImageDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/vivo/widget/ImageDigitalClock$FormatChangeObserver;,
        Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TAG:Ljava/lang/String; = "ImageDigitalClock"


# instance fields
.field private mAMPMDisplay:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mBackgroundBitmaps:[Landroid/graphics/Bitmap;

.field private mBackgroundImageIds:[I

.field private mCalendar:Ljava/util/Calendar;

.field private mDisplay1:Landroid/widget/TextView;

.field private mDisplay2:Landroid/widget/TextView;

.field private mDisplay3:Landroid/widget/TextView;

.field private mDisplay4:Landroid/widget/TextView;

.field private mDisplay5:Landroid/widget/TextView;

.field private mDisplayLinearLayout:Landroid/widget/LinearLayout;

.field private mDotImageBitmap:Landroid/graphics/Bitmap;

.field private mDotImageId:I

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private mPmString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 154
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    .line 56
    sget v0, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_dot:I

    iput v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDotImageId:I

    .line 69
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAmString:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mPmString:Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    .line 76
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    .line 156
    invoke-direct {p0, v3}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->init(Landroid/util/AttributeSet;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    .line 56
    sget v0, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_dot:I

    iput v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDotImageId:I

    .line 69
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAmString:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mPmString:Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    .line 76
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    .line 150
    invoke-direct {p0, p2}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->init(Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    .line 56
    sget v0, Lcom/android/keyguard/R$drawable;->vivo_keyguard_security_time_dot:I

    iput v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDotImageId:I

    .line 69
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAmString:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mPmString:Ljava/lang/String;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mBackgroundBitmaps:[Landroid/graphics/Bitmap;

    .line 76
    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDotImageBitmap:Landroid/graphics/Bitmap;

    .line 144
    invoke-direct {p0, p2}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->init(Landroid/util/AttributeSet;)V

    .line 145
    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/vivo/widget/ImageDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/vivo/widget/ImageDigitalClock;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/vivo/widget/ImageDigitalClock;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 238
    const-string v3, "ImageDigitalClock"

    const-string v4, "ImageDigitalClock init"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 240
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0, v6}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setOrientation(I)V

    .line 242
    invoke-direct {p0, p1}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->initBitmap(Landroid/util/AttributeSet;)V

    .line 243
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    .line 245
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    .line 246
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 248
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x50

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 249
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay2:Landroid/widget/TextView;

    .line 253
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay2:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay3:Landroid/widget/TextView;

    .line 255
    invoke-direct {p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setDotImage()V

    .line 257
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay3:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay4:Landroid/widget/TextView;

    .line 260
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay4:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 261
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay5:Landroid/widget/TextView;

    .line 263
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay5:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 265
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplayLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->addView(Landroid/view/View;)V

    .line 267
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    .line 272
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 273
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 274
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x67000000

    invoke-virtual {v3, v4, v7, v7, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 275
    iget-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    new-instance v3, Ljava/text/DateFormatSymbols;

    invoke-direct {v3}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "ampm":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAmString:Ljava/lang/String;

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mPmString:Ljava/lang/String;

    .line 280
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 282
    invoke-virtual {p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->updateTime()V

    .line 283
    return-void
.end method

.method private initBitmap(Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 227
    return-void
.end method

.method private setDigitalImage(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "num"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 231
    return-void
.end method

.method private setDotImage()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay3:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDotImageId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 235
    return-void
.end method

.method private setFormat()V
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    .line 288
    return-void

    .line 286
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method private setIsMorning(Z)V
    .locals 2
    .param p1, "isMorning"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 298
    iget-object v1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method private setShowAmPm(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    :cond_0
    return-void

    .line 292
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public disableAmPmShadow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    const-string v1, "h:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 355
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 170
    const-string v0, "ImageDigitalClock"

    const-string v1, "ImageDigitalClock onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/keyguard/vivo/widget/ImageDigitalClock;)V

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 181
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$FormatChangeObserver;-><init>(Lcom/android/keyguard/vivo/widget/ImageDigitalClock;)V

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 186
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 192
    const-string v0, "ImageDigitalClock"

    const-string v1, "ImageDigitalClock onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 195
    iput-object v2, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 201
    iput-object v2, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 203
    :cond_1
    return-void
.end method

.method public setAmPmShadow(I)V
    .locals 3
    .param p1, "shadowColor"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    const-string v1, "h:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 360
    :cond_0
    return-void
.end method

.method public setForceCenter(Z)V
    .locals 3
    .param p1, "center"    # Z

    .prologue
    const/4 v2, 0x0

    .line 340
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    const-string v1, "h:mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mLocale:Ljava/util/Locale;

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mLocale:Ljava/util/Locale;

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0, v2, v2, v0, v2}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setPadding(IIII)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setPadding(IIII)V

    goto :goto_0
.end method

.method public setImageId([II)V
    .locals 0
    .param p1, "backgroundImageIds"    # [I
    .param p2, "dotImageId"    # I

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mBackgroundImageIds:[I

    .line 161
    iput p2, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDotImageId:I

    .line 162
    invoke-direct {p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setDotImage()V

    .line 163
    invoke-virtual {p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->updateTime()V

    .line 164
    return-void
.end method

.method public updateTime()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 303
    invoke-direct {p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setFormat()V

    .line 304
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 305
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 307
    .local v2, "newTime":Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 308
    .local v0, "hour":I
    invoke-virtual {p0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 322
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    div-int/lit8 v5, v0, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setDigitalImage(Landroid/view/View;I)V

    .line 323
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay2:Landroid/widget/TextView;

    rem-int/lit8 v5, v0, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setDigitalImage(Landroid/view/View;I)V

    .line 325
    const-string v4, "ImageDigitalClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImageDigitalClock updateTime hour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 327
    .local v1, "min":I
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay4:Landroid/widget/TextView;

    div-int/lit8 v5, v1, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setDigitalImage(Landroid/view/View;I)V

    .line 328
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay5:Landroid/widget/TextView;

    rem-int/lit8 v5, v1, 0xa

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setDigitalImage(Landroid/view/View;I)V

    .line 329
    const-string v4, "ImageDigitalClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImageDigitalClock updateTime min = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mFormat:Ljava/lang/String;

    const-string v5, "h:mm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setShowAmPm(Z)V

    .line 331
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setIsMorning(Z)V

    .line 332
    return-void

    .line 311
    .end local v1    # "min":I
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 312
    if-nez v0, :cond_2

    .line 313
    const/16 v0, 0xc

    .line 316
    :cond_2
    div-int/lit8 v4, v0, 0xa

    if-nez v4, :cond_3

    .line 317
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 319
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mDisplay1:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateViewsColor([III)V
    .locals 1
    .param p1, "backgroundImageIds"    # [I
    .param p2, "dotImageId"    # I
    .param p3, "color"    # I

    .prologue
    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setImageId([II)V

    .line 336
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->mAMPMDisplay:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 337
    return-void
.end method
