.class Lcom/vlife/plugin/card/impl/event/EventService$1;
.super Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub;
.source "EventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlife/plugin/card/impl/event/EventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlife/plugin/card/impl/event/EventService;


# direct methods
.method constructor <init>(Lcom/vlife/plugin/card/impl/event/EventService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vlife/plugin/card/impl/event/EventService$1;->this$0:Lcom/vlife/plugin/card/impl/event/EventService;

    .line 37
    invoke-direct {p0}, Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callPlugin(Lcom/vlife/plugin/card/impl/action/IAction;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "action"    # Lcom/vlife/plugin/card/impl/action/IAction;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Lcom/vlife/plugin/card/impl/event/EventService;->access$0()Lcom/vlife/plugin/card/impl/IEvent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p2}, Lcom/vlife/plugin/card/impl/event/PluginEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vlife/plugin/card/impl/event/PluginEventCallback;

    move-result-object v0

    .line 45
    .local v0, "callback":Lcom/vlife/plugin/card/impl/event/PluginEventCallback;
    invoke-static {}, Lcom/vlife/plugin/card/impl/event/EventService;->access$0()Lcom/vlife/plugin/card/impl/IEvent;

    move-result-object v1

    new-instance v2, Lcom/vlife/plugin/card/impl/event/EventService$1$1;

    invoke-direct {v2, p0, v0}, Lcom/vlife/plugin/card/impl/event/EventService$1$1;-><init>(Lcom/vlife/plugin/card/impl/event/EventService$1;Lcom/vlife/plugin/card/impl/event/PluginEventCallback;)V

    invoke-interface {v1, p1, v2}, Lcom/vlife/plugin/card/impl/IEvent;->callPlugin(Lcom/vlife/plugin/card/impl/action/IAction;Lcom/vlife/plugin/card/impl/IEventCallback;)V

    .line 59
    .end local v0    # "callback":Lcom/vlife/plugin/card/impl/event/PluginEventCallback;
    :cond_0
    return-void
.end method
