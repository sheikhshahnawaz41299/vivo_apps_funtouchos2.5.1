.class Lcom/handpet/xml/protocol/action/LongAction;
.super Lcom/handpet/xml/protocol/action/StringAction;
.source "LongAction.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/ILongAction;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 19
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/LongAction;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Long;

    .prologue
    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/handpet/xml/protocol/action/LongAction;-><init>(J)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(ILjava/lang/String;)V

    .line 24
    return-void
.end method

.method private parseLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 39
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 41
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 40
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method


# virtual methods
.method public getLongValue()J
    .locals 4

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/LongAction;->getValue()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v2, v3}, Lcom/handpet/xml/protocol/action/LongAction;->parseLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/LongAction;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/LongAction;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 35
    return-void
.end method
