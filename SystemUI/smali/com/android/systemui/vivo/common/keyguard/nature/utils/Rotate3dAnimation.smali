.class public Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;
.super Landroid/view/animation/Animation;
.source "Rotate3dAnimation.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mDepthZ:F

.field private final mFromDegrees:F

.field private mRevTime:F

.field private final mReverse:Z

.field private mRotateY:Z

.field private final mToDegrees:F


# direct methods
.method public constructor <init>(FFFFFZ)V
    .locals 1
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "depthZ"    # F
    .param p6, "reverse"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 22
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mRevTime:F

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mRotateY:Z

    .line 47
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mFromDegrees:F

    .line 48
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mToDegrees:F

    .line 49
    iput p3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mCenterX:F

    .line 50
    iput p4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mCenterY:F

    .line 51
    iput p5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mDepthZ:F

    .line 52
    iput-boolean p6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mReverse:Z

    .line 53
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 11
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    .line 63
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mFromDegrees:F

    .line 65
    .local v4, "fromDegrees":F
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mToDegrees:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_2

    .line 66
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mToDegrees:F

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .line 67
    .local v3, "degrees":F
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mToDegrees:F

    cmpg-float v6, v3, v6

    if-gez v6, :cond_1

    .line 68
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mRevTime:F

    cmpl-float v6, v6, p1

    if-lez v6, :cond_0

    .line 69
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mRevTime:F

    .line 71
    :cond_0
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mToDegrees:F

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mToDegrees:F

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mRevTime:F

    sub-float v8, p1, v8

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mRevTime:F

    sub-float v8, v10, v8

    div-float/2addr v7, v8

    sub-float v3, v6, v7

    .line 77
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mCenterX:F

    .line 78
    .local v1, "centerX":F
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mCenterY:F

    .line 79
    .local v2, "centerY":F
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 81
    .local v0, "camera":Landroid/graphics/Camera;
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    .line 83
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 84
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mReverse:Z

    if-eqz v6, :cond_3

    .line 85
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mDepthZ:F

    mul-float/2addr v6, p1

    invoke-virtual {v0, v9, v9, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 89
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mRotateY:Z

    if-eqz v6, :cond_4

    .line 90
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateY(F)V

    .line 94
    :goto_2
    invoke-virtual {v0, v5}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 95
    const/high16 v6, -0x3e200000    # -28.0f

    invoke-virtual {v0, v9, v9, v6}, Landroid/graphics/Camera;->setLocation(FFF)V

    .line 96
    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 98
    neg-float v6, v1

    neg-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 99
    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 100
    return-void

    .line 74
    .end local v0    # "camera":Landroid/graphics/Camera;
    .end local v1    # "centerX":F
    .end local v2    # "centerY":F
    .end local v3    # "degrees":F
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_2
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mToDegrees:F

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    add-float v3, v4, v6

    .restart local v3    # "degrees":F
    goto :goto_0

    .line 87
    .restart local v0    # "camera":Landroid/graphics/Camera;
    .restart local v1    # "centerX":F
    .restart local v2    # "centerY":F
    .restart local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_3
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mDepthZ:F

    sub-float v7, v10, p1

    mul-float/2addr v6, v7

    invoke-virtual {v0, v9, v9, v6}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1

    .line 92
    :cond_4
    invoke-virtual {v0, v3}, Landroid/graphics/Camera;->rotateX(F)V

    goto :goto_2
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 58
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mCamera:Landroid/graphics/Camera;

    .line 59
    return-void
.end method

.method public setRotateY()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;->mRotateY:Z

    .line 104
    return-void
.end method
