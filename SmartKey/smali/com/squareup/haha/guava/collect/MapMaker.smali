.class public final Lcom/squareup/haha/guava/collect/MapMaker;
.super Lcom/squareup/haha/guava/collect/GenericMapMaker;
.source "MapMaker.java"


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    .line 597
    .line 1121
    new-instance v1, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1155
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1159
    const-string v2, "\\$[0-9]+"

    const-string v3, "\\$"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1162
    const/16 v0, 0x24

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1166
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 1167
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1169
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-direct {v1, v0, v4}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;-><init>(Ljava/lang/String;B)V

    .line 599
    const-string v0, "initialCapacity"

    invoke-virtual {v1, v0, v4}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/squareup/haha/guava/base/Objects$ToStringHelper;

    .line 602
    const-string v0, "concurrencyLevel"

    invoke-virtual {v1, v0, v4}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/squareup/haha/guava/base/Objects$ToStringHelper;

    .line 605
    const-string v0, "maximumSize"

    invoke-virtual {v1, v0, v4}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/squareup/haha/guava/base/Objects$ToStringHelper;

    .line 607
    cmp-long v0, v8, v6

    if-eqz v0, :cond_1

    .line 608
    const-string v0, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1231
    invoke-virtual {v1, v0, v2}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/haha/guava/base/Objects$ToStringHelper;

    .line 610
    :cond_1
    cmp-long v0, v8, v6

    if-eqz v0, :cond_2

    .line 611
    const-string v0, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2231
    invoke-virtual {v1, v0, v2}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/haha/guava/base/Objects$ToStringHelper;

    .line 625
    :cond_2
    invoke-virtual {v1}, Lcom/squareup/haha/guava/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
