.class public Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;
.super Landroid/view/View;
.source "CircularSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;
    }
.end annotation


# static fields
.field private static final ALPHA_INCREMENT:I = 0x28

.field private static final MAX_PROGRESS_ALPHA:I = 0xff

.field private static final MIN_PROGRESS_ALPHA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CircularSeekBar"


# instance fields
.field private CALLED_FROM_ANGLE:Z

.field private IS_PRESSED:Z

.field private adjustmentFactor:F

.field private angle:I

.field private barWidth:I

.field private bottom:F

.field private circleColor:Landroid/graphics/Paint;

.field private circleRing:Landroid/graphics/Paint;

.field private cx:F

.field private cy:F

.field private dx:F

.field private dy:F

.field private height:I

.field private innerColor:Landroid/graphics/Paint;

.field private left:F

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mListener:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressAlpha:I

.field private mShowProgress:Z

.field private mSizeChanged:Z

.field private mWidth:I

.field private markPointX:F

.field private markPointY:F

.field private maxProgress:I

.field private outerRadius:F

.field private progress:I

.field private progressMark:Landroid/graphics/Bitmap;

.field private progressMarkPressed:Landroid/graphics/Bitmap;

.field private progressPercent:I

.field private rect:Landroid/graphics/RectF;

.field private rect2:Landroid/graphics/RectF;

.field private right:F

.field private ringWidth:I

.field private startAngle:I

.field private startPointX:F

.field private startPointY:F

.field private sweepAngle:F

