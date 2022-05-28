.class Lcom/handpet/xml/protocol/action/UndefineAction;
.super Lcom/handpet/xml/protocol/action/StringAction;
.source "UndefineAction.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/IUndefineAction;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    const/4 v0, 0x7

    const-string v1, "undefine"

    invoke-direct {p0, v0, v1}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(ILjava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/UndefineAction;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    return-void
.end method
