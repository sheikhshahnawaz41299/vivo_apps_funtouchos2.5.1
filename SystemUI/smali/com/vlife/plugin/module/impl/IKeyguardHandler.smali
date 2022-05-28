.class public interface abstract Lcom/vlife/plugin/module/impl/IKeyguardHandler;
.super Ljava/lang/Object;
.source "IKeyguardHandler.java"

# interfaces
.implements Lcom/vlife/plugin/module/impl/IShell2ModuleHandler;


# static fields
.field public static final UNLOCK_BROADCAST:Ljava/lang/String; = "com.vlife.component.lockscreen.broadcast.unlock"


# virtual methods
.method public abstract customLockScreen(Z)V
.end method

.method public abstract onAttachedToWindow()V
.end method

.method public abstract onDetachedFromWindow()V
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation
.end method

.method public abstract onHide(Z)V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract onVisibilityChanged(Landroid/view/View;I)V
.end method

.method public abstract setKeyguardHostView(Landroid/widget/FrameLayout;)V
.end method

.method public abstract unbindView()V
.end method
