.class final Lcom/vivo/settings/OneHandSettings$4;
.super Lcom/vivo/settings/xml/SettingsResouce;
.source "OneHandSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/OneHandSettings;
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
    .line 223
    invoke-direct {p0}, Lcom/vivo/settings/xml/SettingsResouce;-><init>()V

    return-void
.end method


# virtual methods
.method public fixChildNode(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 246
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->isIntentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    const-class v0, Lcom/vivo/settings/OneHandSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fixIntent(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 241
    const-string v0, "android.settings.SETTINGS.SUB_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 242
    const-class v0, Lcom/vivo/settings/OneHandSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    .line 243
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
    .line 254
    invoke-virtual {p0}, Lcom/vivo/settings/OneHandSettings$4;->getXmlResouce()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/vivo/settings/xml/ItemUtils;->generatePrefNodeList(Landroid/content/Context;ILcom/vivo/settings/xml/SettingsResouce;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getXmlResouce()I
    .locals 1

    .prologue
    .line 237
    const v0, 0x7f06002a

    return v0
.end method

.method public bridge synthetic isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 223
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/OneHandSettings$4;->isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

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

    .line 227
    const-string v2, "gesture_explain"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "gesture_explain"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    :cond_0
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 228
    goto :goto_0

    .line 229
    :cond_3
    const-string v2, "vivo_keyboard"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 230
    goto :goto_0
.end method
