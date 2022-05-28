.class public Lcom/vivo/settings/xml/ItemUtils;
.super Ljava/lang/Object;
.source "ItemUtils.java"


# static fields
.field private static final EXTRA_OTHERS_SELECT:Ljava/lang/String; = "extra_select"

.field private static final TAG:Ljava/lang/String; = "ItemUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPreferenceIndex(Landroid/preference/PreferenceGroup;Ljava/lang/String;)I
    .locals 5
    .param p0, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 138
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 139
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 140
    .local v2, "pref":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 150
    .end local v0    # "i":I
    .end local v2    # "pref":Landroid/preference/Preference;
    :goto_1
    return v0

    .line 143
    .restart local v0    # "i":I
    .restart local v2    # "pref":Landroid/preference/Preference;
    :cond_0
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_1

    .line 144
    check-cast v2, Landroid/preference/PreferenceGroup;

    .end local v2    # "pref":Landroid/preference/Preference;
    invoke-static {v2, p1}, Lcom/vivo/settings/xml/ItemUtils;->findPreferenceIndex(Landroid/preference/PreferenceGroup;Ljava/lang/String;)I

    move-result v1

    .line 145
    .local v1, "index":I
    if-eq v1, v3, :cond_1

    .line 146
    add-int/2addr v0, v1

    goto :goto_1

    .line 138
    .end local v1    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 150
    goto :goto_1
.end method

