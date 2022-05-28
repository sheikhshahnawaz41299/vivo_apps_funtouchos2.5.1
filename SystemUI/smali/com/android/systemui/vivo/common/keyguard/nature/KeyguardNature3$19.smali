.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;
.super Ljava/lang/Thread;
.source "KeyguardNature3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColorLiveWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0

    .prologue
    .line 1478
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    .line 1480
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1481
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v2

    .line 1482
    .local v2, "kwm":Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    invoke-virtual {v2}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getLiveWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1483
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1484
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1485
    .local v1, "height":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1486
    .local v6, "time":J
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    div-int/lit8 v9, v5, 0x5

    div-int/lit8 v10, v1, 0xc

    mul-int/lit8 v11, v5, 0x3

    div-int/lit8 v11, v11, 0x5

    div-int/lit8 v12, v1, 0x4

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getGrayValueLiveWallpaper(IIII)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6502(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;I)I

    .line 1487
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    div-int/lit8 v9, v5, 0x4

    mul-int/lit8 v10, v1, 0x2

    div-int/lit8 v10, v10, 0x3

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v11, v5, 0x2

    div-int/lit8 v12, v1, 0x3

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getGrayValueLiveWallpaper(IIII)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6602(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;I)I

    .line 1488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 1489
    const-string v8, "KeyguardNature3"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateViewsColorLiveWallpaper  width = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", height = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", top = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bottom = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", take time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1493
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1494
    const/4 v0, 0x0

    .line 1496
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1497
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1498
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v13, v14, v14}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 1499
    .local v4, "msg0":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1506
    .end local v4    # "msg0":Landroid/os/Message;
    :goto_0
    return-void

    .line 1501
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 1502
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I

    move-result v10

    invoke-virtual {v8, v13, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1503
    .local v3, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
