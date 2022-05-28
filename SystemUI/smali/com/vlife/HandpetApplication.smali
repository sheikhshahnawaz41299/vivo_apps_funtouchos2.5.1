.class public Lcom/vlife/HandpetApplication;
.super Lcom/vlife/plugin/module/abs/AbstractModuleApplication;
.source "HandpetApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vlife/plugin/module/abs/AbstractModuleApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 14
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "error_share"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 16
    const-string v2, "wallpaper_list_id_show"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "push_social_info"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "panel_inform"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 17
    const-string v2, "dev_statistic"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vlife_homekey"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "setting_in_panel"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "curl_vlife_store"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 18
    const-string v2, "panel_inform"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "engin_fast"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "log"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "render_show_status"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "stage_push_convenience"

    aput-object v2, v0, v1

    .line 14
    return-object v0
.end method

.method public enable()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 26
    const-string v2, "lock_screen_and_wallpaper_independent"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 27
    const-string v2, "wallpaper_preview"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "run_in_jar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 28
    const-string v2, "engine_default_unlock_prop"

    aput-object v2, v0, v1

    .line 25
    return-object v0
.end method
