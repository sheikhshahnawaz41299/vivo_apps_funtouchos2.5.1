.class Lcom/handpet/xml/protocol/action/IntegerAction;
.super Lcom/handpet/xml/protocol/action/StringAction;
.source "IntegerAction.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/IIntegerAction;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/IntegerAction;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Integer;

    .prologue
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/IntegerAction;-><init>(I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(ILjava/lang/String;)V

    .line 24
    return-void
.end method

.method private parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 39
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 41
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .line 40
    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getIntValue()I
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/IntegerAction;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/handpet/xml/protocol/action/IntegerAction;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/IntegerAction;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/IntegerAction;->getIntValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    return-void
.end method
