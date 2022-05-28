.class public interface abstract Lcom/vlife/plugin/card/impl/IPlugin;
.super Ljava/lang/Object;
.source "IPlugin.java"


# static fields
.field public static final TYPE_SEARCH:Ljava/lang/String; = "search"

.field public static final TYPE_SO:Ljava/lang/String; = "so"

.field public static final TYPE_ZIP:Ljava/lang/String; = "zip"


# virtual methods
.method public abstract engineCallJava(Lcom/vlife/plugin/card/impl/action/IActionMap;)Lcom/vlife/plugin/card/impl/action/IAction;
.end method

.method public abstract findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getValuesByType(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract isEnable(Ljava/lang/String;)Z
.end method

.method public abstract version()I
.end method
