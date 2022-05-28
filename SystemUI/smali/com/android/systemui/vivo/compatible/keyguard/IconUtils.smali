.class public Lcom/android/systemui/vivo/compatible/keyguard/IconUtils;
.super Ljava/lang/Object;
.source "IconUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRedrawIcon(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {p1, p0}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxy;->createRedrawIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
