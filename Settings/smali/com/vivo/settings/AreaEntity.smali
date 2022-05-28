.class public Lcom/vivo/settings/AreaEntity;
.super Ljava/lang/Object;
.source "AreaEntity.java"


# instance fields
.field private areaCode:Ljava/lang/String;

.field private areaValues:Ljava/lang/String;

.field private areaentrys:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildAreaList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/AreaEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 51
    .local v6, "resources":Landroid/content/res/Resources;
    const v7, 0x7f080071

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "areas":[Ljava/lang/String;
    const v7, 0x7f080076

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "areaCodes":[Ljava/lang/String;
    const v7, 0x7f080075

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "areaValues":[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v5, "mAreaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/AreaEntity;>;"
    const/4 v3, 0x0

    .line 56
    .local v3, "i":I
    :goto_0
    array-length v7, v2

    if-lt v3, v7, :cond_0

    array-length v7, v0

    if-lt v3, v7, :cond_0

    array-length v7, v1

    if-ge v3, v7, :cond_1

    .line 57
    :cond_0
    new-instance v4, Lcom/vivo/settings/AreaEntity;

    invoke-direct {v4}, Lcom/vivo/settings/AreaEntity;-><init>()V

    .line 58
    .local v4, "mAreaEntity":Lcom/vivo/settings/AreaEntity;
    aget-object v7, v0, v3

    invoke-virtual {v4, v7}, Lcom/vivo/settings/AreaEntity;->setAreaCode(Ljava/lang/String;)V

    .line 59
    aget-object v7, v2, v3

    invoke-virtual {v4, v7}, Lcom/vivo/settings/AreaEntity;->setAreaentrys(Ljava/lang/String;)V

    .line 60
    aget-object v7, v1, v3

    invoke-virtual {v4, v7}, Lcom/vivo/settings/AreaEntity;->setAreaValues(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 63
    .end local v4    # "mAreaEntity":Lcom/vivo/settings/AreaEntity;
    :cond_1
    return-object v5
.end method

.method private filterAreaList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "projectName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/AreaEntity;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/settings/AreaEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p2, "mAreaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/AreaEntity;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 70
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/vivo/settings/AreaEntity;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 71
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/AreaEntity;

    .line 72
    .local v1, "mAreaEntity":Lcom/vivo/settings/AreaEntity;
    const-string v2, "PD1304B"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    const-string v2, "IN"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "MM"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 78
    :cond_2
    const-string v2, "PD1403W_EX"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    const-string v2, "TH"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "MY"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ID"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 85
    :cond_4
    const-string v2, "PD1401F_EX"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "PD1410F_EX"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    :cond_5
    const-string v2, "MM"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ID"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "IN"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 90
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 93
    :cond_7
    const-string v2, "PD1420F_EX"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 94
    const-string v2, "MM"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "ID"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "IN"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 97
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 100
    :cond_9
    const-string v2, "PD1304DW_EX"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    const-string v2, "MM"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "ID"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "TH"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "MY"

    invoke-virtual {v1}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 109
    .end local v1    # "mAreaEntity":Lcom/vivo/settings/AreaEntity;
    :cond_b
    return-object p2
.end method


# virtual methods
.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vivo/settings/AreaEntity;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaCodes(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    invoke-direct {p0, p2}, Lcom/vivo/settings/AreaEntity;->buildAreaList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/vivo/settings/AreaEntity;->filterAreaList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    .local v2, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/AreaEntity;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 151
    .local v0, "areaCodes":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 152
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/AreaEntity;

    invoke-virtual {v3}, Lcom/vivo/settings/AreaEntity;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_0
    return-object v0
.end method

.method public getAreaValues()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vivo/settings/AreaEntity;->areaValues:Ljava/lang/String;

    return-object v0
.end method

.method public getAreaValues(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0, p2}, Lcom/vivo/settings/AreaEntity;->buildAreaList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/vivo/settings/AreaEntity;->filterAreaList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 135
    .local v2, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/AreaEntity;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 136
    .local v0, "areasValues":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 137
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/AreaEntity;

    invoke-virtual {v3}, Lcom/vivo/settings/AreaEntity;->getAreaValues()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return-object v0
.end method

.method public getAreaentrys()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/settings/AreaEntity;->areaentrys:Ljava/lang/String;

    return-object v0
.end method

.method public getAreas(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .param p1, "projectName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-direct {p0, p2}, Lcom/vivo/settings/AreaEntity;->buildAreaList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/vivo/settings/AreaEntity;->filterAreaList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 120
    .local v2, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/settings/AreaEntity;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    .line 121
    .local v0, "areas":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 122
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vivo/settings/AreaEntity;

    invoke-virtual {v3}, Lcom/vivo/settings/AreaEntity;->getAreaentrys()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-object v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "areaCode"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/vivo/settings/AreaEntity;->areaCode:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setAreaValues(Ljava/lang/String;)V
    .locals 0
    .param p1, "areaValues"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/vivo/settings/AreaEntity;->areaValues:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setAreaentrys(Ljava/lang/String;)V
    .locals 0
    .param p1, "areaentrys"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vivo/settings/AreaEntity;->areaentrys:Ljava/lang/String;

    .line 39
    return-void
.end method
