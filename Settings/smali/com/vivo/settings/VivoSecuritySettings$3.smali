.class final Lcom/vivo/settings/VivoSecuritySettings$3;
.super Lcom/vivo/settings/xml/SettingsResouce;
.source "VivoSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoSecuritySettings;
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


# instance fields
.field private final DISABLE_INTENT_KEYS:[Ljava/lang/String;

.field private final VISIT_KEYS:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 469
    invoke-direct {p0}, Lcom/vivo/settings/xml/SettingsResouce;-><init>()V

    .line 488
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "toggle_install_title"

    aput-object v1, v0, v2

    const-string v1, "reset_credentials"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$3;->DISABLE_INTENT_KEYS:[Ljava/lang/String;

    .line 512
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "visit_mode"

    aput-object v1, v0, v2

    const-string v1, "unlock_set_or_change"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$3;->VISIT_KEYS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fixChildNode(Lcom/vivo/settings/xml/Node;)V
    .locals 2
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$3;->VISIT_KEYS:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const-string v0, "visit"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->addFilter(Ljava/lang/String;)V

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->isIntentEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    :cond_1
    :goto_0
    return-void

    .line 520
    :cond_2
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    const-class v0, Lcom/vivo/settings/VivoSecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fixIntent(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 508
    const-string v0, "android.settings.SETTINGS.SUB_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 509
    const-class v0, Lcom/vivo/settings/VivoSecuritySettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public bridge synthetic generalRes(Ljava/lang/Object;I)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I

    .prologue
    .line 469
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/VivoSecuritySettings$3;->generalRes(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public generalRes(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 526
    const-string v0, "toggle_install_title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    invoke-static {}, Lcom/android/settings/AppFeature;->isDeviceSupportTF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    const p2, 0x7f0b084c

    .line 531
    .end local p2    # "def":I
    :cond_0
    return p2
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
    .line 499
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings$3;->getXmlResouce()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/vivo/settings/xml/ItemUtils;->generatePrefNodeList(Landroid/content/Context;ILcom/vivo/settings/xml/SettingsResouce;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXmlResouce()I
    .locals 1

    .prologue
    .line 504
    const v0, 0x7f060060

    return v0
.end method

.method public bridge synthetic isIntentEnable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 469
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoSecuritySettings$3;->isIntentEnable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIntentEnable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$3;->DISABLE_INTENT_KEYS:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 469
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/VivoSecuritySettings$3;->isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 472
    const-string v2, "eye_print"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vivo.intent.action.start_vivoeye_prefrenece"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/vivo/settings/VivoUtils;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    .line 485
    :cond_0
    :goto_0
    return v1

    .line 474
    :cond_1
    const-string v2, "manage_notification_access"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 476
    const-string v2, "visible_pattern"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 478
    const-string v2, "screen_pinning_settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v0

    .line 479
    goto :goto_0

    .line 480
    :cond_2
    const-string v2, "encryption"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 482
    const-string v2, "unlock_set_or_change"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 483
    invoke-static {p1}, Lcom/android/settings/AppFeature;->isSupportFinger(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v0

    .line 485
    goto :goto_0
.end method
