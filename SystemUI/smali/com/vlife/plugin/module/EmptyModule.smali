.class Lcom/vlife/plugin/module/EmptyModule;
.super Ljava/lang/Object;
.source "EmptyModule.java"

# interfaces
.implements Lcom/vlife/plugin/module/IAlimamaModule;
.implements Lcom/vlife/plugin/module/ILockScreenModule;
.implements Lcom/vlife/plugin/module/IMainProcessModule;
.implements Lcom/vlife/plugin/module/ISuicideManagerModule;
.implements Lcom/vlife/plugin/module/ITaskServiceModule;
.implements Lcom/vlife/plugin/module/IUIModule;
.implements Lcom/vlife/plugin/module/IWallpaperModule;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSuicideFactor(Lcom/vlife/plugin/module/impl/ISuicideFactor;)V
    .locals 0
    .param p1, "suicideFactor"    # Lcom/vlife/plugin/module/impl/ISuicideFactor;

    .prologue
    .line 81
    return-void
.end method

.method public addUmengFeature(Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .locals 0
    .param p1, "relayout"    # Landroid/widget/RelativeLayout;
    .param p2, "contextWrapper"    # Landroid/content/Context;

    .prologue
    .line 191
    return-void
.end method

.method public createBootReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return-object v0
.end method

.method public createEditTextActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method public createInstallEventReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLockScreenActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public createLockScreenExternalActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    return-object v0
.end method

.method public createModule()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public createPetMainReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public createSdcardReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public createShowSetWallpaperActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public createUnlockHandlerFor3Part(Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;)V
    .locals 0
    .param p1, "oppoUnlockHandler"    # Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;

    .prologue
    .line 280
    return-void
.end method

.method public createVivoSceneChangeReceiverHandler()Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWallpaperEngine(Landroid/service/wallpaper/WallpaperService;)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1
    .param p1, "wallpaperService"    # Landroid/service/wallpaper/WallpaperService;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWallpaperInfoActivity()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWallpaperStagePreviewActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWebActivityHandler(Landroid/content/Intent;)Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWelcomeActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWrapperActivityHandler(Landroid/content/Intent;)Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public createWrapperActivityHanlder()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroyModule()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public finishModule()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public functionIsOpened(Ljava/lang/String;)Z
    .locals 1
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyguardHandler()Lcom/vlife/plugin/module/impl/IKeyguardHandler;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLockScreenActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLockScreenHandlerFor3Part()Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLockerServiceHandler()Lcom/vlife/plugin/module/impl/IServiceHandler;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShowChooseWallpaperActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpotifyActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemePkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperPackageActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperServiceHandler()Lcom/vlife/plugin/module/impl/IServiceHandler;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperSetPreviewActivityHandler()Lcom/vlife/plugin/module/impl/IActivityHandler;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleCoverApp(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "handle"    # Ljava/lang/String;

    .prologue
    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoCreate()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public isExist()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public module()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public netChangeReceiver(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    return-void
.end method

.method public onActivityCreate(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    return-void
.end method

.method public onActivityDestory(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 108
    return-void
.end method

.method public onActivityPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    return-void
.end method

.method public onActivityResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    return-void
.end method

.method public onActivityStart(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 124
    return-void
.end method

.method public onActivityStop(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeSuicideFactor(Lcom/vlife/plugin/module/impl/ISuicideFactor;)V
    .locals 0
    .param p1, "suicideFactor"    # Lcom/vlife/plugin/module/impl/ISuicideFactor;

    .prologue
    .line 85
    return-void
.end method

.method public setWallpaperPreviewId(Ljava/lang/String;)V
    .locals 0
    .param p1, "previewId"    # Ljava/lang/String;

    .prologue
    .line 54
    return-void
.end method

.method public startLockScreen(Landroid/content/Intent;Z)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "open"    # Z

    .prologue
    .line 196
    return-void
.end method

.method public startModule()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public startModule(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    return-void
.end method

.method public terminateModule()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public vlifeTaskOnBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public vlifeTaskOnCreate()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public vlifeTaskOnStartCommand(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    return-void
.end method

.method public vlifeTaskonDestroy()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method
