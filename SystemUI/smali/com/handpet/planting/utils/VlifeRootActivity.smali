.class public abstract Lcom/handpet/planting/utils/VlifeRootActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "VlifeRootActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private log:Lcom/handpet/common/utils/log/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 25
    const-class v0, Lcom/handpet/planting/utils/VlifeRootActivity;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/handpet/planting/utils/VlifeRootActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 24
    return-void
.end method


# virtual methods
.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSuperTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method

.method public isPushToStack()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getSuicideManagerModule()Lcom/vlife/plugin/module/ISuicideManagerModule;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vlife/plugin/module/ISuicideManagerModule;->onActivityCreate(Landroid/app/Activity;)V

    .line 31
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "__root_onCreate(){}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "__root_onDestroy(){}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 74
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getSuicideManagerModule()Lcom/vlife/plugin/module/ISuicideManagerModule;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vlife/plugin/module/ISuicideManagerModule;->onActivityDestory(Landroid/app/Activity;)V

    .line 75
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "__root_onNewIntent(){}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "__root_onPause(){}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 60
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getSuicideManagerModule()Lcom/vlife/plugin/module/ISuicideManagerModule;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vlife/plugin/module/ISuicideManagerModule;->onActivityPause(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 43
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "__root_onResume(){}"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 45
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getSuicideManagerModule()Lcom/vlife/plugin/module/ISuicideManagerModule;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vlife/plugin/module/ISuicideManagerModule;->onActivityResume(Landroid/app/Activity;)V

    .line 46
    const v0, 0x1030005

    invoke-virtual {p0, v0}, Lcom/handpet/planting/utils/VlifeRootActivity;->setTheme(I)V

    .line 47
    invoke-virtual {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 48
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 37
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "__root_onStart(){}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getSuicideManagerModule()Lcom/vlife/plugin/module/ISuicideManagerModule;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vlife/plugin/module/ISuicideManagerModule;->onActivityStart(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "__root_onStop(){}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 67
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getSuicideManagerModule()Lcom/vlife/plugin/module/ISuicideManagerModule;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vlife/plugin/module/ISuicideManagerModule;->onActivityStop(Landroid/app/Activity;)V

    .line 68
    return-void
.end method