.field private top:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 39
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->angle:I

    .line 42
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->startAngle:I

    .line 45
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->barWidth:I

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->maxProgress:I

    .line 115
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->adjustmentFactor:F

    .line 124
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->IS_PRESSED:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->CALLED_FROM_ANGLE:Z

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->rect:Landroid/graphics/RectF;

    .line 143
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mListener:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    const-string v1, "#ffad4bff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 583
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mShowProgress:Z

    .line 584
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    .line 214
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->initDrawable()V

    .line 216
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->initData(Landroid/content/Context;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    .line 200
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->angle:I

    .line 42
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->startAngle:I

    .line 45
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->barWidth:I

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->maxProgress:I

    .line 115
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->adjustmentFactor:F

    .line 124
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->IS_PRESSED:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->CALLED_FROM_ANGLE:Z

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->rect:Landroid/graphics/RectF;

    .line 143
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mListener:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    const-string v1, "#ffad4bff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 583
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mShowProgress:Z

    .line 584
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    .line 201
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->initDrawable()V

    .line 203
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->initData(Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->angle:I

    .line 42
    const/16 v0, 0x10e

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->startAngle:I

    .line 45
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->barWidth:I

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->maxProgress:I

    .line 115
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->adjustmentFactor:F

    .line 124
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->IS_PRESSED:Z

    .line 130
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->CALLED_FROM_ANGLE:Z

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->rect:Landroid/graphics/RectF;

    .line 143
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mListener:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    .line 152
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    .line 153
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    const-string v1, "#ffad4bff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 583
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mShowProgress:Z

    .line 584
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    .line 186
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->initDrawable()V

    .line 188
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->initData(Landroid/content/Context;)V

    .line 189
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 228
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->ringWidth:I

    .line 224
    return-void
.end method

.method private initRect()V
    .locals 6

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->rect2:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mSizeChanged:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mHeight:I

    if-ne v0, v1, :cond_1

    .line 288
    :cond_0
    const-string v0, "CircularSeekBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->ringWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->ringWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->ringWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mWidth:I

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->ringWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mHeight:I

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->ringWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->rect2:Landroid/graphics/RectF;

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->invalidate()V

    .line 292
    :cond_1
    return-void
.end method

.method private updateProgressAlpha()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 611
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mShowProgress:Z

    if-eqz v0, :cond_2

    .line 612
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    if-ge v0, v1, :cond_0

    .line 613
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    add-int/lit8 v0, v0, 0x28

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    .line 615
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    if-le v0, v1, :cond_1

    .line 616
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    .line 626
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    if-lez v0, :cond_3

    .line 620
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    add-int/lit8 v0, v0, -0x28

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    .line 622
    :cond_3
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    if-gez v0, :cond_1

    .line 623
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    goto :goto_0
.end method


# virtual methods
.method public drawMarkerAtProgress(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 343
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->IS_PRESSED:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMarkPressed:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->dx:F

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->dy:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMark:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->dx:F

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->dy:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAdjustmentFactor()F
    .locals 1

    .prologue
    .line 567
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->adjustmentFactor:F

    return v0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->angle:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->barWidth:I

    return v0
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->maxProgress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 489
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progress:I

    return v0
.end method

.method public getProgressPercent()I
    .locals 1

    .prologue
    .line 518
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressPercent:I

    return v0
.end method

.method public getSeekBarChangeListener()Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mListener:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;

    return-object v0
.end method

.method public getSweepAngle()F
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->sweepAngle:F

    return v0
.end method

.method public getXFromAngle()F
    .locals 6

    .prologue
    .line 357
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMark:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 358
    .local v1, "size1":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMarkPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 359
    .local v2, "size2":I
    if-le v1, v2, :cond_0

    move v0, v1

    .line 360
    .local v0, "adjust":I
    :goto_0
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->markPointX:F

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 361
    .local v3, "x":F
    return v3

    .end local v0    # "adjust":I
    .end local v3    # "x":F
    :cond_0
    move v0, v2

    .line 359
    goto :goto_0
.end method

.method public getYFromAngle()F
    .locals 6

    .prologue
    .line 371
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMark:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 372
    .local v1, "size1":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMarkPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 373
    .local v2, "size2":I
    if-le v1, v2, :cond_0

    move v0, v1

    .line 374
    .local v0, "adjust":I
    :goto_0
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->markPointY:F

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 375
    .local v3, "y":F
    return v3

    .end local v0    # "adjust":I
    .end local v3    # "y":F
    :cond_0
    move v0, v2

    .line 373
    goto :goto_0
.end method

.method public initDrawable()V
    .locals 5

    .prologue
    const/16 v0, 0x1c2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 235
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->width:I

    .line 236
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->height:I

    .line 238
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x8

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->cx:F

    .line 239
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->height:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x8

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->cy:F

    .line 240
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mContext:Landroid/content/Context;

    const/high16 v1, 0x42820000    # 65.0f

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->outerRadius:F

    .line 244
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->cx:F

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->outerRadius:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->barWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->left:F

    .line 246
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->cx:F

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->outerRadius:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->barWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->right:F

    .line 248
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->cy:F

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->outerRadius:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->barWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->top:F

    .line 250
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->cy:F

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->outerRadius:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->barWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->bottom:F

    .line 253
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->cx:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->startPointX:F

    .line 254
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->cy:F

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->outerRadius:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->startPointY:F

    .line 255
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->startPointX:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->markPointX:F

    .line 256
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->startPointY:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->markPointY:F

    .line 258
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->rect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->left:F

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->top:F

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->right:F

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->bottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202d4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMark:Landroid/graphics/Bitmap;

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202d5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMarkPressed:Landroid/graphics/Bitmap;

    .line 264
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMark:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMark:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMark:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 632
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMark:Landroid/graphics/Bitmap;

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMarkPressed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMarkPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMarkPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 636
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressMarkPressed:Landroid/graphics/Bitmap;

    .line 638
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 639
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0xff

    .line 312
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->initRect()V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->ringWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->updateProgressAlpha()V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    const/16 v2, 0x6a

    const/16 v3, 0xfd

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->rect2:Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->startAngle:I

    int-to-float v2, v0

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->sweepAngle:F

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 325
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->rect2:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 333
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 334
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 275
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 276
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 277
    .local v0, "height":I
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mHeight:I

    if-eq v0, v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mSizeChanged:Z

    .line 278
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mSizeChanged:Z

    if-eqz v2, :cond_1

    .line 279
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mWidth:I

    .line 280
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mHeight:I

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->initRect()V

    .line 282
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mSizeChanged:Z

    .line 284
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 277
    goto :goto_0
.end method

.method public setAdjustmentFactor(F)V
    .locals 0
    .param p1, "adjustmentFactor"    # F

    .prologue
    .line 577
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->adjustmentFactor:F

    .line 578
    return-void
.end method

.method public setAngle(I)V
    .locals 5
    .param p1, "angle"    # I

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 394
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->angle:I

    .line 395
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->angle:I

    int-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    mul-float v0, v2, v4

    .line 396
    .local v0, "donePercent":F
    div-float v2, v0, v4

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->getMaxProgress()I

    move-result v3

    int-to-float v3, v3

    mul-float v1, v2, v3

    .line 397
    .local v1, "progress":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setProgressPercent(I)V

    .line 398
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->CALLED_FROM_ANGLE:Z

    .line 399
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setProgress(I)V

    .line 400
    return-void
.end method

.method public setBackGroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->innerColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    return-void
.end method

.method public setBarWidth(I)V
    .locals 0
    .param p1, "barWidth"    # I

    .prologue
    .line 437
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->barWidth:I

    .line 438
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 480
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->maxProgress:I

    .line 481
    return-void
.end method

.method public setProgress(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 499
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progress:I

    if-eq v2, p1, :cond_1

    if-lez p1, :cond_1

    .line 500
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progress:I

    .line 501
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->CALLED_FROM_ANGLE:Z

    if-nez v2, :cond_0

    .line 502
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progress:I

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->maxProgress:I

    div-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x64

    .line 503
    .local v1, "newPercent":I
    div-int/lit8 v2, v1, 0x64

    mul-int/lit16 v0, v2, 0x168

    .line 504
    .local v0, "newAngle":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setAngle(I)V

    .line 505
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setProgressPercent(I)V

    .line 507
    .end local v0    # "newAngle":I
    .end local v1    # "newPercent":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mListener:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->getProgress()I

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;->onProgressChange(Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;I)V

    .line 508
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->CALLED_FROM_ANGLE:Z

    .line 510
    :cond_1
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleColor:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 559
    return-void
.end method

.method public setProgressPercent(I)V
    .locals 0
    .param p1, "progressPercent"    # I

    .prologue
    .line 528
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->progressPercent:I

    .line 529
    return-void
.end method

.method public setRingBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->circleRing:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 539
    return-void
.end method

.method public setSeekBarChangeListener(Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mListener:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar$OnSeekChangeListener;

    .line 410
    return-void
.end method

.method public setShowProgress(ZZ)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "isPlaying"    # Z

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mShowProgress:Z

    .line 593
    if-nez p2, :cond_1

    .line 594
    if-eqz p1, :cond_0

    .line 595
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    rsub-int v2, v2, 0xff

    div-int/lit8 v0, v2, 0x28

    .line 597
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 598
    mul-int/lit8 v2, v1, 0x1e

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->postInvalidateDelayed(J)V

    .line 597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->mProgressAlpha:I

    .line 602
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->invalidate()V

    .line 605
    :cond_1
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .prologue
    .line 297
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->sweepAngle:F

    .line 298
    return-void
.end method
