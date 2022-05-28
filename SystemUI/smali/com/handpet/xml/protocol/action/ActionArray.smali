.class Lcom/handpet/xml/protocol/action/ActionArray;
.super Lcom/handpet/xml/protocol/action/DDAction;
.source "ActionArray.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/IActionArray;


# instance fields
.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vlife/plugin/card/impl/action/IAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/DDAction;-><init>(I)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/handpet/xml/protocol/action/ActionArray;->values:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public add(Lcom/vlife/plugin/card/impl/action/IAction;)V
    .locals 1
    .param p1, "action"    # Lcom/vlife/plugin/card/impl/action/IAction;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/ActionArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/ActionArray;->values:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Lcom/vlife/plugin/card/impl/action/IAction;
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/ActionArray;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/handpet/xml/protocol/action/ActionArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/ActionArray;->values:Ljava/util/List;

    iget-object v1, p0, Lcom/handpet/xml/protocol/action/ActionArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/vlife/plugin/card/impl/action/IAction;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlife/plugin/card/impl/action/IAction;

    .line 28
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/ActionArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/ActionArray;->getType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/ActionArray;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v1, p0, Lcom/handpet/xml/protocol/action/ActionArray;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    return-void

    .line 46
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IAction;

    .line 47
    .local v0, "action":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0, p1, p2}, Lcom/vlife/plugin/card/impl/action/IAction;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0
.end method
