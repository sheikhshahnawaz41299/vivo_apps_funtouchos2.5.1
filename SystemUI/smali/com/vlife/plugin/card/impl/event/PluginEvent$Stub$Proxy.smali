.class Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub$Proxy;
.super Ljava/lang/Object;
.source "PluginEvent.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/event/PluginEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 69
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public callPlugin(Lcom/vlife/plugin/card/impl/action/IAction;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "action"    # Lcom/vlife/plugin/card/impl/action/IAction;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 82
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.vlife.plugin.card.impl.event.PluginEvent"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/vlife/plugin/card/impl/action/IAction;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 91
    iget-object v1, p0, Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 96
    return-void

    .line 88
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    .line 94
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "com.vlife.plugin.card.impl.event.PluginEvent"

    return-object v0
.end method
