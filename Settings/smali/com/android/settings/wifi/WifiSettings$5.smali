.class final Lcom/android/settings/wifi/WifiSettings$5;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b018d

    .line 991
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 995
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 996
    .local v2, "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 997
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 998
    const v7, 0x7f0b06c3

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 999
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1002
    const-string v7, "wifi"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 1004
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-static {p1, v6, v9, v9}, Lcom/android/settings/wifi/WifiSettings;->access$200(Landroid/content/Context;Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Ljava/util/List;

    move-result-object v1

    .line 1006
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/wifi/AccessPoint;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    .line 1008
    .local v0, "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1009
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1010
    .restart local v2    # "data":Lcom/android/settings/search/SearchIndexableRaw;
    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1011
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1012
    iput-boolean p2, v2, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    .line 1013
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1016
    .end local v0    # "accessPoint":Lcom/android/settings/wifi/AccessPoint;
    :cond_1
    return-object v5
.end method
