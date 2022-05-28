.class public interface abstract Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;
.super Ljava/lang/Object;
.source "ILockScreenHandlerFor3Part.java"

# interfaces
.implements Lcom/vlife/plugin/module/impl/IShell2ModuleHandler;


# virtual methods
.method public abstract changeLockScreenId(Ljava/lang/String;)V
.end method

.method public abstract handleScreenOff()V
.end method

.method public abstract handleScreenOn()V
.end method

.method public abstract onCreate()Landroid/view/View;
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onKeyDown(Landroid/view/KeyEvent;)V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method
