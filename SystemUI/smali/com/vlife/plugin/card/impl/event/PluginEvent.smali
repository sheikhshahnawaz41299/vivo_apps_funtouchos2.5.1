.class public interface abstract Lcom/vlife/plugin/card/impl/event/PluginEvent;
.super Ljava/lang/Object;
.source "PluginEvent.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlife/plugin/card/impl/event/PluginEvent$Stub;
    }
.end annotation


# virtual methods
.method public abstract callPlugin(Lcom/vlife/plugin/card/impl/action/IAction;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
