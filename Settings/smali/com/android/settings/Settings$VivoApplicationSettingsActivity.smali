.class public Lcom/android/settings/Settings$VivoApplicationSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VivoApplicationSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 123
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v2}, Lcom/vivo/settings/xml/ItemUtils;->getExtraFragment(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "fragment":Ljava/lang/String;
    const-class v3, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    :goto_0
    return-object v2

    .line 127
    :cond_0
    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 128
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 129
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_1
    sget-object v3, Lcom/vivo/settings/applications/VivoApplicationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;

    invoke-virtual {v3, v2, v0}, Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;->fixApplicationSettingsArgs(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 132
    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 134
    const-string v3, ":settings:show_fragment"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
