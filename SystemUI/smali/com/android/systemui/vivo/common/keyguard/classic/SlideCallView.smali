.class Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;
.super Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;
.source "SlideColorTab.java"


# static fields
.field private static mUnreadCallColorCount:I

.field private static final mUreadCallIconBg:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mUnreadCallColorCount:I

    .line 306
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mUreadCallIconBg:[I

    return-void

    :array_0
    .array-data 4
        0x7f02024c
        0x7f02024d
        0x7f02024e
        0x7f02024f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 313
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideMsgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 314
    return-void
.end method


# virtual methods
.method protected changeColorCount()V
    .locals 2

    .prologue
    .line 331
    sget v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mUnreadCallColorCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mUnreadCallColorCount:I

    .line 332
    sget v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mUnreadCallColorCount:I

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mUreadCallIconBg:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 333
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mUnreadCallColorCount:I

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->getBg()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->bg:Landroid/graphics/Bitmap;

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->invalidate()V

    .line 338
    return-void
.end method

.method protected getBg()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 321
    const v1, 0x7f120001

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->strId:I

    .line 323
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 324
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02025a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->unreadIcon:Landroid/graphics/Bitmap;

    .line 325
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mUreadCallIconBg:[I

    sget v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->mUnreadCallColorCount:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->ureadIconBg:Landroid/graphics/Bitmap;

    .line 327
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideCallView;->ureadIconBg:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return-object v0
.end method
