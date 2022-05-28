.class final Lcom/vivo/settings/GeneralSettings$6;
.super Lcom/vivo/settings/xml/SettingsResouce;
.source "GeneralSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/GeneralSettings;
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
.field private final SUB_MENU_KEYS:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/vivo/settings/xml/SettingsResouce;-><init>()V

    .line 677
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "schedule_power_on"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/vivo/settings/GeneralSettings$6;->SUB_MENU_KEYS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fixChildNode(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 731
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->isIntentEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const-class v0, Lcom/vivo/settings/GeneralSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fixIntent(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 740
    const-string v0, "android.settings.SETTINGS.SUB_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 741
    const-class v0, Lcom/vivo/settings/GeneralSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public bridge synthetic getChildResouces(Ljava/lang/Object;)Lcom/vivo/settings/xml/SettingsResouce;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 613
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/GeneralSettings$6;->getChildResouces(Ljava/lang/String;)Lcom/vivo/settings/xml/SettingsResouce;

    move-result-object v0

    return-object v0
.end method

.method public getChildResouces(Ljava/lang/String;)Lcom/vivo/settings/xml/SettingsResouce;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vivo/settings/xml/SettingsResouce",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 745
    const-string v0, "applications_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lcom/vivo/settings/applications/VivoApplicationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/applications/VivoApplicationSettings$MySettingsResouce;

    .line 748
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchNodes(Landroid/content/Context;)Ljava/util/List;
    .locals 11
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
    .line 681
    invoke-virtual {p0}, Lcom/vivo/settings/GeneralSettings$6;->getXmlResouce()I

    move-result v8

    invoke-static {p1, v8, p0}, Lcom/vivo/settings/xml/ItemUtils;->generatePrefNodeList(Landroid/content/Context;ILcom/vivo/settings/xml/SettingsResouce;)Ljava/util/List;

    move-result-object v7

    .line 682
    .local v7, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/xml/Node;>;"
    invoke-static {p1}, Lcom/vivo/settings/SettingsItemsUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/SettingsItemsUtils;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/vivo/settings/SettingsItemsUtils;->initData(I)V

    .line 683
    invoke-static {p1}, Lcom/vivo/settings/SettingsItemsUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/SettingsItemsUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/vivo/settings/SettingsItemsUtils;->getGeneralPrefExtra()Ljava/util/List;

    move-result-object v3

    .line 684
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 685
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    new-instance v6, Lcom/vivo/settings/xml/Node;

    invoke-direct {v6}, Lcom/vivo/settings/xml/Node;-><init>()V

    .line 686
    .local v6, "node":Lcom/vivo/settings/xml/Node;
    invoke-static {p1, v2, v6}, Lcom/vivo/settings/xml/ItemUtils;->fixExtraNode(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Lcom/vivo/settings/xml/Node;)Z

    .line 687
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_0

    .line 688
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "vivo.settings.order"

    const v10, 0xf4240

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/vivo/settings/xml/Node;->setOrder(I)V

    .line 691
    :cond_0
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 693
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v6    # "node":Lcom/vivo/settings/xml/Node;
    :cond_1
    new-instance v8, Lcom/vivo/settings/GeneralSettings$6$1;

    invoke-direct {v8, p0}, Lcom/vivo/settings/GeneralSettings$6$1;-><init>(Lcom/vivo/settings/GeneralSettings$6;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 700
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .line 701
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 702
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vivo/settings/xml/Node;

    .line 703
    .local v5, "n":Lcom/vivo/settings/xml/Node;
    iget-object v8, p0, Lcom/vivo/settings/GeneralSettings$6;->SUB_MENU_KEYS:[Ljava/lang/String;

    invoke-virtual {v5}, Lcom/vivo/settings/xml/Node;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 704
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Lcom/vivo/settings/xml/Node;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v5}, Lcom/vivo/settings/xml/Node;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 706
    invoke-virtual {v5}, Lcom/vivo/settings/xml/Node;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/vivo/settings/xml/Node;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    :goto_2
    invoke-static {p1, v4, v7, v5}, Lcom/vivo/settings/xml/ItemUtils;->fixExtraXml(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;Lcom/vivo/settings/xml/Node;)Z

    .line 712
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 713
    goto :goto_1

    .line 708
    .restart local v4    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v5}, Lcom/vivo/settings/xml/Node;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 715
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "n":Lcom/vivo/settings/xml/Node;
    :cond_4
    return-object v7
.end method

.method public bridge synthetic getSpecialFilter(Landroid/content/Context;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 613
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/GeneralSettings$6;->getSpecialFilter(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpecialFilter(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 724
    const-string v0, "upnp_settings"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 725
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "visit"

    aput-object v2, v0, v1

    .line 727
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXmlResouce()I
    .locals 1

    .prologue
    .line 720
    const v0, 0x7f060020

    return v0
.end method

.method public bridge synthetic isIntentEnable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 613
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/vivo/settings/GeneralSettings$6;->isIntentEnable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isIntentEnable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 616
    const-string v0, "ewarranty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    const/4 v0, 0x0

    .line 619
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
    .line 613
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/vivo/settings/GeneralSettings$6;->isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isItemEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 627
    const-string v3, "touch_key_light_duration"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportTouchKeyLight()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/settings/AppFeature;->isFrontFingerProject()Z

    move-result v3

    if-nez v3, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 628
    goto :goto_0

    .line 629
    :cond_2
    const-string v3, "number_area"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 630
    const-string v3, "com.android.BBKTools"

    invoke-static {p1, v3}, Lcom/vivo/settings/VivoUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 631
    :cond_4
    const-string v3, "user_experience"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 632
    const-string v1, "com.bbk.iqoo.logsystem"

    invoke-static {p1, v1}, Lcom/vivo/settings/VivoUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 633
    :cond_5
    const-string v3, "notification_light"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 634
    invoke-static {}, Lcom/android/settings/AppFeature;->getNotificationLightStyle()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 635
    :cond_6
    const-string v3, "notification_light_checkbox"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 636
    invoke-static {}, Lcom/android/settings/AppFeature;->getNotificationLightStyle()I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 637
    :cond_7
    const-string v3, "bt_settings"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 638
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 639
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 640
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    const-string v3, "ewarranty"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 641
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {}, Lcom/android/settings/AppFeature;->isFeatureForNetEntry()Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.vivo.ewarranty"

    invoke-static {p1, v3}, Lcom/vivo/settings/VivoUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_9
    move v1, v2

    goto :goto_0

    .line 643
    :cond_a
    const-string v3, "nfc_settings"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 644
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_b
    move v1, v2

    goto/16 :goto_0

    .line 645
    :cond_c
    const-string v3, "phone_instructions"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 646
    invoke-static {p1}, Lcom/vivo/settings/GeneralSettings;->isPhoneInstructionsNeeded(Landroid/content/Context;)Z

    move-result v1

    goto/16 :goto_0

    .line 647
    :cond_d
    const-string v3, "protect_lock"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 648
    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PD1225"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 649
    :cond_e
    const-string v3, "holster_to_answer_call"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v1, v2

    .line 650
    goto/16 :goto_0

    .line 651
    :cond_f
    const-string v3, "upnp_settings"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 652
    const-string v1, "com.vivo.upnpserver"

    invoke-static {p1, v1}, Lcom/vivo/settings/VivoUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_0

    .line 653
    :cond_10
    const-string v3, "search"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 656
    const-string v3, "otg"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 657
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportOTG()Z

    move-result v1

    goto/16 :goto_0

    .line 658
    :cond_11
    const-string v3, "holster"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 659
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportHolster()Z

    move-result v1

    goto/16 :goto_0

    .line 660
    :cond_12
    const-string v3, "flash_light_remind"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    const-string v3, "fast_charge"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 664
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportFastCharge()Z

    move-result v1

    goto/16 :goto_0

    .line 665
    :cond_13
    const-string v3, "storage_settings"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 666
    invoke-static {p1}, Lcom/android/settings/AppFeature;->isHighConfiguration(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 667
    :cond_14
    const-string v3, "bottom_key_function"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move v1, v2

    .line 668
    goto/16 :goto_0

    .line 669
    :cond_15
    const-string v2, "touch_key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 670
    invoke-static {}, Lcom/android/settings/AppFeature;->isFrontFingerProject()Z

    move-result v1

    goto/16 :goto_0

    .line 671
    :cond_16
    const-string v2, "sos_call"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 672
    const-string v1, "IN"

    const-string v2, "ro.product.customize.bbk"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method
