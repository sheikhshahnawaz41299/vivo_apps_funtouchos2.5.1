.class Lcom/handpet/xml/protocol/action/DDActionCreator;
.super Ljava/lang/Object;
.source "DDActionCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/vlife/plugin/card/impl/action/IAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createActionArrayFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IActionArray;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 103
    .local v3, "size":I
    new-instance v0, Lcom/handpet/xml/protocol/action/ActionArray;

    invoke-direct {v0}, Lcom/handpet/xml/protocol/action/ActionArray;-><init>()V

    .line 104
    .local v0, "actionArray":Lcom/vlife/plugin/card/impl/action/IActionArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 108
    return-object v0

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v1

    .line 106
    .local v1, "ddaction":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v0, v1}, Lcom/vlife/plugin/card/impl/action/IActionArray;->add(Lcom/vlife/plugin/card/impl/action/IAction;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createActionMapFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IActionMap;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 91
    new-instance v1, Lcom/handpet/xml/protocol/action/ActionMap;

    invoke-direct {v1}, Lcom/handpet/xml/protocol/action/ActionMap;-><init>()V

    .line 92
    .local v1, "am":Lcom/vlife/plugin/card/impl/action/IActionMap;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 93
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_0

    .line 98
    return-object v1

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 95
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    .line 96
    .local v0, "action":Lcom/vlife/plugin/card/impl/action/IAction;
    invoke-interface {v1, v3, v0}, Lcom/vlife/plugin/card/impl/action/IActionMap;->put(Ljava/lang/String;Lcom/vlife/plugin/card/impl/action/IAction;)V

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createBooleanAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IBooleanAction;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 69
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 70
    .local v0, "value":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 71
    new-instance v1, Lcom/handpet/xml/protocol/action/BooleanAction;

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-direct {v1, v2}, Lcom/handpet/xml/protocol/action/BooleanAction;-><init>(Z)V

    return-object v1
.end method

.method private createDoubleAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IDoubleAction;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 87
    new-instance v0, Lcom/handpet/xml/protocol/action/DoubleAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/handpet/xml/protocol/action/DoubleAction;-><init>(D)V

    return-object v0
.end method

.method private createIntegerAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IIntegerAction;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 61
    new-instance v0, Lcom/handpet/xml/protocol/action/IntegerAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/handpet/xml/protocol/action/IntegerAction;-><init>(I)V

    return-object v0
.end method

.method private createLongAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/ILongAction;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 65
    new-instance v0, Lcom/handpet/xml/protocol/action/LongAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/handpet/xml/protocol/action/LongAction;-><init>(J)V

    return-object v0
.end method

.method private createNullAction()Lcom/vlife/plugin/card/impl/action/INullAction;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/handpet/xml/protocol/action/NullAction;

    invoke-direct {v0}, Lcom/handpet/xml/protocol/action/NullAction;-><init>()V

    return-object v0
.end method

.method private createStringAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IStringAction;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 83
    new-instance v0, Lcom/handpet/xml/protocol/action/StringAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createUndefineAction()Lcom/vlife/plugin/card/impl/action/IUndefineAction;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/handpet/xml/protocol/action/UndefineAction;

    invoke-direct {v0}, Lcom/handpet/xml/protocol/action/UndefineAction;-><init>()V

    return-object v0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IAction;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 31
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 51
    new-instance v1, Lcom/handpet/xml/protocol/action/StringAction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/handpet/xml/protocol/action/StringAction;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v1

    .line 33
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createIntegerAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IIntegerAction;

    move-result-object v1

    goto :goto_0

    .line 35
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createBooleanAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IBooleanAction;

    move-result-object v1

    goto :goto_0

    .line 37
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createDoubleAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IDoubleAction;

    move-result-object v1

    goto :goto_0

    .line 39
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createLongAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/ILongAction;

    move-result-object v1

    goto :goto_0

    .line 41
    :pswitch_4
    invoke-direct {p0}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createNullAction()Lcom/vlife/plugin/card/impl/action/INullAction;

    move-result-object v1

    goto :goto_0

    .line 43
    :pswitch_5
    invoke-direct {p0}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createUndefineAction()Lcom/vlife/plugin/card/impl/action/IUndefineAction;

    move-result-object v1

    goto :goto_0

    .line 45
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createStringAction(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IStringAction;

    move-result-object v1

    goto :goto_0

    .line 47
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createActionMapFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IActionMap;

    move-result-object v1

    goto :goto_0

    .line 49
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createActionArrayFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IActionArray;

    move-result-object v1

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vlife/plugin/card/impl/action/IAction;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Lcom/vlife/plugin/card/impl/action/IAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/handpet/xml/protocol/action/DDActionCreator;->newArray(I)[Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    return-object v0
.end method
