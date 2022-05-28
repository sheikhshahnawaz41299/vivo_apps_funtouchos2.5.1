.class public interface abstract Lcom/vlife/plugin/card/impl/IView;
.super Ljava/lang/Object;
.source "IView.java"


# static fields
.field public static final START_ROLLED_CORNER_STATE:I = 0x3

.field public static final START_SHOW_CORNER_STATE:I = 0x1

.field public static final WHOLE_ROLLED_STATE:I = 0x4

.field public static final WHOLE_SHOW_STATE:I = 0x2


# virtual methods
.method public abstract getView()Landroid/view/View;
.end method

.method public abstract pauseModule()V
.end method

.method public abstract pauseModule(Z)V
.end method

.method public abstract resumeModule()V
.end method
