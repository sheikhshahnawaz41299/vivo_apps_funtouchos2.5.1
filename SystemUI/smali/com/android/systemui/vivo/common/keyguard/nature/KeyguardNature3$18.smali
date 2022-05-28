.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;
.super Ljava/lang/Thread;
.source "KeyguardNature3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColor()V
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
    .line 1449
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    .line 1451
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1452
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v1

    .line 1453
    .local v1, "kwm":Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1454
    .local v6, "width":I
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1455
    .local v0, "height":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1456
    .local v4, "time":J
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    div-int/lit8 v8, v6, 0x5

    div-int/lit8 v9, v0, 0xc

    mul-int/lit8 v10, v6, 0x3

    div-int/lit8 v10, v10, 0x5

    div-int/lit8 v11, v0, 0x4

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getGrayValue(IIII)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6502(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;I)I

    .line 1457
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    div-int/lit8 v8, v6, 0x4

    mul-int/lit8 v9, v0, 0x2

    div-int/lit8 v9, v9, 0x3

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v10, v6, 0x2

    div-int/lit8 v11, v0, 0x3

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getGrayValue(IIII)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6602(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;I)I

    .line 1458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    .line 1459
    const-string v7, "KeyguardNature3"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", top = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", bottom = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", take time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1464
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1465
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v12, v13, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 1466
    .local v3, "msg0":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1473
    .end local v3    # "msg0":Landroid/os/Message;
    :goto_0
    return-void

    .line 1468
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1469
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$6600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I

    move-result v9

    invoke-virtual {v7, v12, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1470
    .local v2, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
