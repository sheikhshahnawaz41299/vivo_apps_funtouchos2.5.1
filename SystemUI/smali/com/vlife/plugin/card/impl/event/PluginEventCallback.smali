.class public interface abstract Lcom/vlife/plugin/card/impl/event/PluginEventCallback;
.super Ljava/lang/Object;
.source "PluginEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlife/plugin/card/impl/event/PluginEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract pluginCall(Lcom/vlife/plugin/card/impl/action/IAction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
