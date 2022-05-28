.class public Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;
.super Lcom/vivo/settings/xml/SettingsResouce;
.source "VivoApplicationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/VivoApplicationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MySettingsResouce"
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/vivo/settings/xml/SettingsResouce;-><init>()V

    return-void
.end method


# virtual methods
.method public fixApplicationSettingsArgs(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v7, "extra"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "extra":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 208
    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 209
    const/4 v5, 0x0

    .line 210
    .local v5, "key":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, "extras":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 212
    .local v1, "ex":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v7, "key:"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 213
    const-string v7, "key:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 217
    .end local v1    # "ex":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 218
    const-string v7, "ApplicationSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fixApplicationSettingsArgs pref key is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v7, "installed_apps"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 221
    const-string v7, "running_apps"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 222
    const-string v7, "classname"

    const-string v8, "com.android.settings.Settings$RunningServicesActivity"

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    .restart local v1    # "ex":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 223
    .end local v1    # "ex":Ljava/lang/String;
    :cond_4
    const-string v7, "all_apps"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 224
    const-string v7, "classname"

    const-string v8, "com.android.settings.Settings$StorageUseActivity"

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :cond_5
    const-string v7, "moveable_app"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 226
    const-string v7, "classname"

    const-string v8, "com.android.settings.applications.AppInSdcard"

    invoke-virtual {p2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public fixChildNode(Lcom/vivo/settings/xml/Node;)V
    .locals 2
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 191
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->isIntentEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    const-string v0, "android.settings.SETTINGS.SUB_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fixIntent(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 186
    const-string v0, "android.settings.APPLICATION_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 187
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
    .line 171
    invoke-virtual {p0}, Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;->getXmlResouce()I

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
    .line 157
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;->getSpecialFilter(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialFilter(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v0, "moveable_app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sdcard"

    aput-object v2, v0, v1

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXmlResouce()I
    .locals 1

    .prologue
    .line 176
    const v0, 0x7f060051

    return v0
.end method

.method public bridge synthetic isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "app_install_location"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    .line 163
    :cond_0
    const-string v0, "moveable_app"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
