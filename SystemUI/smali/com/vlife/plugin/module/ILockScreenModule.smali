.class public interface abstract Lcom/vlife/plugin/module/ILockScreenModule;
.super Ljava/lang/Object;
.source "ILockScreenModule.java"

# interfaces
.implements Lcom/vlife/plugin/module/IModule;


# static fields
.field public static final ACTION_BROADCAST_THIRD_PARTENER_SET_RESULT:Ljava/lang/String; = "action.com.vlife.wallpaper.SET_RESULT"


# virtual methods
.method public abstract createBootReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
.end method

.method public abstract createEditTextActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract createLockScreenActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract createLockScreenExternalActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract createSdcardReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
.end method

.method public abstract createUnlockHandlerFor3Part(Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;)V
.end method

.method public abstract getKeyguardHandler()Lcom/vlife/plugin/module/impl/IKeyguardHandler;
.end method

.method public abstract getLockScreenActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
.end method

.method public abstract getLockScreenHandlerFor3Part()Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;
.end method

.method public abstract getLockerServiceHandler()Lcom/vlife/plugin/module/impl/IServiceHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract handleCoverApp(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.end method
