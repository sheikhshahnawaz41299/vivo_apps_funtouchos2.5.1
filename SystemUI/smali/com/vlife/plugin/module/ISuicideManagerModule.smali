.class public interface abstract Lcom/vlife/plugin/module/ISuicideManagerModule;
.super Ljava/lang/Object;
.source "ISuicideManagerModule.java"

# interfaces
.implements Lcom/vlife/plugin/module/IModule;


# virtual methods
.method public abstract addSuicideFactor(Lcom/vlife/plugin/module/impl/ISuicideFactor;)V
.end method

.method public abstract onActivityCreate(Landroid/app/Activity;)V
.end method

.method public abstract onActivityDestory(Landroid/app/Activity;)V
.end method

.method public abstract onActivityPause(Landroid/app/Activity;)V
.end method

.method public abstract onActivityResume(Landroid/app/Activity;)V
.end method

.method public abstract onActivityStart(Landroid/app/Activity;)V
.end method

.method public abstract onActivityStop(Landroid/app/Activity;)V
.end method

.method public abstract removeSuicideFactor(Lcom/vlife/plugin/module/impl/ISuicideFactor;)V
.end method
