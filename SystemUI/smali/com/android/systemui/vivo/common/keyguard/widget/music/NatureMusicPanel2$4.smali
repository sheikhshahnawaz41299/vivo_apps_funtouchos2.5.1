.class Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;
.super Ljava/lang/Object;
.source "NatureMusicPanel2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->startResetAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

.field final synthetic val$isNext:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->val$isNext:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 306
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->getSweepAngle()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->getSweepAngle()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    sub-float v0, v2, v3

    .line 308
    .local v0, "currentAngle":F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    .line 309
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setSweepAngle(F)V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->invalidate()V

    .line 311
    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->val$isNext:Z

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$002(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z

    .line 313
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->val$isNext:Z

    if-eqz v1, :cond_3

    .line 314
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->musicDoNext()V

    .line 319
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 321
    .end local v0    # "currentAngle":F
    :cond_1
    return-void

    .restart local v0    # "currentAngle":F
    :cond_2
    move v0, v1

    .line 308
    goto :goto_0

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->musicDoPrevOrDelete()V

    goto :goto_1
.end method
