.class public Lcom/android/systemui/vivo/common/keyguard/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final GRAY_THRESHOLD:I = 0xb4

.field private static final TAG:Ljava/lang/String; = "BitmapUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alpha(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 72
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method private static blue(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 96
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 100
    const-string v0, "BitmapUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bytes2Bimap b.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBitmapFromRes(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getGrayValue(Landroid/graphics/Bitmap;)I
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .local v4, "gray":J
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 49
    .local v9, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 51
    .local v3, "height":I
    if-eqz p0, :cond_1

    .line 53
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_1

    .line 54
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v3, :cond_0

    .line 55
    invoke-virtual {p0, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    .line 56
    .local v1, "color":I
    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/BitmapUtils;->red(I)I

    move-result v8

    .line 57
    .local v8, "r":I
    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/BitmapUtils;->green(I)I

    move-result v2

    .line 58
    .local v2, "g":I
    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/BitmapUtils;->blue(I)I

    move-result v0

    .line 60
    .local v0, "b":I
    mul-int/lit16 v10, v8, 0xe5

    mul-int/lit16 v11, v2, 0x24b

    add-int/2addr v10, v11

    mul-int/lit8 v11, v0, 0x72

    add-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v4, v10

    .line 54
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 53
    .end local v0    # "b":I
    .end local v1    # "color":I
    .end local v2    # "g":I
    .end local v8    # "r":I
    :cond_0
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 64
    .end local v6    # "i":I
    .end local v7    # "j":I
    :cond_1
    mul-int v10, v9, v3

    mul-int/lit16 v10, v10, 0xfa

    int-to-long v10, v10

    div-long v10, v4, v10

    long-to-int v10, v10

    return v10
.end method

.method private static green(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 88
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static isBitmapWhiteStyle(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "result":Z
    invoke-static {p0}, Lcom/android/systemui/vivo/common/keyguard/utils/BitmapUtils;->getGrayValue(Landroid/graphics/Bitmap;)I

    move-result v1

    const/16 v2, 0xb4

    if-ge v1, v2, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 36
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static red(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 80
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
