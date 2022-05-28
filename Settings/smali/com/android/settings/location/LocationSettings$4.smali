.class final Lcom/android/settings/location/LocationSettings$4;
.super Lcom/vivo/settings/xml/SettingsResouce;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vivo/settings/xml/SettingsResouce",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/vivo/settings/xml/SettingsResouce;-><init>()V

    return-void
.end method


# virtual methods
.method public fixChildNode(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 424
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->isIntentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fixIntent(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 419
    const-string v0, "android.settings.SETTINGS.SUB_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 420
    const-class v0, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public getSearchNodes(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings$4;->getXmlResouce()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/vivo/settings/xml/ItemUtils;->generatePrefNodeList(Landroid/content/Context;ILcom/vivo/settings/xml/SettingsResouce;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSpecialFilter(Landroid/content/Context;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 391
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/location/LocationSettings$4;->getSpecialFilter(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialFilter(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string v0, "managed_profile_location_switch"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "manager"

    aput-object v2, v0, v1

    .line 406
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXmlResouce()I
    .locals 1

    .prologue
    .line 415
    const v0, 0x7f060026

    return v0
.end method

.method public bridge synthetic isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 391
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/location/LocationSettings$4;->isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 394
    const-string v0, "agps_settings_screen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v0

    .line 399
    :goto_0
    return v0

    .line 396
    :cond_0
    const-string v0, "location_switch"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
