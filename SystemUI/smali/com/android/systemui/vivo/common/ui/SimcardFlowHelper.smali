.class public Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;
.super Ljava/lang/Object;
.source "SimcardFlowHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_CLICK_DURING:I = 0x384


# instance fields
.field private fm:Landroid/graphics/Paint$FontMetrics;

.field private mArrowBitmap:Landroid/graphics/Bitmap;

.field private mArrowColor:I

.field private mArrowStrokeWidth:I

.field private mArrowWidth:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mBottomContentHeight:I

.field private mContext:Landroid/content/Context;

.field private mDraggerHeight:I

.field private mFlowStr1:Ljava/lang/String;

.field private mFlowStr2:Ljava/lang/String;

.field private mFlowTextColor:I

.field private mFlowTextPaint:Landroid/graphics/Paint;

.field private mFlowTextSize:I

.field private mFontHeight:I

.field private mLastClickTimemillis:J

.field private mMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final mNetSpeedSettingsObserver:Landroid/database/ContentObserver;

.field private mNetSpeedTipLength:F

.field private mNetSpeedTipStartX:F

.field private mReloadArrowBitmap:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowNetSpeed:Z

.field private mSidePadding:I

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    .line 42
    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipLength:F

    .line 60
    iput v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextSize:I

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mLastClickTimemillis:J

    .line 345
    new-instance v0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$2;-><init>(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedSettingsObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->initValues()V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->initPaints()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_usage_show_speed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->calculateBottomContentHeight()V

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->calculateBottomContentHeight()V

    return-void
.end method

.method private calculateBottomContentHeight()V
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mDraggerHeight:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBottomContentHeight:I

    .line 139
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 140
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBottomContentHeight:I

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFontHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBottomContentHeight:I

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 143
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBottomContentHeight:I

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFontHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBottomContentHeight:I

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    if-eqz v0, :cond_2

    .line 146
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBottomContentHeight:I

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFontHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBottomContentHeight:I

    .line 148
    :cond_2
    return-void
.end method

.method private createArrowBitmp(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 216
    if-lez p1, :cond_0

    if-gtz p2, :cond_2

    .line 217
    :cond_0
    sget-object v3, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->TAG:Ljava/lang/String;

    const-string v4, "createArrowBitmap error!"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 221
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mReloadArrowBitmap:Z

    if-eqz v3, :cond_1

    .line 225
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->resetArrowBitmap()V

    .line 226
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mReloadArrowBitmap:Z

    .line 228
    add-int/lit8 v3, p1, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    .line 229
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 230
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 233
    .local v0, "arrowTipPaint":Landroid/graphics/Paint;
    iget v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 235
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowStrokeWidth:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 238
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 239
    .local v1, "arrowTipPath":Landroid/graphics/Path;
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->isRtlMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 240
    int-to-float v3, p1

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 241
    const/high16 v3, 0x3f800000    # 1.0f

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 249
    :goto_1
    invoke-virtual {v2, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 251
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 252
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 244
    :cond_4
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 245
    int-to-float v3, p1

    div-int/lit8 v4, p2, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    int-to-float v3, p2

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1
.end method

.method private drawText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "flow"    # Ljava/lang/String;
    .param p3, "textBaseX"    # F
    .param p4, "textBaseY"    # F

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 196
    return-void
.end method

.method private drawTipArrow(Landroid/graphics/Canvas;FF)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 199
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFontHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->createArrowBitmp(II)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFontHeight:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private handleOverlengthFlowText()V
    .locals 5

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "spacesLength":F
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    const-string v2, "    "

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    .line 122
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    const-string v2, "    "

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenWidth:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenWidth:I

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    .line 130
    :cond_2
    return-void
.end method

.method private initPaints()V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    .line 104
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextColor:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFontHeight:I

    .line 109
    return-void
.end method

.method private resetArrowBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iput-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    .line 211
    .local v0, "recyBitamp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    iput-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private updatePaintFontSize(I)V
    .locals 4
    .param p1, "textSize"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 267
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFontHeight:I

    .line 269
    :cond_0
    return-void
.end method


# virtual methods
.method public drawFlowText(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    .line 151
    const-string v4, ""

    .line 152
    .local v4, "netSpeedTipText":Ljava/lang/String;
    const/4 v3, 0x0

    .line 154
    .local v3, "netSpeedTextLength":F
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    if-eqz v7, :cond_0

    .line 155
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e01f3

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 156
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 157
    iget v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mSidePadding:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    iget v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowWidth:I

    int-to-float v10, v10

    add-float/2addr v7, v10

    iput v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipLength:F

    .line 160
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 161
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    iget-object v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    cmpl-float v7, v7, v10

    if-ltz v7, :cond_4

    iget v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenWidth:I

    int-to-float v7, v7

    iget-object v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    sub-float/2addr v7, v10

    div-float v5, v7, v12

    .line 164
    .local v5, "textLeft":F
    :goto_0
    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gez v7, :cond_1

    .line 165
    const/4 v5, 0x0

    .line 167
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    neg-float v10, v7

    iget v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextSize:I

    add-int/lit8 v11, v7, 0x2

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    :goto_1
    mul-int/2addr v7, v11

    int-to-float v7, v7

    sub-float v1, v10, v7

    .line 168
    .local v1, "flow1BaseY":F
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    neg-float v7, v7

    iget v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextSize:I

    add-int/lit8 v10, v10, 0x2

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    if-eqz v11, :cond_6

    :goto_2
    mul-int/2addr v8, v10

    int-to-float v8, v8

    sub-float v2, v7, v8

    .line 169
    .local v2, "flow2BaseY":F
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v5, v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 170
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v5, v2}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    .line 181
    .end local v1    # "flow1BaseY":F
    .end local v2    # "flow2BaseY":F
    .end local v5    # "textLeft":F
    :cond_2
    :goto_3
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    if-eqz v7, :cond_3

    .line 182
    iget v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipLength:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v12

    iput v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipStartX:F

    .line 183
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    neg-float v7, v7

    add-float v1, v7, v12

    .line 184
    .restart local v1    # "flow1BaseY":F
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget v8, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowColor:I

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 185
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->isRtlMode()Z

    move-result v7

    if-eqz v7, :cond_b

    iget v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipStartX:F

    iget v8, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowWidth:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mSidePadding:I

    int-to-float v8, v8

    add-float v6, v7, v8

    .line 186
    .local v6, "textX":F
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v6, v1, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 188
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->isRtlMode()Z

    move-result v7

    if-eqz v7, :cond_c

    iget v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipStartX:F

    .line 189
    .local v0, "arrowX":F
    :goto_5
    add-float v7, v1, v12

    invoke-direct {p0, p1, v0, v7}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->drawTipArrow(Landroid/graphics/Canvas;FF)V

    .line 191
    .end local v0    # "arrowX":F
    .end local v1    # "flow1BaseY":F
    .end local v6    # "textX":F
    :cond_3
    return-void

    .line 161
    :cond_4
    iget v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenWidth:I

    int-to-float v7, v7

    iget-object v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    sub-float/2addr v7, v10

    div-float v5, v7, v12

    goto :goto_0

    .restart local v5    # "textLeft":F
    :cond_5
    move v7, v8

    .line 167
    goto :goto_1

    .restart local v1    # "flow1BaseY":F
    :cond_6
    move v8, v9

    .line 168
    goto :goto_2

    .line 171
    .end local v1    # "flow1BaseY":F
    .end local v5    # "textLeft":F
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 172
    iget v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenWidth:I

    int-to-float v7, v7

    iget-object v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    sub-float/2addr v7, v10

    div-float v5, v7, v12

    .line 173
    .restart local v5    # "textLeft":F
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    neg-float v7, v7

    iget v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextSize:I

    add-int/lit8 v10, v10, 0x2

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    if-eqz v11, :cond_8

    :goto_6
    mul-int/2addr v8, v10

    int-to-float v8, v8

    sub-float v1, v7, v8

    .line 174
    .restart local v1    # "flow1BaseY":F
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v5, v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_3

    .end local v1    # "flow1BaseY":F
    :cond_8
    move v8, v9

    .line 173
    goto :goto_6

    .line 175
    .end local v5    # "textLeft":F
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 176
    iget v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenWidth:I

    int-to-float v7, v7

    iget-object v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mTextPaint:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    sub-float/2addr v7, v10

    div-float v5, v7, v12

    .line 177
    .restart local v5    # "textLeft":F
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->bottom:F

    neg-float v7, v7

    iget v10, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextSize:I

    add-int/lit8 v10, v10, 0x2

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    if-eqz v11, :cond_a

    :goto_7
    mul-int/2addr v8, v10

    int-to-float v8, v8

    sub-float v2, v7, v8

    .line 178
    .restart local v2    # "flow2BaseY":F
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    invoke-direct {p0, p1, v7, v5, v2}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto/16 :goto_3

    .end local v2    # "flow2BaseY":F
    :cond_a
    move v8, v9

    .line 177
    goto :goto_7

    .line 185
    .end local v5    # "textLeft":F
    .restart local v1    # "flow1BaseY":F
    :cond_b
    iget v6, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipStartX:F

    goto :goto_4

    .line 188
    .restart local v6    # "textX":F
    :cond_c
    iget v7, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipStartX:F

    add-float/2addr v7, v3

    iget v8, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mSidePadding:I

    int-to-float v8, v8

    add-float v0, v7, v8

    goto :goto_5
.end method

.method public getFloorBottomContentHeight()F
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBottomContentHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public initValues()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenHeight:I

    .line 87
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenWidth:I

    .line 88
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mDraggerHeight:I

    .line 89
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0127

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextSize:I

    .line 90
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f013a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowWidth:I

    .line 91
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f013b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowStrokeWidth:I

    .line 92
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0139

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mSidePadding:I

    .line 94
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mArrowColor:I

    .line 95
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextColor:I

    .line 97
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "data_usage_show_speed"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    .line 100
    return-void

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenHeight:I

    .line 257
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenWidth:I

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mReloadArrowBitmap:Z

    .line 259
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextSize:I

    .line 260
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowTextSize:I

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->updatePaintFontSize(I)V

    .line 261
    return-void
.end method

.method public playAudio()V
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->isSoundEffectsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 290
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 292
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public setSimCardFlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "flow1"    # Ljava/lang/String;
    .param p2, "flow2"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr1:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFlowStr2:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->handleOverlengthFlowText()V

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->calculateBottomContentHeight()V

    .line 116
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 273
    return-void
.end method

.method public startNetSpeedDetailActivty()V
    .locals 1

    .prologue
    .line 303
    new-instance v0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;-><init>(Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper$1;->start()V

    .line 326
    return-void
.end method

.method public touchingInsideTip(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 276
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mShowNetSpeed:Z

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipStartX:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipStartX:F

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mNetSpeedTipLength:F

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenHeight:I

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mDraggerHeight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mFontHeight:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mScreenHeight:I

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mDraggerHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    .line 282
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public touchingValid(J)Z
    .locals 7
    .param p1, "current"    # J

    .prologue
    .line 331
    const/4 v0, 0x1

    .line 332
    .local v0, "valid":Z
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mLastClickTimemillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 333
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mLastClickTimemillis:J

    .line 341
    :goto_0
    return v0

    .line 334
    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mLastClickTimemillis:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x384

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 335
    const/4 v0, 0x0

    .line 336
    sget-object v1, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->TAG:Ljava/lang/String;

    const-string v2, "touchingValid: false >>>> Because less than 900ms interval clicking."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :cond_1
    iput-wide p1, p0, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->mLastClickTimemillis:J

    goto :goto_0
.end method
