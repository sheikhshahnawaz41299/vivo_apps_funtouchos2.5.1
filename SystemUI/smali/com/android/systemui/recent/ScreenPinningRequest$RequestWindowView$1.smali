.class Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$1;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$1;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 180
    .local v0, "c":I
    iget-object v1, p0, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView$1;->this$1:Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;

    invoke-static {v1}, Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;->access$100(Lcom/android/systemui/recent/ScreenPinningRequest$RequestWindowView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 181
    return-void
.end method
