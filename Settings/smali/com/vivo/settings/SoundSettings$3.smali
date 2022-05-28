.class final Lcom/vivo/settings/SoundSettings$3;
.super Lcom/vivo/settings/xml/SettingsResouce;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/SoundSettings;
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
    .line 1058
    invoke-direct {p0}, Lcom/vivo/settings/xml/SettingsResouce;-><init>()V

    return-void
.end method


# virtual methods
.method public fixChildNode(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 1092
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->isIntentEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    const-class v0, Lcom/vivo/settings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fixIntent(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 1087
    const-string v0, "android.settings.SETTINGS.SUB_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 1088
    const-class v0, Lcom/vivo/settings/SoundSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    .line 1089
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
    .line 1083
    invoke-virtual {p0}, Lcom/vivo/settings/SoundSettings$3;->getXmlResouce()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/vivo/settings/xml/ItemUtils;->generatePrefNodeList(Landroid/content/Context;ILcom/vivo/settings/xml/SettingsResouce;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXmlResouce()I
    .locals 1

    .prologue
    .line 1102
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060040

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f06003f

    goto :goto_0
.end method

.method public bridge synthetic isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1058
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/SoundSettings$3;->isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1061
    const-string v2, "hifi_settings"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1062
    invoke-static {}, Lcom/android/settings/AppFeature;->isHifiGlobleEnabled()Z

    move-result v1

    .line 1078
    :cond_0
    :goto_0
    return v1

    .line 1063
    :cond_1
    const-string v2, "srs_maxv"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportSRSMaxV()Z

    move-result v1

    goto :goto_0

    .line 1065
    :cond_2
    const-string v2, "key_dual_spkr"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1066
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportDualSpkr()Z

    move-result v1

    goto :goto_0

    .line 1067
    :cond_3
    const-string v2, "sound_ringtone_sim2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1069
    const-string v2, "sound_messages_sim2"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1071
    const-string v2, "vivo_sound"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1072
    new-instance v2, Landroid/content/Intent;

    const-string v3, "vivo.intent.action.VIVO_SOUND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/vivo/settings/VivoUtils;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportSuperAudio()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    .line 1073
    :cond_5
    const-string v1, "speaker_boost"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1074
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportSpeakerBoost()Z

    move-result v1

    goto :goto_0

    .line 1075
    :cond_6
    const-string v1, "ktv_settings"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1076
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportKTV()Z

    move-result v1

    goto :goto_0

    :cond_7
    move v1, v0

    .line 1078
    goto :goto_0
.end method
