.class public abstract Lcom/vlife/plugin/module/abs/AbstractModuleApplication;
.super Landroid/app/Application;
.source "AbstractModuleApplication.java"

# interfaces
.implements Lcom/vlife/plugin/module/IApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public buildApplication(Landroid/content/Context;Lcom/vlife/plugin/module/IApplication;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "application"    # Lcom/vlife/plugin/module/IApplication;

    .prologue
    .line 24
    invoke-static {p1, p2}, Lcom/vlife/plugin/module/ModuleCreateFactory;->doCreated(Landroid/content/Context;Lcom/vlife/plugin/module/IApplication;)V

    .line 25
    return-void
.end method

.method public disable()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public enable()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public initModule()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 19
    invoke-virtual {p0}, Lcom/vlife/plugin/module/abs/AbstractModuleApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/vlife/plugin/module/abs/AbstractModuleApplication;->buildApplication(Landroid/content/Context;Lcom/vlife/plugin/module/IApplication;)V

    .line 20
    return-void
.end method
