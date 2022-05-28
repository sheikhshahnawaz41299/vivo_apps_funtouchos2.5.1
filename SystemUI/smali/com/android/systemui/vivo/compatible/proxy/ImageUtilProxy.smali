.class public Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxy;
.super Ljava/lang/Object;
.source "ImageUtilProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "id"    # I

    .prologue
    .line 15
    invoke-static {p0}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/vivo/content/ImageUtil;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createRedrawIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcIconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vivo/content/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createScaleIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/VivoImageUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->createScaleIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
