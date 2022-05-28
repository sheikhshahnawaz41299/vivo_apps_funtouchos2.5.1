.class public interface abstract Lcom/vlife/plugin/module/IModule;
.super Ljava/lang/Object;
.source "IModule.java"


# static fields
.field public static final PACKAGE_MODULE:Ljava/lang/String; = "com.vlife.plugin.module"

.field public static final PLUGIN_VERSION:I = 0x2f


# virtual methods
.method public abstract createModule()V
.end method

.method public abstract destroyModule()V
.end method

.method public abstract finishModule()V
.end method

.method public abstract isAutoCreate()Z
.end method

.method public abstract isEnable()Z
.end method

.method public abstract isExist()Z
.end method

.method public abstract module()Ljava/lang/String;
.end method

.method public abstract startModule()V
.end method

.method public abstract startModule(Landroid/content/Intent;)V
.end method

.method public abstract terminateModule()V
.end method
