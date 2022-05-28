.class public Lcom/vlife/plugin/card/impl/action/ActionCreator;
.super Ljava/lang/Object;
.source "ActionCreator.java"

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


# instance fields
.field private proxy:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlife/plugin/card/impl/action/ActionCreator;->proxy:Landroid/os/Parcelable$Creator;

    .line 17
    return-void
.end method

.method private static createAction(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;Ljava/lang/Object;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    return-object v0
.end method

.method private static createAction(Ljava/lang/String;Ljava/lang/Object;)Lcom/vlife/plugin/card/impl/action/IAction;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 96
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 97
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 98
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlife/plugin/card/impl/action/IAction;

    .line 106
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 100
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 101
    .restart local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 102
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlife/plugin/card/impl/action/IAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static createActionArray()Lcom/vlife/plugin/card/impl/action/IActionArray;
    .locals 1

    .prologue
    .line 80
    const-string v0, "com.handpet.xml.protocol.action.ActionArray"

    invoke-static {v0}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IActionArray;

    return-object v0
.end method

.method public static createActionMap()Lcom/vlife/plugin/card/impl/action/IActionMap;
    .locals 1

    .prologue
    .line 84
    const-string v0, "com.handpet.xml.protocol.action.ActionMap"

    invoke-static {v0}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IActionMap;

    return-object v0
.end method

.method public static createBooleanAction(Z)Lcom/vlife/plugin/card/impl/action/IBooleanAction;
    .locals 2
    .param p0, "value"    # Z

    .prologue
    .line 68
    const-string v0, "com.handpet.xml.protocol.action.BooleanAction"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 67
    invoke-static {v0, v1}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;Ljava/lang/Object;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IBooleanAction;

    return-object v0
.end method

.method public static createDoubleAction(D)Lcom/vlife/plugin/card/impl/action/IDoubleAction;
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 53
    const-string v0, "com.handpet.xml.protocol.action.DoubleAction"

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 52
    invoke-static {v0, v1}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;Ljava/lang/Object;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IDoubleAction;

    return-object v0
.end method

.method public static createIntegerAction(I)Lcom/vlife/plugin/card/impl/action/IIntegerAction;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 58
    const-string v0, "com.handpet.xml.protocol.action.IntegerAction"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;Ljava/lang/Object;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IIntegerAction;

    return-object v0
.end method

.method public static createLongAction(J)Lcom/vlife/plugin/card/impl/action/ILongAction;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 63
    const-string v0, "com.handpet.xml.protocol.action.LongAction"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;Ljava/lang/Object;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/ILongAction;

    return-object v0
.end method

.method public static createNullAction()Lcom/vlife/plugin/card/impl/action/INullAction;
    .locals 1

    .prologue
    .line 72
    const-string v0, "com.handpet.xml.protocol.action.NullAction"

    invoke-static {v0}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/INullAction;

    return-object v0
.end method

.method public static createStringAction(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IStringAction;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v0, "com.handpet.xml.protocol.action.StringAction"

    .line 47
    invoke-static {v0, p0}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;Ljava/lang/Object;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IStringAction;

    return-object v0
.end method

.method public static createUndefineAction()Lcom/vlife/plugin/card/impl/action/IUndefineAction;
    .locals 1

    .prologue
    .line 76
    const-string v0, "com.handpet.xml.protocol.action.UndefineAction"

    invoke-static {v0}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createAction(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IUndefineAction;

    return-object v0
.end method

.method private getProxy()Landroid/os/Parcelable$Creator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vlife/plugin/card/impl/action/IAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v3, p0, Lcom/vlife/plugin/card/impl/action/ActionCreator;->proxy:Landroid/os/Parcelable$Creator;

    if-nez v3, :cond_0

    .line 25
    :try_start_0
    const-string v3, "com.handpet.xml.protocol.action.DDActionCreator"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 26
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 27
    .local v1, "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 28
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable$Creator;

    iput-object v3, p0, Lcom/vlife/plugin/card/impl/action/ActionCreator;->proxy:Landroid/os/Parcelable$Creator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "con":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/vlife/plugin/card/impl/action/ActionCreator;->proxy:Landroid/os/Parcelable$Creator;

    return-object v3

    .line 29
    :catch_0
    move-exception v2

    .line 30
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IAction;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->getProxy()Landroid/os/Parcelable$Creator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vlife/plugin/card/impl/action/IAction;

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/vlife/plugin/card/impl/action/IAction;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->getProxy()Landroid/os/Parcelable$Creator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vlife/plugin/card/impl/action/IAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vlife/plugin/card/impl/action/ActionCreator;->newArray(I)[Lcom/vlife/plugin/card/impl/action/IAction;

    move-result-object v0

    return-object v0
.end method
