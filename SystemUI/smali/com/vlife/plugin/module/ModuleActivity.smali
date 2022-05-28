.class public abstract Lcom/vlife/plugin/module/ModuleActivity;
.super Lcom/handpet/planting/utils/VlifeRootActivity;
.source "ModuleActivity.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

.field private log:Lcom/handpet/common/utils/log/ILogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;-><init>()V

    .line 28
    const-class v0, Lcom/vlife/plugin/module/ModuleActivity;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 26
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/handpet/planting/utils/VlifeRootActivity;->attachBaseContext(Landroid/content/Context;)V

    .line 37
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlife/plugin/module/IStatusModule;->createActivityHandler(Ljava/lang/String;)Lcom/vlife/plugin/module/impl/IActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    .line 38
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1, p0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->attachBaseContext(Landroid/content/Context;Landroid/app/Activity;)V

    .line 41
    :cond_0
    return-void
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 5

    .prologue
    .line 240
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->redirectResource()Z

    move-result v1

    if-nez v1, :cond_2

    .line 241
    :cond_0
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 249
    :cond_1
    :goto_0
    return-object v0

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 244
    .local v0, "assets":Landroid/content/res/AssetManager;
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, "getAssets={}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public final getClassLoader()Ljava/lang/ClassLoader;
    .locals 5

    .prologue
    .line 270
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->redirectResource()Z

    move-result v1

    if-nez v1, :cond_2

    .line 271
    :cond_0
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 279
    :cond_1
    :goto_0
    return-object v0

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 274
    .local v0, "loader":Ljava/lang/ClassLoader;
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, "getClassLoader={}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 6

    .prologue
    .line 296
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->redirectResource()Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    :cond_0
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    .line 299
    :cond_1
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 300
    .local v0, "li":Landroid/view/LayoutInflater;
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 301
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, "[inflate][li={}][context={}][res={}]...[context={}][res={}][asset={}]"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p0, v3, v4

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/vlife/plugin/module/ModuleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/vlife/plugin/module/ModuleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final getPackageResourcePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 283
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->redirectResource()Z

    move-result v1

    if-nez v1, :cond_2

    .line 284
    :cond_0
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 292
    :cond_1
    :goto_0
    return-object v0

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "packageResourcepath":Ljava/lang/String;
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, "getPackageResourcePath={}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 5

    .prologue
    .line 224
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->redirectResource()Z

    move-result v1

    if-nez v1, :cond_2

    .line 225
    :cond_0
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 233
    :cond_1
    :goto_0
    return-object v0

    .line 227
    :cond_2
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 228
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, "getResources={}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 5

    .prologue
    .line 256
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->redirectResource()Z

    move-result v1

    if-nez v1, :cond_2

    .line 257
    :cond_0
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 265
    :cond_1
    :goto_0
    return-object v0

    .line 259
    :cond_2
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 260
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Lcom/vlife/plugin/module/ModuleActivity;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, "getTheme={}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/handpet/planting/utils/VlifeRootActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 112
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 115
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/handpet/planting/utils/VlifeRootActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1, p0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/vlife/plugin/module/ModuleActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onDestroy()V

    .line 91
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/handpet/planting/utils/VlifeRootActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/handpet/planting/utils/VlifeRootActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1, p3}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onKeyMultiple(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const/4 v0, 0x1

    .line 196
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/handpet/planting/utils/VlifeRootActivity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/handpet/planting/utils/VlifeRootActivity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1, p2}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/handpet/planting/utils/VlifeRootActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/handpet/planting/utils/VlifeRootActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 104
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onNewIntent(Landroid/content/Intent;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->onPause()V

    .line 72
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onPause()V

    .line 75
    :cond_0
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/handpet/planting/utils/VlifeRootActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onPostCreate(Landroid/os/Bundle;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->onPostResume()V

    .line 136
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onPostResume()V

    .line 139
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->onRestart()V

    .line 96
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onRestart()V

    .line 99
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/handpet/planting/utils/VlifeRootActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onResume()V

    .line 67
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->onStart()V

    .line 56
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onStart()V

    .line 59
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->onStop()V

    .line 80
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onStop()V

    .line 83
    :cond_0
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/handpet/planting/utils/VlifeRootActivity;->onUserLeaveHint()V

    .line 144
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onUserLeaveHint()V

    .line 147
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/handpet/planting/utils/VlifeRootActivity;->onWindowFocusChanged(Z)V

    .line 212
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/vlife/plugin/module/ModuleActivity;->activityHandler:Lcom/vlife/plugin/module/impl/IActivityHandler;

    invoke-interface {v0, p1}, Lcom/vlife/plugin/module/impl/IActivityHandler;->onWindowFocusChanged(Z)V

    .line 215
    :cond_0
    return-void
.end method
