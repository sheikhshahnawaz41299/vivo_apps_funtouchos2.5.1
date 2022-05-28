.class Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;
.super Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;
.source "SlideColorTab.java"


# static fields
.field private static mUnreadMsgColorCount:I

.field private static final mUreadMsgIconBg:[I


# instance fields
.field protected strId:I

.field protected unreadIcon:Landroid/graphics/Bitmap;

.field protected unreadNum:I

.field protected unreadStr:Ljava/lang/String;

.field protected ureadIconBg:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mUnreadMsgColorCount:I

    .line 231
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mUreadMsgIconBg:[I

    return-void

    :array_0
    .array-data 4
        0x7f020252
        0x7f020253
        0x7f020254
        0x7f020255
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadNum:I

    .line 239
    return-void
.end method


# virtual methods
.method protected changeColorCount()V
    .locals 2

    .prologue
    .line 284
    sget v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mUnreadMsgColorCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mUnreadMsgColorCount:I

    .line 285
    sget v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mUnreadMsgColorCount:I

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mUreadMsgIconBg:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 286
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mUnreadMsgColorCount:I

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->getBg()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->bg:Landroid/graphics/Bitmap;

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->invalidate()V

    .line 291
    return-void
.end method

.method protected getBg()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 274
    const v1, 0x7f120002

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->strId:I

    .line 276
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02025b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadIcon:Landroid/graphics/Bitmap;

    .line 278
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mUreadMsgIconBg:[I

    sget v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->mUnreadMsgColorCount:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->ureadIconBg:Landroid/graphics/Bitmap;

    .line 280
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->ureadIconBg:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 244
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->bg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadNum:I

    if-lez v0, :cond_0

    .line 249
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadIcon:Landroid/graphics/Bitmap;

    const/high16 v1, 0x41200000    # 10.0f

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 251
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadStr:Ljava/lang/String;

    const/high16 v1, 0x41900000    # 18.0f

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->density:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected recycleBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadIcon:Landroid/graphics/Bitmap;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->ureadIconBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->ureadIconBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->ureadIconBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->ureadIconBg:Landroid/graphics/Bitmap;

    .line 271
    :cond_1
    return-void
.end method

.method public setUnreadNum(I)V
    .locals 5
    .param p1, "num"    # I

    .prologue
    .line 294
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadNum:I

    if-eq v0, p1, :cond_0

    .line 295
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadNum:I

    .line 296
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->resources:Landroid/content/res/Resources;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->strId:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->unreadStr:Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;->invalidate()V

    .line 299
    :cond_0
    return-void
.end method
