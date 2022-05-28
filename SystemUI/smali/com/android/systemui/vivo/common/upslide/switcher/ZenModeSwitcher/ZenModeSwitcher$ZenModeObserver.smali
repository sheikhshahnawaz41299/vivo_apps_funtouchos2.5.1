.class final Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ZenModeObserver"
.end annotation


# instance fields
.field private final ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

.field private final ZEN_MODE_URI:Landroid/net/Uri;

.field private mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 132
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    .line 133
    invoke-direct {p0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 127
    const-string v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    .line 128
    const-string v0, "zen_mode_config_etag"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    .line 130
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 134
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 135
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 156
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->ZEN_MODE_CONFIG_ETAG_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/ZenModeSwitcher/ZenModeSwitcher$ZenModeObserver;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 144
    return-void
.end method
