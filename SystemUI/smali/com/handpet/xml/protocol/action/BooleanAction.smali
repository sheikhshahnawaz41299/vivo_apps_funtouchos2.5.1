.class Lcom/handpet/xml/protocol/action/BooleanAction;
.super Lcom/handpet/xml/protocol/action/StringAction;
.source "BooleanAction.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/IBooleanAction;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/BooleanAction;-><init>(Z)V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(ILjava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/BooleanAction;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getBooleanValue()Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/BooleanAction;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/BooleanAction;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/BooleanAction;->getBooleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 37
    return-void
.end method
