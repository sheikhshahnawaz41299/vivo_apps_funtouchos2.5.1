.class public final Lcom/android/systemui/vivo/common/utils/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static getDensityDpi(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const/16 v1, 0xf0

    .line 27
    .local v1, "result":I
    if-nez p0, :cond_0

    move v2, v1

    .line 36
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 30
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 31
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0x21c

    if-eq v3, v4, :cond_1

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0x3c0

    if-ne v3, v4, :cond_2

    .line 32
    :cond_1
    const/16 v1, 0x10e

    :goto_1
    move v2, v1

    .line 36
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 34
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method
