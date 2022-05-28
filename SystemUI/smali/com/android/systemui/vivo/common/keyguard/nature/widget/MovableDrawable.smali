.class public Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MovableDrawable.java"


# static fields
.field public static final OFFSET_PERCENT:F = 0.3f


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mVisibleBounds:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error dawable is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mWidth:I

    .line 23
    iput p3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mHeight:I

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mVisibleBounds:Landroid/graphics/Rect;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 26
    return-void
.end method

.method private caculateVisibleArea(F)V
    .locals 4
    .param p1, "transitionY"    # F

    .prologue
    const/4 v3, 0x0

    .line 57
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mHeight:I

    int-to-float v1, v1

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 58
    .local v0, "bottom":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mVisibleBounds:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mWidth:I

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mVisibleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public isClipped()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mVisibleBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mHeight:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(F)V
    .locals 0
    .param p1, "transitionY"    # F

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->caculateVisibleArea(F)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->invalidateSelf()V

    .line 54
    return-void
.end method

.method public reset(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 63
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mWidth:I

    .line 64
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mHeight:I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mVisibleBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->invalidateSelf()V

    .line 68
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 44
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 49
    return-void
.end method
