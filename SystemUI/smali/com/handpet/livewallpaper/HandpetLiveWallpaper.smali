.class public Lcom/handpet/livewallpaper/HandpetLiveWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "HandpetLiveWallpaper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;
    }
.end annotation


# static fields
.field private static log:Lcom/handpet/common/utils/log/ILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 45
    sget-object v0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "HandpetLiveWallpaper onCreate start"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getWallpaperModule()Lcom/vlife/plugin/module/IWallpaperModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlife/plugin/module/IWallpaperModule;->createModule()V

    .line 47
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 8

    .prologue
    .line 58
    sget-object v6, Lcom/handpet/livewallpaper/HandpetLiveWallpaper;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v7, "onCreateEngine()"

    invoke-interface {v6, v7}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getWallpaperModule()Lcom/vlife/plugin/module/IWallpaperModule;

    move-result-object v6

    invoke-interface {v6, p0}, Lcom/vlife/plugin/module/IWallpaperModule;->createWallpaperEngine(Landroid/service/wallpaper/WallpaperService;)Landroid/service/wallpaper/WallpaperService$Engine;

    move-result-object v3

    .line 60
    .local v3, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    if-nez v3, :cond_0

    .line 61
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    .local v1, "context":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "default_wallpaper.jpg"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 65
    .local v5, "is":Ljava/io/InputStream;
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;

    invoke-direct {v4, p0, v0}, Lcom/handpet/livewallpaper/HandpetLiveWallpaper$DefaultWallpaperEngine;-><init>(Lcom/handpet/livewallpaper/HandpetLiveWallpaper;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    .local v4, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    move-object v3, v4

    .line 71
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "context":Landroid/content/Context;
    .end local v4    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v3    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    :cond_0
    :goto_0
    return-object v3

    .line 67
    .restart local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Ljava/io/IOException;
    const-string v6, "WO"

    const-string v7, ""

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 52
    sget-object v0, Lcom/handpet/livewallpaper/HandpetLiveWallpaper;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "onDestroy service"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getWallpaperModule()Lcom/vlife/plugin/module/IWallpaperModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/vlife/plugin/module/IWallpaperModule;->destroyModule()V

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    const-string v1, "preview_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "previewId":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getWallpaperModule()Lcom/vlife/plugin/module/IWallpaperModule;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/vlife/plugin/module/IWallpaperModule;->setWallpaperPreviewId(Ljava/lang/String;)V

    .line 39
    .end local v0    # "previewId":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
