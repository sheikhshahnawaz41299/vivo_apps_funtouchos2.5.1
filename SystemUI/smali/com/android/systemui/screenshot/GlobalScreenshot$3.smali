.class Lcom/android/systemui/screenshot/GlobalScreenshot$3;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 796
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 801
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/SoundPool;

    move-result-object v1

    if-nez v1, :cond_0

    .line 802
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 803
    .local v0, "audioAttribute":Landroid/media/AudioAttributes;
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v2, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$002(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/media/SoundPool;)Landroid/media/SoundPool;

    .line 807
    .end local v0    # "audioAttribute":Landroid/media/AudioAttributes;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 808
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$202(Lcom/android/systemui/screenshot/GlobalScreenshot;I)I

    .line 812
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/SoundPool;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$3;)V

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 820
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 821
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->buildLayer()V

    .line 823
    sput-boolean v6, Lcom/android/systemui/screenshot/GlobalScreenshot;->isSaveImageDone:Z

    .line 824
    sput-boolean v6, Lcom/android/systemui/screenshot/GlobalScreenshot;->isAnimationEnd:Z

    .line 825
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 826
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1300(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    .line 827
    const-string v1, "TakeScreenshotService"

    const-string v2, "ScreenshotAnimation start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    return-void

    .line 810
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/media/SoundPool;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080003

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$202(Lcom/android/systemui/screenshot/GlobalScreenshot;I)I

    goto :goto_0
.end method
