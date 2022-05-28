.class Lcom/handpet/xml/protocol/action/DoubleAction;
.super Lcom/handpet/xml/protocol/action/StringAction;
.source "DoubleAction.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/IDoubleAction;


# direct methods
.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .prologue
    .line 20
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/DoubleAction;-><init>(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Double;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Double;

    .prologue
    .line 16
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/handpet/xml/protocol/action/DoubleAction;-><init>(D)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(ILjava/lang/String;)V

    .line 25
    return-void
.end method

.method private parseDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 40
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 42
    .end local p2    # "defaultValue":D
    :goto_0
    return-wide p2

    .line 41
    .restart local p2    # "defaultValue":D
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getDoubleValue()D
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/DoubleAction;->getValue()Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-direct {p0, v0, v2, v3}, Lcom/handpet/xml/protocol/action/DoubleAction;->parseDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/DoubleAction;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/DoubleAction;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 36
    return-void
.end method
