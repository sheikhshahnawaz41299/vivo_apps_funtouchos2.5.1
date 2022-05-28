.class Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot$3;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 1
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$3$1;->this$1:Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot$3;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 816
    return-void
.end method
