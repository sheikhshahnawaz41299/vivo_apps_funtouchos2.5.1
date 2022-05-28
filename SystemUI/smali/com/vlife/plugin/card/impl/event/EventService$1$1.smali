.class Lcom/vlife/plugin/card/impl/event/EventService$1$1;
.super Ljava/lang/Object;
.source "EventService.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/IEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlife/plugin/card/impl/event/EventService$1;->callPlugin(Lcom/vlife/plugin/card/impl/action/IAction;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vlife/plugin/card/impl/event/EventService$1;

.field private final synthetic val$callback:Lcom/vlife/plugin/card/impl/event/PluginEventCallback;


# direct methods
.method constructor <init>(Lcom/vlife/plugin/card/impl/event/EventService$1;Lcom/vlife/plugin/card/impl/event/PluginEventCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vlife/plugin/card/impl/event/EventService$1$1;->this$1:Lcom/vlife/plugin/card/impl/event/EventService$1;

    iput-object p2, p0, Lcom/vlife/plugin/card/impl/event/EventService$1$1;->val$callback:Lcom/vlife/plugin/card/impl/event/PluginEventCallback;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public pluginCall(Lcom/vlife/plugin/card/impl/action/IAction;)V
    .locals 2
    .param p1, "callAction"    # Lcom/vlife/plugin/card/impl/action/IAction;

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/vlife/plugin/card/impl/event/EventService$1$1;->val$callback:Lcom/vlife/plugin/card/impl/event/PluginEventCallback;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/vlife/plugin/card/impl/event/EventService$1$1;->val$callback:Lcom/vlife/plugin/card/impl/event/PluginEventCallback;

    invoke-interface {v1, p1}, Lcom/vlife/plugin/card/impl/event/PluginEventCallback;->pluginCall(Lcom/vlife/plugin/card/impl/action/IAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
