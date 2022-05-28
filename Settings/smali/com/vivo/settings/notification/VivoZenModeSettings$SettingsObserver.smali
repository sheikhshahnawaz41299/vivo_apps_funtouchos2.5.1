.class final Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VivoZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/notification/VivoZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;


# direct methods
.method public constructor <init>(Lcom/vivo/settings/notification/VivoZenModeSettings;)V
    .locals 1

    .prologue
    .line 384
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;

    .line 385
    invoke-static {p1}, Lcom/vivo/settings/notification/VivoZenModeSettings;->access$000(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 381
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 382
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 386
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 399
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 400
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;

    invoke-static {v0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->access$400(Lcom/vivo/settings/notification/VivoZenModeSettings;)V

    .line 401
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;

    invoke-static {v0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->access$100(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 390
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;

    invoke-static {v0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->access$200(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 391
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->this$0:Lcom/vivo/settings/notification/VivoZenModeSettings;

    invoke-static {v0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->access$300(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 395
    return-void
.end method
