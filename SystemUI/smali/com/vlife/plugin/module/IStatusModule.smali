.class public interface abstract Lcom/vlife/plugin/module/IStatusModule;
.super Ljava/lang/Object;
.source "IStatusModule.java"


# virtual methods
.method public abstract createActivityHandler(Ljava/lang/String;)Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract createBroadcastReceiverHandler(Ljava/lang/String;)Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
.end method

.method public abstract createServiceHandler(Ljava/lang/String;)Lcom/vlife/plugin/module/impl/IServiceHandler;
.end method

.method public abstract functionEnable(Ljava/lang/String;)Z
.end method

.method public abstract ua(Ljava/lang/String;[[Ljava/lang/String;)V
.end method
