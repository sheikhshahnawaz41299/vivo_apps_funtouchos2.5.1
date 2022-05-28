.class Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable$1;
.super Ljava/lang/Object;
.source "VivoRotateDrawable.java"

# interfaces
.implements Landroid/animation/TimeAnimator$TimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeUpdate(Landroid/animation/TimeAnimator;JJ)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/TimeAnimator;
    .param p2, "totalTime"    # J
    .param p4, "deltaTime"    # J

    .prologue
    const/high16 v2, 0x41700000    # 15.0f

    .line 51
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mFactor:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mFactor:Ljava/lang/Float;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->invalidateSelf()V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable$1;->this$0:Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mFactor:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mFactor:Ljava/lang/Float;

    .line 56
    return-void
.end method
