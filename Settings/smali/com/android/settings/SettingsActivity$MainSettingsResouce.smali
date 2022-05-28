.class public Lcom/android/settings/SettingsActivity$MainSettingsResouce;
.super Lcom/vivo/settings/xml/SettingsResouce;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainSettingsResouce"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vivo/settings/xml/SettingsResouce",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final FILTER_SIMCARD_AND_AIRPLANE:[Ljava/lang/String;

.field private static final FILTER_SIM_AND_AIRPLANE:[Ljava/lang/String;

.field private static final NEED_SUB_TILE_IDS:[I

.field private static final NEED_SUB_TILE_ORDERS:[I

.field private static final SPECIAL_FILTER_SIMCARD_AND_AIRPLANE:[I

.field private static final SPECIAL_FILTER_SIM_AND_AIRPLANE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1759
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->SPECIAL_FILTER_SIM_AND_AIRPLANE:[I

    .line 1760
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sim"

    aput-object v1, v0, v2

    const-string v1, "airplane"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->FILTER_SIM_AND_AIRPLANE:[Ljava/lang/String;

    .line 1761
    new-array v0, v3, [I

    const v1, 0x7f0e02da

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->SPECIAL_FILTER_SIMCARD_AND_AIRPLANE:[I

    .line 1763
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "simcard"

    aput-object v1, v0, v2

    const-string v1, "airplane"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->FILTER_SIMCARD_AND_AIRPLANE:[Ljava/lang/String;

    .line 1843
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->NEED_SUB_TILE_IDS:[I

    .line 1844
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->NEED_SUB_TILE_ORDERS:[I

    return-void

    .line 1759
    nop

    :array_0
    .array-data 4
        0x7f0e02d9
        0x7f0e02e2
    .end array-data

    .line 1843
    :array_1
    .array-data 4
        0x7f0e02e2
        0x7f0e02eb
        0x7f0e02e4
        0x7f0e02d8
    .end array-data

    .line 1844
    :array_2
    .array-data 4
        0x5dc
        0x36b0
        0x4650
        0x4a38
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1583
    invoke-direct {p0}, Lcom/vivo/settings/xml/SettingsResouce;-><init>()V

    return-void
.end method

.method private needSubMenu(Lcom/android/settings/dashboard/DashboardTile;)Z
    .locals 6
    .param p1, "tile"    # Lcom/android/settings/dashboard/DashboardTile;

    .prologue
    .line 1846
    iget-wide v2, p1, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v0, v2

    .line 1847
    .local v0, "id":I
    int-to-long v2, v0

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1848
    sget-object v1, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->NEED_SUB_TILE_ORDERS:[I

    iget v2, p1, Lcom/android/settings/dashboard/DashboardTile;->order:I

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    .line 1850
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->NEED_SUB_TILE_IDS:[I

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public fixChildNode(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 1833
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->isIntentEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1841
    :cond_0
    :goto_0
    return-void

    .line 1836
    :cond_1
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1837
    const-string v0, "android.settings.SETTINGS.SUB_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    goto :goto_0

    .line 1838
    :cond_2
    invoke-virtual {p1}, Lcom/vivo/settings/xml/Node;->getHeaderId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->getChildResouces(Ljava/lang/Integer;)Lcom/vivo/settings/xml/SettingsResouce;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1839
    const-string v0, "android.settings.SETTINGS.SUB_SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fixIntent(Lcom/vivo/settings/xml/Node;)V
    .locals 1
    .param p1, "node"    # Lcom/vivo/settings/xml/Node;

    .prologue
    .line 1827
    const-string v0, "android.settings.SETTINGS"

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    .line 1828
    const v0, 0x7f0b00d0

    invoke-virtual {p1, v0}, Lcom/vivo/settings/xml/Node;->setStrRes(I)V

    .line 1829
    return-void
.end method

.method public getChildResouces(Ljava/lang/Integer;)Lcom/vivo/settings/xml/SettingsResouce;
    .locals 1
    .param p1, "id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vivo/settings/xml/SettingsResouce",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1777
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1822
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1781
    :sswitch_0
    sget-object v0, Lcom/vivo/settings/SoundSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    goto :goto_0

    .line 1783
    :sswitch_1
    new-instance v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsActivity$MainSettingsResouce$1;-><init>(Lcom/android/settings/SettingsActivity$MainSettingsResouce;)V

    goto :goto_0

    .line 1814
    :sswitch_2
    sget-object v0, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    goto :goto_0

    .line 1816
    :sswitch_3
    sget-object v0, Lcom/vivo/settings/OneHandSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    goto :goto_0

    .line 1818
    :sswitch_4
    sget-object v0, Lcom/vivo/settings/VivoSecuritySettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    goto :goto_0

    .line 1820
    :sswitch_5
    sget-object v0, Lcom/android/settings/location/LocationSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    goto :goto_0

    .line 1777
    :sswitch_data_0
    .sparse-switch
        0x7f0e02dc -> :sswitch_0
        0x7f0e02e3 -> :sswitch_1
        0x7f0e02e5 -> :sswitch_4
        0x7f0e02e6 -> :sswitch_5
        0x7f0e02e9 -> :sswitch_2
        0x7f0e02ed -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic getChildResouces(Ljava/lang/Object;)Lcom/vivo/settings/xml/SettingsResouce;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1583
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->getChildResouces(Ljava/lang/Integer;)Lcom/vivo/settings/xml/SettingsResouce;

    move-result-object v0

    return-object v0
.end method

.method public getSearchNodes(Landroid/content/Context;)Ljava/util/List;
    .locals 18
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
    .line 1644
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1645
    .local v11, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->getXmlResouce()I

    move-result v13

    move-object/from16 v0, p1

    invoke-static {v0, v13, v11}, Lcom/android/settings/SettingsActivity;->access$500(Landroid/content/Context;ILjava/util/List;)V

    .line 1646
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->updateTilesList(Landroid/content/Context;Ljava/util/List;)V

    .line 1647
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1649
    .local v9, "nodes":Ljava/util/List;, "Ljava/util/List<Lcom/vivo/settings/xml/Node;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_a

    .line 1650
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardCategory;

    .line 1651
    .local v2, "category":Lcom/android/settings/dashboard/DashboardCategory;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v2}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v13

    if-ge v7, v13, :cond_9

    .line 1652
    invoke-virtual {v2, v7}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v12

    .line 1653
    .local v12, "tile":Lcom/android/settings/dashboard/DashboardTile;
    new-instance v8, Lcom/vivo/settings/xml/Node;

    invoke-direct {v8}, Lcom/vivo/settings/xml/Node;-><init>()V

    .line 1654
    .local v8, "node":Lcom/vivo/settings/xml/Node;
    iget-wide v14, v12, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v5, v14

    .line 1655
    .local v5, "id":I
    int-to-long v14, v5

    const-wide/16 v16, -0x1

    cmp-long v13, v14, v16

    if-eqz v13, :cond_7

    .line 1656
    iget v13, v12, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    invoke-virtual {v8, v13}, Lcom/vivo/settings/xml/Node;->setStrRes(I)V

    .line 1657
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->getChildResouces(Ljava/lang/Integer;)Lcom/vivo/settings/xml/SettingsResouce;

    move-result-object v10

    .line 1658
    .local v10, "sr":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<*>;"
    const v13, 0x7f0e02e2

    if-ne v5, v13, :cond_4

    .line 1671
    :cond_0
    :goto_2
    if-eqz v10, :cond_1

    .line 1672
    invoke-virtual {v10, v8}, Lcom/vivo/settings/xml/SettingsResouce;->fixIntent(Lcom/vivo/settings/xml/Node;)V

    .line 1673
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/vivo/settings/xml/SettingsResouce;->getSearchNodes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/vivo/settings/xml/Node;->addChildren(Ljava/util/List;)V

    .line 1674
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/vivo/settings/xml/Node;->setIsCategory(Z)V

    .line 1676
    :cond_1
    invoke-virtual {v8, v5}, Lcom/vivo/settings/xml/Node;->setHeaderId(I)V

    .line 1677
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->getSpecialFilter(Landroid/content/Context;Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object v3

    .line 1678
    .local v3, "filter":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1679
    invoke-virtual {v8, v3}, Lcom/vivo/settings/xml/Node;->addEnable([Ljava/lang/String;)V

    .line 1690
    .end local v3    # "filter":[Ljava/lang/String;
    .end local v10    # "sr":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<*>;"
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->fixChildNode(Lcom/vivo/settings/xml/Node;)V

    .line 1691
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1692
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->needSubMenu(Lcom/android/settings/dashboard/DashboardTile;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1693
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-static {v0, v13, v9, v8}, Lcom/vivo/settings/xml/ItemUtils;->fixExtraXml(Landroid/content/Context;Landroid/content/Intent;Ljava/util/List;Lcom/vivo/settings/xml/Node;)Z

    .line 1651
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1660
    .restart local v10    # "sr":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<*>;"
    :cond_4
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v13, :cond_6

    .line 1661
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Lcom/vivo/settings/xml/Node;->setIsCategory(Z)V

    .line 1662
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 1663
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/vivo/settings/xml/Node;->setPackage(Ljava/lang/String;)V

    .line 1664
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/vivo/settings/xml/Node;->setClassName(Ljava/lang/String;)V

    goto :goto_2

    .line 1666
    :cond_5
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/vivo/settings/xml/Node;->setAction(Ljava/lang/String;)V

    goto :goto_2

    .line 1668
    :cond_6
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1669
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->fragment:Ljava/lang/String;

    invoke-virtual {v8, v13}, Lcom/vivo/settings/xml/Node;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1682
    .end local v10    # "sr":Lcom/vivo/settings/xml/SettingsResouce;, "Lcom/vivo/settings/xml/SettingsResouce<*>;"
    :cond_7
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    if-eqz v13, :cond_8

    .line 1683
    iget-object v13, v12, Lcom/android/settings/dashboard/DashboardTile;->extras:Landroid/os/Bundle;

    const-string v14, "extra_resolve_info"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1684
    .local v6, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_8

    .line 1685
    move-object/from16 v0, p1

    invoke-static {v0, v6, v8}, Lcom/vivo/settings/xml/ItemUtils;->fixExtraNode(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Lcom/vivo/settings/xml/Node;)Z

    .line 1688
    .end local v6    # "info":Landroid/content/pm/ResolveInfo;
    :cond_8
    iget v13, v12, Lcom/android/settings/dashboard/DashboardTile;->order:I

    invoke-virtual {v8, v13}, Lcom/vivo/settings/xml/Node;->setOrder(I)V

    goto :goto_3

    .line 1649
    .end local v5    # "id":I
    .end local v8    # "node":Lcom/vivo/settings/xml/Node;
    .end local v12    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1698
    .end local v2    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v7    # "j":I
    :cond_a
    return-object v9
.end method

.method public getSpecialFilter(Landroid/content/Context;Ljava/lang/Integer;)[Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/Integer;

    .prologue
    .line 1767
    sget-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->SPECIAL_FILTER_SIM_AND_AIRPLANE:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1768
    sget-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->FILTER_SIM_AND_AIRPLANE:[Ljava/lang/String;

    .line 1772
    :goto_0
    return-object v0

    .line 1769
    :cond_0
    sget-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->SPECIAL_FILTER_SIMCARD_AND_AIRPLANE:[I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1770
    sget-object v0, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->FILTER_SIMCARD_AND_AIRPLANE:[Ljava/lang/String;

    goto :goto_0

    .line 1772
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getSpecialFilter(Landroid/content/Context;Ljava/lang/Object;)[Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1583
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->getSpecialFilter(Landroid/content/Context;Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXmlResouce()I
    .locals 1

    .prologue
    .line 1703
    const v0, 0x7f060011

    return v0
.end method

.method public isItemEnabled(Landroid/content/Context;Ljava/lang/Integer;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 1708
    const/4 v1, 0x0

    .line 1709
    .local v1, "showDev":Z
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1710
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v4, "user"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 1711
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02d7

    if-ne v4, v5, :cond_1

    .line 1713
    const-string v4, "android.hardware.wifi"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1755
    :cond_0
    :goto_0
    return v3

    .line 1716
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02e0

    if-eq v4, v5, :cond_0

    .line 1721
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02d9

    if-ne v4, v5, :cond_3

    .line 1722
    invoke-static {}, Lcom/android/settings/AppFeature;->isCTCC()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1755
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 1726
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02ec

    if-ne v4, v5, :cond_4

    .line 1727
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportWFD()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/AppFeature;->isFeatureForNetEntry()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1730
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02ed

    if-ne v4, v5, :cond_5

    .line 1731
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportOneHandMode()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1734
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02ee

    if-ne v4, v5, :cond_6

    .line 1735
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportGloveMode()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 1738
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02eb

    if-ne v4, v5, :cond_7

    .line 1739
    invoke-static {}, Lcom/android/settings/AppFeature;->isFeatureForNetEntry()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1742
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02e1

    if-ne v4, v5, :cond_8

    .line 1743
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1746
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02e4

    if-ne v4, v5, :cond_9

    .line 1747
    invoke-static {p1}, Lcom/android/settings/AppFeature;->isInVisitMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/android/settings/AppFeature;->isSupportFinger(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0

    .line 1750
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0x7f0e02e8

    if-ne v4, v5, :cond_2

    .line 1751
    invoke-static {p1}, Lcom/android/settings/AppFeature;->isHighConfiguration(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_0
.end method

.method public bridge synthetic isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1583
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public updateTilesList(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/DashboardCategory;>;"
    const/4 v7, 0x0

    .line 1586
    const-string v8, "SettingsActivity"

    const-string v9, "updateTilesList ------------------"

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 1588
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_a

    .line 1590
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardCategory;

    .line 1593
    .local v0, "category":Lcom/android/settings/dashboard/DashboardCategory;
    iget-wide v8, v0, Lcom/android/settings/dashboard/DashboardCategory;->id:J

    long-to-int v2, v8

    .line 1594
    .local v2, "id":I
    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 1595
    .local v3, "n":I
    :goto_1
    if-ltz v3, :cond_9

    .line 1597
    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/DashboardCategory;->getTile(I)Lcom/android/settings/dashboard/DashboardTile;

    move-result-object v6

    .line 1598
    .local v6, "tile":Lcom/android/settings/dashboard/DashboardTile;
    iget-wide v8, v6, Lcom/android/settings/dashboard/DashboardTile;->id:J

    long-to-int v2, v8

    .line 1599
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lcom/android/settings/SettingsActivity$MainSettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Integer;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v4, 0x1

    .line 1600
    .local v4, "removeTile":Z
    :goto_2
    const v8, 0x7f0e02ee

    if-ne v2, v8, :cond_4

    .line 1601
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportGloveMode()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1602
    iput v7, v0, Lcom/android/settings/dashboard/DashboardCategory;->summaryRes:I

    .line 1603
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/settings/dashboard/DashboardCategory;->summary:Ljava/lang/CharSequence;

    .line 1625
    :cond_0
    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsActivity;->access$400()[I

    move-result-object v8

    invoke-static {v8, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1627
    const/4 v4, 0x1

    .line 1630
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardCategory;->getTilesCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 1631
    invoke-virtual {v0, v3}, Lcom/android/settings/dashboard/DashboardCategory;->removeTile(I)V

    .line 1633
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 1634
    goto :goto_1

    .end local v4    # "removeTile":Z
    :cond_3
    move v4, v7

    .line 1599
    goto :goto_2

    .line 1605
    .restart local v4    # "removeTile":Z
    :cond_4
    const v8, 0x7f0e02e1

    if-ne v2, v8, :cond_5

    .line 1606
    invoke-static {}, Lcom/android/settings/AppFeature;->isFeatureForNetEntry()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1607
    const v8, 0x7f0b0908

    iput v8, v6, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    goto :goto_3

    .line 1609
    :cond_5
    const v8, 0x7f0e02de

    if-ne v2, v8, :cond_6

    .line 1610
    iget-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_0

    .line 1611
    iget-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1612
    iget-object v8, v6, Lcom/android/settings/dashboard/DashboardTile;->intent:Landroid/content/Intent;

    const v9, 0x8000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3

    .line 1614
    :cond_6
    const v8, 0x7f0e02e4

    if-ne v2, v8, :cond_8

    .line 1615
    invoke-static {p1}, Lcom/android/settings/AppFeature;->isInVisitMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {p1}, Lcom/android/settings/AppFeature;->isSupportFinger(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1616
    :cond_7
    const/4 v4, 0x1

    goto :goto_3

    .line 1618
    :cond_8
    const v8, 0x7f0e02dd

    if-ne v2, v8, :cond_0

    .line 1619
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportNightMode()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1620
    const v8, 0x7f0b09a5

    iput v8, v6, Lcom/android/settings/dashboard/DashboardTile;->titleRes:I

    goto :goto_3

    .line 1588
    .end local v4    # "removeTile":Z
    .end local v6    # "tile":Lcom/android/settings/dashboard/DashboardTile;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1637
    .end local v0    # "category":Lcom/android/settings/dashboard/DashboardCategory;
    .end local v2    # "id":I
    .end local v3    # "n":I
    :cond_a
    invoke-static {p1}, Lcom/vivo/settings/SettingsItemsUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/SettingsItemsUtils;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/vivo/settings/SettingsItemsUtils;->initData(I)V

    .line 1638
    invoke-static {p1}, Lcom/vivo/settings/SettingsItemsUtils;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/SettingsItemsUtils;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/vivo/settings/SettingsItemsUtils;->inertAndSort(Ljava/util/List;)V

    .line 1639
    const-string v7, "SettingsActivity"

    const-string v8, "updateTilesList ------------------end"

    invoke-static {v7, v8}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    return-void
.end method
