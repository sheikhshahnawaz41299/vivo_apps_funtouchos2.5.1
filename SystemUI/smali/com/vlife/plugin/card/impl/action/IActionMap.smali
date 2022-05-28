.class public interface abstract Lcom/vlife/plugin/card/impl/action/IActionMap;
.super Ljava/lang/Object;
.source "IActionMap.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/action/IAction;


# virtual methods
.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getActionMap(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IActionMap;
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getDouble(Ljava/lang/String;D)D
.end method

.method public abstract getEvent()Ljava/lang/String;
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getKeys()[Ljava/lang/String;
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getValueByKey(Ljava/lang/String;)Lcom/vlife/plugin/card/impl/action/IAction;
.end method

.method public abstract put(Ljava/lang/String;Lcom/vlife/plugin/card/impl/action/IAction;)V
.end method

.method public abstract setAction(Ljava/lang/String;)V
.end method

.method public abstract setEvent(Ljava/lang/String;)V
.end method
