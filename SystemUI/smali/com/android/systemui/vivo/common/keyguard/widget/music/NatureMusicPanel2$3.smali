.class Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;
.super Ljava/lang/Object;
.source "NatureMusicPanel2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide v6, 0x4076800000000000L    # 360.0

    .line 276
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getDuration()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v2, v2

    mul-double/2addr v2, v6

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getDuration()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 278
    .local v0, "angle":F
    float-to-double v2, v0

    sub-double v2, v6, v2

    double-to-float v0, v2

    .line 279
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setSweepAngle(F)V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->invalidate()V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$1700(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x1e

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    .end local v0    # "angle":F
    :cond_0
    return-void
.end method
