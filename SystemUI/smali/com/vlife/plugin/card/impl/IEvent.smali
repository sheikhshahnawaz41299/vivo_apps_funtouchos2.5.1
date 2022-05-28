.class public interface abstract Lcom/vlife/plugin/card/impl/IEvent;
.super Ljava/lang/Object;
.source "IEvent.java"


# static fields
.field public static final EVENT_ACTION:Ljava/lang/String; = "com.vlife.plugin.event"


# virtual methods
.method public abstract callPlugin(Lcom/vlife/plugin/card/impl/action/IAction;Lcom/vlife/plugin/card/impl/IEventCallback;)V
.end method

.method public abstract getLibrarys()[Ljava/lang/String;
.end method

.method public abstract onCreate(Lcom/vlife/plugin/card/impl/IPlugin;)V
.end method

.method public abstract version()I
.end method
