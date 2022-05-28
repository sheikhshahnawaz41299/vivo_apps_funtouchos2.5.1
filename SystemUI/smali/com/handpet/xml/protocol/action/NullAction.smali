.class Lcom/handpet/xml/protocol/action/NullAction;
.super Lcom/handpet/xml/protocol/action/StringAction;
.source "NullAction.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/INullAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(I)V

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
    invoke-virtual {p0}, Lcom/handpet/xml/protocol/action/NullAction;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    return-void
.end method
