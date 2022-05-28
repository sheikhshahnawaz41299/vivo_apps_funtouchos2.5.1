.class public Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;
.super Ljava/lang/Object;
.source "IconBitmapHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconBitmapHelper"

.field private static sInstance:Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageUtil:Lcom/android/systemui/vivo/common/utils/ImageUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->mContext:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/vivo/common/utils/ImageUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->mImageUtil:Lcom/android/systemui/vivo/common/utils/ImageUtil;

    .line 27
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    sget-object v0, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->sInstance:Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->sInstance:Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;

    .line 21
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->sInstance:Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;

    return-object v0
.end method


# virtual methods
.method public getBitmapForShade(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->mImageUtil:Lcom/android/systemui/vivo/common/utils/ImageUtil;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/IconBitmapHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->createRedrawIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