.method public static fixExtraNode(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Lcom/vivo/settings/xml/Node;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 269
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 270
    :cond_0
    const/4 v10, 0x0

    .line 292
    :goto_0
    return v10

    .line 272
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 273
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v10}, Lcom/vivo/settings/xml/Node;->setPackage(Ljava/lang/String;)V

    .line 274
    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v10}, Lcom/vivo/settings/xml/Node;->setClassName(Ljava/lang/String;)V

    .line 276
    :try_start_0
    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 277
    .local v9, "resources":Landroid/content/res/Resources;
    invoke-static {}, Lcom/vivo/settings/xml/Node;->getSupportLocals()[Ljava/util/Locale;

    move-result-object v7

    .line 278
    .local v7, "locales":[Ljava/util/Locale;
    move-object v0, v7

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v5, v0, v4

    .line 279
    .local v5, "l":Ljava/util/Locale;
    if-nez v5, :cond_2

    .line 278
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 283
    .local v1, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 284
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iput-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 285
    invoke-virtual {v9, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 286
    iget-object v10, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v5, v10}, Lcom/vivo/settings/xml/Node;->setDescription(Ljava/util/Locale;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 288
    .end local v0    # "arr$":[Ljava/util/Locale;
    .end local v1    # "configuration":Landroid/content/res/Configuration;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "i$":I
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "len$":I
    .end local v7    # "locales":[Ljava/util/Locale;
    .end local v9    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .line 289
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "ItemUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get extra items title "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v10, 0x1

    invoke-virtual {p2, v10}, Lcom/vivo/settings/xml/Node;->setStringResourceExecuted(Z)V

    .line 292
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public static fixExtraXml(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;Lcom/vivo/settings/xml/Node;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "node"    # Lcom/vivo/settings/xml/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;",
            "Lcom/vivo/settings/xml/Node;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/xml/Node;>;"
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 212
    :cond_0
    const/4 v9, 0x0

    .line 265
    :goto_0
    return v9

    .line 214
    :cond_1
    const/4 v6, 0x0

    .line 215
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x0

    .line 216
    .local v7, "xmlPullParser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 217
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v9, 0x80

    invoke-virtual {v5, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 218
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 219
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 221
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    if-nez v6, :cond_3

    .line 222
    const/4 v9, 0x0

    goto :goto_0

    .line 224
    :cond_3
    const/4 v8, 0x0

    .line 225
    .local v8, "xmlResouce":I
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 226
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_7

    .line 227
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 228
    .local v3, "metaData":Landroid/os/Bundle;
    if-eqz v3, :cond_6

    .line 229
    const-string v9, "search_xml"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 236
    .end local v3    # "metaData":Landroid/os/Bundle;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xml resouce is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 237
    if-lez v8, :cond_4

    .line 239
    :try_start_0
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 247
    :cond_4
    :goto_2
    if-eqz v7, :cond_9

    .line 248
    const-string v9, "xmlPullParser not null start execute"

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 249
    invoke-static {v7}, Lcom/vivo/settings/xml/XmlReader;->readNodeXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v4

    .line 250
    .local v4, "nodes2":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/xml/Node;>;"
    if-eqz v4, :cond_5

    .line 251
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 252
    invoke-interface {p2, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 253
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const/4 v9, 0x0

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vivo/settings/xml/Node;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/vivo/settings/xml/Node;->setIsCategory(Z)V

    .line 265
    .end local v4    # "nodes2":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/xml/Node;>;"
    :cond_5
    :goto_3
    const/4 v9, 0x1

    goto :goto_0

    .line 231
    .restart local v3    # "metaData":Landroid/os/Bundle;
    :cond_6
    const-string v9, "metadata is null"

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    goto :goto_1

    .line 234
    .end local v3    # "metaData":Landroid/os/Bundle;
    :cond_7
    const-string v9, "activity info is null"

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    goto :goto_1

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v9, "ItemUtils"

    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 243
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 244
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "ItemUtils"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 255
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "nodes2":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/xml/Node;>;"
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    .line 256
    invoke-virtual {p3, v4}, Lcom/vivo/settings/xml/Node;->addChildren(Ljava/util/List;)V

    .line 257
    const/4 v9, 0x1

    invoke-virtual {p3, v9}, Lcom/vivo/settings/xml/Node;->setIsCategory(Z)V

    goto :goto_3

    .line 260
    .end local v4    # "nodes2":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/xml/Node;>;"
    :cond_9
    if-eqz v6, :cond_5

    .line 261
    const-string v9, "xmlPullPareser is null and resolveInfo not null use package xml file"

    invoke-static {v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 262
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/bbkcore/search/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/vivo/settings/xml/Node;->setXmlPath(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static generatePrefNodeList(Landroid/content/Context;ILcom/vivo/settings/xml/SettingsResouce;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xmlSourceRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/vivo/settings/xml/SettingsResouce",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/vivo/settings/xml/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "settingsResouce":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 296
    invoke-static {p0, p1}, Lcom/vivo/settings/xml/XmlReader;->loadPreferencesFromResource(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v5

    .line 298
    .local v5, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/xml/Node;>;"
    const/4 v2, 0x0

    .line 300
    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 301
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vivo/settings/xml/Node;

    .line 302
    .local v4, "n":Lcom/vivo/settings/xml/Node;
    invoke-virtual {v4}, Lcom/vivo/settings/xml/Node;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 304
    invoke-virtual {p2, p0, v3}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 305
    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {p2, v3}, Lcom/vivo/settings/xml/SettingsResouce;->isIntentEnable(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 309
    invoke-virtual {v4, v7}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v4, v7}, Lcom/vivo/settings/xml/Node;->setPackage(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v4, v7}, Lcom/vivo/settings/xml/Node;->setClassName(Ljava/lang/String;)V

    .line 312
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/vivo/settings/xml/Node;->setIsCategory(Z)V

    .line 314
    :cond_1
    invoke-virtual {p2, p0, v3}, Lcom/vivo/settings/xml/SettingsResouce;->getSpecialFilter(Landroid/content/Context;Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "filter":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 316
    invoke-virtual {v4, v1}, Lcom/vivo/settings/xml/Node;->addFilter([Ljava/lang/String;)V

    .line 318
    :cond_2
    invoke-virtual {v4}, Lcom/vivo/settings/xml/Node;->getStrRes()I

    move-result v6

    invoke-virtual {p2, v3, v6}, Lcom/vivo/settings/xml/SettingsResouce;->generalRes(Ljava/lang/Object;I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/vivo/settings/xml/Node;->setStrRes(I)V

    .line 319
    invoke-virtual {v4}, Lcom/vivo/settings/xml/Node;->isCategory()Z

    move-result v6

    invoke-virtual {p2, v3, v6}, Lcom/vivo/settings/xml/SettingsResouce;->isCategory(Ljava/lang/Object;Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/vivo/settings/xml/Node;->setIsCategory(Z)V

    .line 320
    invoke-virtual {p2, v3}, Lcom/vivo/settings/xml/SettingsResouce;->getChildResouces(Ljava/lang/Object;)Lcom/vivo/settings/xml/SettingsResouce;

    move-result-object v0

    .line 321
    .local v0, "childSR":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<*>;"
    if-eqz v0, :cond_3

    .line 322
    invoke-virtual {v0, p0}, Lcom/vivo/settings/xml/SettingsResouce;->getSearchNodes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vivo/settings/xml/Node;->addChildren(Ljava/util/List;)V

    .line 323
    invoke-virtual {v0, v4}, Lcom/vivo/settings/xml/SettingsResouce;->fixIntent(Lcom/vivo/settings/xml/Node;)V

    .line 326
    .end local v0    # "childSR":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<*>;"
    .end local v1    # "filter":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v4}, Lcom/vivo/settings/xml/SettingsResouce;->fixChildNode(Lcom/vivo/settings/xml/Node;)V

    .line 327
    add-int/lit8 v2, v2, 0x1

    .line 328
    goto :goto_0

    .line 329
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "n":Lcom/vivo/settings/xml/Node;
    :cond_4
    return-object v5
.end method

.method public static getDistanceFromTopForDashboardTiles(Ljava/util/List;Landroid/content/Context;Landroid/content/Intent;)I
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")I"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 37
    :cond_0
    const/4 v7, 0x0

    .line 97
    :cond_1
    :goto_0
    return v7

    .line 39
    :cond_2
    const-string v15, "extra"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "extra":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 41
    const/4 v7, 0x0

    goto :goto_0

    .line 44
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 45
    const/4 v7, -0x1

    goto :goto_0

    .line 47
    :cond_4
    const-string v15, " "

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 48
    const/4 v13, -0x1

    .line 49
    .local v13, "tileId":I
    const/4 v14, -0x1

    .line 51
    .local v14, "tileOrder":I
    const-string v15, ","

    invoke-virtual {v5, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "extras":[Ljava/lang/String;
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v10, :cond_7

    aget-object v4, v2, v8

    .line 53
    .local v4, "ex":Ljava/lang/String;
    if-eqz v4, :cond_5

    const-string v15, "headerId:"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 55
    :try_start_0
    const-string v15, "headerId:"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v13

    .line 60
    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    const-string v15, "headerOrder:"

    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 62
    :try_start_1
    const-string v15, "headerOrder:"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    .line 52
    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 68
    .end local v4    # "ex":Ljava/lang/String;
    :cond_7
    const/4 v11, 0x1

    .line 69
    .local v11, "matchId":Z
    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v15, v16, v18

    if-eqz v15, :cond_8

    const/4 v15, -0x1

    if-ne v13, v15, :cond_9

    .line 70
    :cond_8
    const/4 v11, 0x0

    .line 71
    const/4 v15, -0x1

    if-ne v14, v15, :cond_9

    .line 72
    const/4 v7, 0x0

    goto :goto_0

    .line 79
    :cond_9
    const/4 v3, 0x0

    .line 80
    .local v3, "distance":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v15

    if-ge v7, v15, :cond_d

    .line 82
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_5
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-virtual {v15}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v15

    if-ge v9, v15, :cond_c

    .line 83
    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/dashboard/DashboardCategory;

    invoke-virtual {v15, v9}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v12

    .line 84
    .local v12, "tile":Lcom/android/settings/dashboard/DashboardTile;
    if-eqz v11, :cond_b

    .line 85
    iget-wide v0, v12, Lcom/android/settings/dashboard/DashboardTile;->id:J

    move-wide/from16 v16, v0

    int-to-long v0, v13

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_1

    .line 82
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 89
    :cond_b
    iget v15, v12, Lcom/android/settings/dashboard/DashboardTile;->order:I

    if-ne v15, v14, :cond_a

    goto/16 :goto_0

    .line 80
    .end local v12    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 97
    .end local v9    # "j":I
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 63
    .end local v3    # "distance":I
    .end local v7    # "i":I
    .end local v11    # "matchId":Z
    .restart local v4    # "ex":Ljava/lang/String;
    :catch_0
    move-exception v15

    goto :goto_3

    .line 56
    :catch_1
    move-exception v15

    goto :goto_2
.end method

.method public static getExtraFragment(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 191
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-object v6

    .line 194
    :cond_1
    const-string v7, "extra"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "extra":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executed extra is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 198
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 201
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "extras":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 203
    .local v1, "ex":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v7, "fragment:"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 204
    const-string v6, "fragment:"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 202
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getExtraPreferenceIndex(Landroid/content/Context;Landroid/preference/PreferenceGroup;Landroid/content/Intent;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 111
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v7

    .line 114
    :cond_1
    const-string v8, "extra"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "extra":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "executed extra is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 121
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 122
    const/4 v5, 0x0

    .line 123
    .local v5, "key":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 124
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

    .line 125
    .local v1, "ex":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v8, "key:"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 126
    const-string v8, "key:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 130
    .end local v1    # "ex":Ljava/lang/String;
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 133
    invoke-static {p1, v5}, Lcom/vivo/settings/xml/ItemUtils;->findPreferenceIndex(Landroid/preference/PreferenceGroup;Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    .line 124
    .restart local v1    # "ex":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getOtherExtrasForFinger(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 161
    if-nez p1, :cond_0

    move-object v5, v7

    .line 180
    :goto_0
    return-object v5

    .line 164
    :cond_0
    const-string v8, "extra"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "extra":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "executed extra is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->logd(Ljava/lang/Object;)V

    .line 168
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v5, v7

    .line 169
    goto :goto_0

    .line 171
    :cond_1
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 172
    const/4 v5, 0x0

    .line 173
    .local v5, "key":Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "extras":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_3

    aget-object v1, v0, v4

    .line 175
    .local v1, "ex":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v8, "extra_select"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 176
    const-string v7, "extra_select"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 177
    goto :goto_0

    .line 174
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/String;
    :cond_3
    move-object v5, v7

    .line 180
    goto :goto_0
.end method
