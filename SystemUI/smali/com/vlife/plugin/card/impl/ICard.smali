.class public interface abstract Lcom/vlife/plugin/card/impl/ICard;
.super Ljava/lang/Object;
.source "ICard.java"

# interfaces
.implements Lcom/vlife/plugin/card/impl/IEvent;


# static fields
.field public static final CARD_3D:I = 0x3

.field public static final CARD_ACTION:Ljava/lang/String; = "com.vlife.plugin.card"

.field public static final CARD_TYPE_ENGINE:I = 0x2

.field public static final CARD_TYPE_ENGINE_EXT:I = 0x4

.field public static final CARD_TYPE_VIEW:I = 0x1


# virtual methods
.method public abstract cardType()I
.end method

.method public abstract onCreateEngine()Lcom/vlife/plugin/card/impl/IEngine;
.end method

.method public abstract onCreateView()Lcom/vlife/plugin/card/impl/IView;
.end method

.method public abstract onCreateView(Landroid/os/Bundle;)Lcom/vlife/plugin/card/impl/IView;
.end method

.method public abstract onDestory()V
.end method
