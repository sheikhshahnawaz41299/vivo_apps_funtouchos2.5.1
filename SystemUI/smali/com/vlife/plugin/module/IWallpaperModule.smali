.class public interface abstract Lcom/vlife/plugin/module/IWallpaperModule;
.super Ljava/lang/Object;
.source "IWallpaperModule.java"

# interfaces
.implements Lcom/vlife/plugin/module/IModule;


# virtual methods
.method public abstract createWallpaperEngine(Landroid/service/wallpaper/WallpaperService;)Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public abstract createWallpaperInfoActivity()Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract getShowChooseWallpaperActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract getSpotifyActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract getWallpaperPackageActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract getWallpaperServiceName()Ljava/lang/String;
.end method

.method public abstract getWallpaperSetPreviewActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract setWallpaperPreviewId(Ljava/lang/String;)V
.end method
