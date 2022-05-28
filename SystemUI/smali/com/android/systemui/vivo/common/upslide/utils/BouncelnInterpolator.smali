.class public Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;
.super Ljava/lang/Object;
.source "BouncelnInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mBounceLevel:F

.field private mInput:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "bounceLevel"    # F

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->mBounceLevel:F

    .line 9
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->mBounceLevel:F

    .line 10
    return-void
.end method


# virtual methods
.method public getAlphaInterpolation()F
    .locals 3

    .prologue
    .line 17
    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->mInput:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->mInput:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->mInput:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->mInput:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->mInput:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public getInterpolation(F)F
    .locals 6
    .param p1, "input"    # F

    .prologue
    .line 12
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->mInput:F

    .line 13
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x40600000    # 3.5f

    mul-float/2addr v2, p1

    float-to-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-float v4, p1

    const/high16 v5, 0x40a00000    # 5.0f

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;->mBounceLevel:F

    float-to-double v4, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
