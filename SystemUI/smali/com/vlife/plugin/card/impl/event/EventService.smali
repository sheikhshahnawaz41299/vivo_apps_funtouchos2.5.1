.class public Lcom/vlife/plugin/card/impl/event/EventService;
.super Landroid/app/Service;
.source "EventService.java"


# static fields
.field private static event:Lcom/vlife/plugin/card/impl/IEvent;

.field private static plugin:Lcom/vlife/plugin/card/impl/IPlugin;


# instance fields
.field private binder:Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Lcom/vlife/plugin/card/impl/event/EventService$1;

    invoke-direct {v0, p0}, Lcom/vlife/plugin/card/impl/event/EventService$1;-><init>(Lcom/vlife/plugin/card/impl/event/EventService;)V

    iput-object v0, p0, Lcom/vlife/plugin/card/impl/event/EventService;->binder:Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub;

    .line 19
    return-void
.end method

.method static synthetic access$0()Lcom/vlife/plugin/card/impl/IEvent;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/vlife/plugin/card/impl/event/EventService;->event:Lcom/vlife/plugin/card/impl/IEvent;

    return-object v0
.end method

.method public static getPlugin()Lcom/vlife/plugin/card/impl/IPlugin;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    sget-object v0, Lcom/vlife/plugin/card/impl/event/EventService;->plugin:Lcom/vlife/plugin/card/impl/IPlugin;

    return-object v0
.end method

.method public static setEvent(Lcom/vlife/plugin/card/impl/IEvent;)V
    .locals 0
    .param p0, "event"    # Lcom/vlife/plugin/card/impl/IEvent;

    .prologue
    .line 24
    sput-object p0, Lcom/vlife/plugin/card/impl/event/EventService;->event:Lcom/vlife/plugin/card/impl/IEvent;

    .line 25
    return-void
.end method

.method public static setPlugin(Lcom/vlife/plugin/card/impl/IPlugin;)V
    .locals 0
    .param p0, "plugin"    # Lcom/vlife/plugin/card/impl/IPlugin;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    sput-object p0, Lcom/vlife/plugin/card/impl/event/EventService;->plugin:Lcom/vlife/plugin/card/impl/IPlugin;

    .line 35
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vlife/plugin/card/impl/event/EventService;->binder:Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub;

    return-object v0
.end method
