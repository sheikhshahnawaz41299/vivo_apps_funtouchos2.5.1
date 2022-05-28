.class public interface abstract Lcom/vlife/plugin/module/IPluginLoader;
.super Ljava/lang/Object;
.source "IPluginLoader.java"


# virtual methods
.method public abstract addPlugin(Landroid/content/Context;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract buildModuleApk(Landroid/content/pm/PackageInfo;Z)V
.end method

.method public abstract copyPlugin(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract findInstallApk(Landroid/content/Context;Z)V
.end method

.method public abstract findUnInstallApk(Landroid/content/Context;Ljava/lang/String;Z)V
.end method
