.class public Lcom/handpet/wallpaper/support/SetWallpaperService;
.super Lcom/handpet/planting/utils/VlifeRootService;
.source "SetWallpaperService.java"

# interfaces
.implements Lcom/vlife/plugin/module/impl/ISuicideFactor;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/handpet/planting/utils/VlifeRootService;-><init>()V

    return-void
.end method
