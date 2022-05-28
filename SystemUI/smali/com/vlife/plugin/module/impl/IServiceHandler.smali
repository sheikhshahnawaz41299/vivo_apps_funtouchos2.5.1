.class public interface abstract Lcom/vlife/plugin/module/impl/IServiceHandler;
.super Ljava/lang/Object;
.source "IServiceHandler.java"

# interfaces
.implements Lcom/vlife/plugin/module/impl/IShell2ModuleHandler;


# virtual methods
.method public abstract attachBaseContext(Landroid/content/Context;Landroid/app/Service;)V
.end method

.method public abstract getService()Landroid/app/Service;
.end method

.method public abstract onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate()V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract onRebind(Landroid/content/Intent;)V
.end method

.method public abstract onStart(Landroid/content/Intent;Landroid/app/Service;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onStartCommand(Landroid/content/Intent;II)I
.end method

.method public abstract onTaskRemoved(Landroid/content/Intent;)V
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract onUnbind(Landroid/content/Intent;)Z
.end method
