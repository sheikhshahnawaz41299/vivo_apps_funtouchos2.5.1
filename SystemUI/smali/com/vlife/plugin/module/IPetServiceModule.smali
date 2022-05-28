.class public interface abstract Lcom/vlife/plugin/module/IPetServiceModule;
.super Ljava/lang/Object;
.source "IPetServiceModule.java"

# interfaces
.implements Lcom/vlife/plugin/module/IModule;


# virtual methods
.method public abstract createPetServiceHandler()Lcom/vlife/plugin/module/impl/IPServiceHandler;
.end method

.method public abstract getPServiceReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
.end method

.method public abstract getPetServiceHanlder()Lcom/vlife/plugin/module/impl/IPServiceHandler;
.end method
