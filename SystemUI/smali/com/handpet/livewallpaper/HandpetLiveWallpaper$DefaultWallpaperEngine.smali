.class public Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "HandpetLiveWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handpet/livewallpaper/HandpetLiveWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultWallpaperEngine"
.end annotation


# instance fields
.field private holder:Landroid/view/SurfaceHolder;

.field private imageBitmap:Landroid/graphics/Bitmap;

.field private log:Lcom/handpet/common/utils/log/ILogger;

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/handpet/livewallpaper/HandpetLiveWallpaper;

.field private xOffset:F


# direct methods
.method public constructor <init>(Lcom/handpet/livewallpaper/HandpetLiveWallpaper;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->this$0:Lcom/handpet/livewallpaper/HandpetLiveWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 79
    const-class v0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 91
    iput-object p2, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->imageBitmap:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method private draw()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 118
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->imageBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->holder:Landroid/view/SurfaceHolder;

    if-eqz v4, :cond_0

    .line 124
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 125
    .local v0, "lockCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    .line 126
    .local v3, "width":I
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v2, v4, v3

    .line 127
    .local v2, "slideWidth":I
    int-to-float v4, v2

    iget v5, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->xOffset:F

    mul-float v1, v4, v5

    .line 128
    .local v1, "offsetArea":F
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v5, "[onOffsetsChanged(......)] [slideWidth:{}] [offsetArea:{}]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    .line 128
    invoke-interface {v4, v5, v6}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->paint:Landroid/graphics/Paint;

    if-nez v4, :cond_2

    .line 131
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->paint:Landroid/graphics/Paint;

    .line 132
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    :cond_2
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->imageBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v9, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 135
    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->imageBitmap:Landroid/graphics/Bitmap;

    neg-float v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v4, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v4

    .line 139
    iget-object v5, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v5, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 140
    throw v4
.end method


# virtual methods
.method public onOffsetsChanged(FFFFII)V
    .locals 2
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "[onOffsetsChanged(.)]"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 113
    iput p1, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->xOffset:F

    .line 114
    invoke-direct {p0}, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->draw()V

    .line 115
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->holder:Landroid/view/SurfaceHolder;

    .line 97
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 98
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 103
    iget-object v0, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->holder:Landroid/view/SurfaceHolder;

    if-ne v0, p1, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;->holder:Landroid/view/SurfaceHolder;

    .line 106
    :cond_0
    return-void
.end method
