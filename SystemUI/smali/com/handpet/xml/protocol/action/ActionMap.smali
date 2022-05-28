.class Lcom/handpet/xml/protocol/action/ActionMap;
.super Lcom/handpet/xml/protocol/action/DDAction;
.source "ActionMap.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/IActionMap;


# static fields
.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_EVENT:Ljava/lang/String; = "event"


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/vlife/plugin/card/impl/action/IAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/DDAction;-><init>(I)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/handpet/xml/protocol/action/ActionMap;->map:Ljava/util/Map;

    .line 33
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    const-string v1, "action"

    invoke-virtual {p0, v1}, Lcom/handpet/xml/protocol/action/ActionMap;->getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    .line 60
    .local v0, "action":Lcom/vlife/plugin/card/impl/action/IAction;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IAction;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActionMap(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IActionMap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/ActionMap;->getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IActionMap;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/ActionMap;->getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    .line 155
    .local v0, "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    if-eqz v0, :cond_0

    .line 156
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IBooleanAction;

    if-eqz v1, :cond_1

    .line 157
    check-cast v0, Lcom/vlife/plugin/card/impl/action/IBooleanAction;

    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IBooleanAction;->getBooleanValue()Z

    move-result p2

    .line 163
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 158
    .restart local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    .restart local p2    # "defaultValue":Z
    :cond_1
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IStringAction;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Lcom/vlife/plugin/card/impl/action/IStringAction;

    .line 160
    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IStringAction;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/ActionMap;->getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    .line 109
    .local v0, "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    if-eqz v0, :cond_0

    .line 110
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IDoubleAction;

    if-eqz v1, :cond_1

    .line 111
    check-cast v0, Lcom/vlife/plugin/card/impl/action/IDoubleAction;

    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IDoubleAction;->getDoubleValue()D

    move-result-wide p2

    .line 117
    .end local p2    # "defaultValue":D
    :cond_0
    :goto_0
    return-wide p2

    .line 112
    .restart local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    .restart local p2    # "defaultValue":D
    :cond_1
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IStringAction;

    if-eqz v1, :cond_0

    .line 113
    new-instance v1, Lcom/handpet/xml/protocol/action/DoubleAction;

    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IAction;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/handpet/xml/protocol/action/DoubleAction;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Lcom/handpet/xml/protocol/action/DoubleAction;->getDoubleValue()D

    move-result-wide p2

    goto :goto_0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    const-string v1, "event"

    invoke-virtual {p0, v1}, Lcom/handpet/xml/protocol/action/ActionMap;->getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    .line 45
    .local v0, "action":Lcom/vlife/plugin/card/impl/action/IAction;
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IAction;->getStringValue()Ljava/lang/String;

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/ActionMap;->getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    .line 130
    .local v0, "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    if-eqz v0, :cond_0

    .line 131
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IIntegerAction;

    if-eqz v1, :cond_1

    .line 132
    check-cast v0, Lcom/vlife/plugin/card/impl/action/IIntegerAction;

    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IIntegerAction;->getIntValue()I

    move-result p2

    .line 142
    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .line 133
    .restart local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    .restart local p2    # "defaultValue":I
    :cond_1
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IStringAction;

    if-eqz v1, :cond_2

    .line 134
    new-instance v1, Lcom/handpet/xml/protocol/action/IntegerAction;

    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IAction;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/handpet/xml/protocol/action/IntegerAction;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Lcom/handpet/xml/protocol/action/IntegerAction;->getIntValue()I

    move-result p2

    goto :goto_0

    .line 136
    :cond_2
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IDoubleAction;

    if-eqz v1, :cond_3

    .line 137
    check-cast v0, Lcom/vlife/plugin/card/impl/action/IDoubleAction;

    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IDoubleAction;->getDoubleValue()D

    move-result-wide v2

    double-to-int p2, v2

    goto :goto_0

    .line 138
    .restart local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    :cond_3
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/ILongAction;

    if-eqz v1, :cond_0

    .line 139
    check-cast v0, Lcom/vlife/plugin/card/impl/action/ILongAction;

    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/ILongAction;->getLongValue()J

    move-result-wide v2

    long-to-int p2, v2

    goto :goto_0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v1, p0, Lcom/handpet/xml/protocol/action/ActionMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 80
    .local v0, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/ActionMap;->getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    .line 176
    .local v0, "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    if-eqz v0, :cond_0

    .line 177
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/ILongAction;

    if-eqz v1, :cond_1

    .line 178
    check-cast v0, Lcom/vlife/plugin/card/impl/action/ILongAction;

    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/ILongAction;->getLongValue()J

    move-result-wide p2

    .line 187
    .end local p2    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p2

    .line 179
    .restart local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    .restart local p2    # "defaultValue":J
    :cond_1
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IStringAction;

    if-eqz v1, :cond_2

    .line 180
    new-instance v1, Lcom/handpet/xml/protocol/action/LongAction;

    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IAction;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/handpet/xml/protocol/action/LongAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/handpet/xml/protocol/action/LongAction;->getLongValue()J

    move-result-wide p2

    goto :goto_0

    .line 181
    :cond_2
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IIntegerAction;

    if-eqz v1, :cond_3

    .line 182
    check-cast v0, Lcom/vlife/plugin/card/impl/action/IIntegerAction;

    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IIntegerAction;->getIntValue()I

    move-result v1

    int-to-long p2, v1

    goto :goto_0

    .line 183
    .restart local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    :cond_3
    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IDoubleAction;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Lcom/vlife/plugin/card/impl/action/IDoubleAction;

    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IDoubleAction;->getDoubleValue()D

    move-result-wide v2

    double-to-long p2, v2

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/ActionMap;->getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    .line 93
    .local v0, "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/vlife/plugin/card/impl/action/IStringAction;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Lcom/vlife/plugin/card/impl/action/IStringAction;

    .end local v0    # "ddAction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0}, Lcom/vlife/plugin/card/impl/action/IStringAction;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 96
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/ActionMap;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/ActionMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IAction;

    return-object v0
.end method

.method public getValues()[Lcom/vlife/plugin/card/impl/action/IAction;
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/handpet/xml/protocol/action/ActionMap;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 69
    .local v0, "actions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/vlife/plugin/card/impl/action/IAction;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/vlife/plugin/card/impl/action/IAction;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/vlife/plugin/card/impl/action/IAction;

    return-object v1
.end method

.method public put(Ljava/lang/String;Lcom/vlife/plugin/card/impl/action/IAction;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/vlife/plugin/card/impl/action/IAction;

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 203
    new-instance p2, Lcom/handpet/xml/protocol/action/NullAction;

    .end local p2    # "action":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-direct {p2}, Lcom/handpet/xml/protocol/action/NullAction;-><init>()V

    .line 205
    .restart local p2    # "action":Lcom/vlife/plugin/card/impl/action/IAction;
    :cond_0
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/ActionMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string v0, "action"

    new-instance v1, Lcom/handpet/xml/protocol/action/StringAction;

    invoke-direct {v1, p1}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/handpet/xml/protocol/action/ActionMap;->put(Ljava/lang/String;Lcom/vlife/plugin/card/impl/action/IAction;)V

    .line 55
    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/handpet/xml/protocol/action/ActionMap;->getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    const-string v0, "event"

    new-instance v1, Lcom/handpet/xml/protocol/action/StringAction;

    invoke-direct {v1, p1}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/handpet/xml/protocol/action/ActionMap;->put(Ljava/lang/String;Lcom/vlife/plugin/card/impl/action/IAction;)V

    .line 40
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/ActionMap;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget-object v2, p0, Lcom/handpet/xml/protocol/action/ActionMap;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v2, p0, Lcom/handpet/xml/protocol/action/ActionMap;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 213
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vlife/plugin/card/impl/action/IAction;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    return-void

    .line 213
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/vlife/plugin/card/impl/action/IAction;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlife/plugin/card/impl/action/IAction;

    invoke-interface {v2, p1, p2}, Lcom/vlife/plugin/card/impl/action/IAction;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
