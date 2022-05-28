.class Lcom/handpet/xml/protocol/action/StringAction;
.super Lcom/handpet/xml/protocol/action/DDAction;
.source "StringAction.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/IStringAction;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(ILjava/lang/String;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/handpet/xml/protocol/action/DDAction;-><init>(I)V

    .line 31
    if-nez p2, :cond_0

    .line 32
    const-string p2, ""

    .line 34
    :cond_0
    iput-object p2, p0, Lcom/handpet/xml/protocol/action/StringAction;->value:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(ILjava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getStringValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/StringAction;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/StringAction;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/handpet/xml/protocol/action/StringAction;->value:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/StringAction;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget-object v0, p0, Lcom/handpet/xml/protocol/action/StringAction;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    return-void
.end method
