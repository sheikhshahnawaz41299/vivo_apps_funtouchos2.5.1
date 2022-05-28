.class Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;
.super Ljava/lang/Thread;
.source "BlurFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/ui/BlurFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlurThread"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanReuse:Z

.field private mContext:Landroid/content/Context;

.field private mRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "src"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # I
    .param p4, "canReuseInBitmap"    # Z

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 84
    iput p3, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mRadius:I

    .line 85
    iput-boolean p4, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mCanReuse:Z

    .line 86
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 90
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 92
    .local v4, "startMs":J
    iget-object v6, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 94
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mBitmap:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mRadius:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->access$000(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mBitmap:Landroid/graphics/Bitmap;

    .line 95
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 96
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFlags(I)V

    .line 97
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 98
    .local v2, "lightnessMatrix":Landroid/graphics/ColorMatrix;
    invoke-static {}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->access$100()[F

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 99
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 100
    iget-object v6, p0, Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 101
    invoke-static {v0}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->saveScreenShot(Landroid/graphics/Bitmap;)V

    .line 102
    const-string v6, "BlurFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "run time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method
