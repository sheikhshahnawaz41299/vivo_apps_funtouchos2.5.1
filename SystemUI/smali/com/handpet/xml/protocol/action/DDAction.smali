.class abstract Lcom/handpet/xml/protocol/action/DDAction;
.super Ljava/lang/Object;
.source "DDAction.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/IAction;


# instance fields
.field private final type:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/handpet/xml/protocol/action/DDAction;->type:I

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/handpet/xml/protocol/action/DDAction;->type:I

    return v0
.end method
