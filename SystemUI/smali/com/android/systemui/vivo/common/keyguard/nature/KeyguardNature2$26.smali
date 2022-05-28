.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;
.super Ljava/lang/Thread;
.source "KeyguardNature2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateViewsColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 1982
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1983
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v1

    .line 1984
    .local v1, "kwm":Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1985
    .local v3, "width":I
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1986
    .local v0, "height":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1987
    .local v4, "time":J
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    div-int/lit8 v7, v3, 0x5

    div-int/lit8 v8, v0, 0xc

    mul-int/lit8 v9, v3, 0x3

    div-int/lit8 v9, v9, 0x5

    div-int/lit8 v10, v0, 0x4

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getGrayValue(IIII)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6302(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)I

    .line 1988
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    div-int/lit8 v7, v3, 0x4

    mul-int/lit8 v8, v0, 0x2

    div-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v9, v3, 0x2

    div-int/lit8 v10, v0, 0x3

    invoke-virtual {v1, v7, v8, v9, v10}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getGrayValue(IIII)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)I

    .line 1989
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 1990
    const-string v6, "KeyguardNature2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "width = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", take time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1995
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$26;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1996
    return-void
.end method
