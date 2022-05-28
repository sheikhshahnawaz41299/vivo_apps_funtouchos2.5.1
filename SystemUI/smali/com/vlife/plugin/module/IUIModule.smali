.class public interface abstract Lcom/vlife/plugin/module/IUIModule;
.super Ljava/lang/Object;
.source "IUIModule.java"

# interfaces
.implements Lcom/vlife/plugin/module/IModule;


# virtual methods
.method public abstract createInstallEventReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
.end method

.method public abstract createPetMainReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
.end method

.method public abstract createVivoSceneChangeReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
.end method

.method public abstract createWebActivityHandler(Landroid/content/Intent;)Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract createWrapperActivityHandler(Landroid/content/Intent;)Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract functionIsOpened(Ljava/lang/String;)Z
.end method

.method public abstract getThemePkg()Ljava/lang/String;
.end method

.method public abstract getWallpaperID()Ljava/lang/String;
.end method

.method public abstract getWallpaperServiceHandler()Lcom/vlife/plugin/module/impl/IServiceHandler;
.end method

.method public abstract netChangeReceiver(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public abstract startLockScreen(Landroid/content/Intent;Z)V
.end method
