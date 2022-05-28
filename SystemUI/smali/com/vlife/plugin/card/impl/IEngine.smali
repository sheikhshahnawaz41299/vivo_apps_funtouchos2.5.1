.class public interface abstract Lcom/vlife/plugin/card/impl/IEngine;
.super Ljava/lang/Object;
.source "IEngine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final WALLPAPER_DISPLAY_MODE_DESKTOP:I = 0x0

.field public static final WALLPAPER_DISPLAY_MODE_EDIT:I = 0x2

.field public static final WALLPAPER_DISPLAY_MODE_LOCKSCREEN:I = 0x3

.field public static final WALLPAPER_DISPLAY_MODE_PREVIEW:I = 0x1

.field public static final WALLPAPER_DISPLAY_MODE_VIEWING:I = 0x4


# virtual methods
.method public abstract callEngine(Lcom/vlife/plugin/card/impl/action/IActionMap;Z)Lcom/vlife/plugin/card/impl/action/IActionMap;
.end method

.method public abstract callback([Lcom/vlife/plugin/card/impl/action/IAction;)V
.end method

.method public abstract loadData([Lcom/vlife/plugin/card/impl/action/IAction;)V
.end method

.method public abstract pauseModule(Landroid/view/SurfaceHolder;)V
.end method

.method public abstract pauseModule(Landroid/view/SurfaceHolder;Z)V
.end method

.method public abstract resumeModule(Landroid/view/SurfaceHolder;)V
.end method
