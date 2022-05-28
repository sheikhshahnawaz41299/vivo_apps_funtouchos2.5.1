.class public Lcom/vlife/VlifeLockScreen;
.super Ljava/lang/Object;
.source "VlifeLockScreen.java"


# static fields
.field private static final IS_DOOV_SHELL:Z = false

.field private static final IS_MX_SHELL:Z = false

.field private static final IS_VIVO_SHELL:Z = true

.field private static final TAG:Ljava/lang/String; = "VlifeLockScreen"

.field private static isFirstRun:Z

.field private static log:Lcom/handpet/common/utils/log/ILogger;


# instance fields
.field private context:Landroid/content/Context;

.field private isUnlockSoundOn:Z

.field private isUnlockVibrateOn:Z

.field private lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

.field private onTouchListener:Landroid/view/View$OnTouchListener;

.field private touchEvent:Lcom/vlife/IRegisterOnTouchEvent;

.field private unlockEvent:Lcom/vlife/IRegisterUnlockEvent;

.field private unlockHandler:Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/vlife/VlifeLockScreen;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    sput-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vlife/VlifeLockScreen;->isFirstRun:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/vlife/VlifeLockScreen$1;

    invoke-direct {v0, p0}, Lcom/vlife/VlifeLockScreen$1;-><init>(Lcom/vlife/VlifeLockScreen;)V

    iput-object v0, p0, Lcom/vlife/VlifeLockScreen;->unlockHandler:Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;

    .line 273
    new-instance v0, Lcom/vlife/VlifeLockScreen$2;

    invoke-direct {v0, p0}, Lcom/vlife/VlifeLockScreen$2;-><init>(Lcom/vlife/VlifeLockScreen;)V

    iput-object v0, p0, Lcom/vlife/VlifeLockScreen;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 25
    return-void
.end method

.method static synthetic access$0()Lcom/handpet/common/utils/log/ILogger;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vlife/VlifeLockScreen;)Lcom/vlife/IRegisterUnlockEvent;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->unlockEvent:Lcom/vlife/IRegisterUnlockEvent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vlife/VlifeLockScreen;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vlife/VlifeLockScreen;->isUnlockVibrateOn:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vlife/VlifeLockScreen;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/vlife/VlifeLockScreen;->isUnlockSoundOn:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vlife/VlifeLockScreen;)Lcom/vlife/IRegisterOnTouchEvent;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->touchEvent:Lcom/vlife/IRegisterOnTouchEvent;

    return-object v0
.end method

.method private static init3PartShellInfo()V
    .locals 3

    .prologue
    .line 289
    const-string v0, "vivo"

    const-string v1, "com.vlife.vivo.wallpaper"

    const-string v2, "com.android.systemui"

    invoke-static {v0, v1, v2}, Lcom/vlife/plugin/module/tools/ShellProduct;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    return-void
.end method

.method public static isVlifeWallpaperInstalled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 243
    invoke-static {}, Lcom/vlife/VlifeLockScreen;->init3PartShellInfo()V

    .line 244
    const/4 v1, 0x0

    .line 246
    .local v1, "installed":Z
    :try_start_0
    sget-object v5, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v6, "PackageName = {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/vlife/plugin/module/tools/ShellProduct;->getCurrentProductPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {}, Lcom/vlife/plugin/module/tools/ShellProduct;->getCurrentProductPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 248
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 249
    .local v3, "versionCode":I
    sget-object v5, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v6, "versionCode = {}"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/handpet/common/utils/log/ILogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    const/16 v4, 0x1bf

    if-le v3, v4, :cond_0

    .line 251
    const/4 v1, 0x1

    :cond_0
    move v4, v1

    .line 257
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "versionCode":I
    :goto_0
    return v4

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "VlifeLockScreen"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeLockScreenId(Ljava/lang/String;)V
    .locals 4
    .param p1, "zipPath"    # Ljava/lang/String;

    .prologue
    .line 266
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "changeLockScreenId zipPath = {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    invoke-interface {v0, p1}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->changeLockScreenId(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public getVlifeLockScreenView(Landroid/content/Context;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 102
    sget-object v2, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v3, "getVlifeLockScreenView = {}"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/vlife/VlifeLockScreen;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/vlife/VlifeLockScreen;->init(Landroid/content/Context;)V

    .line 106
    :cond_0
    sget-object v2, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v3, "ModuleFactory.getLockScreenModule() = {}, lockScreenHandler = {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 107
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getLockScreenModule()Lcom/vlife/plugin/module/ILockScreenModule;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    aput-object v5, v4, v7

    .line 106
    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object v2, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    if-nez v2, :cond_1

    .line 109
    invoke-static {}, Lcom/vlife/VlifeLockScreen;->init3PartShellInfo()V

    .line 110
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getLockScreenModule()Lcom/vlife/plugin/module/ILockScreenModule;

    move-result-object v2

    invoke-interface {v2}, Lcom/vlife/plugin/module/ILockScreenModule;->getLockScreenHandlerFor3Part()Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    move-result-object v2

    iput-object v2, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    .line 111
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getLockScreenModule()Lcom/vlife/plugin/module/ILockScreenModule;

    move-result-object v2

    iget-object v3, p0, Lcom/vlife/VlifeLockScreen;->unlockHandler:Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;

    invoke-interface {v2, v3}, Lcom/vlife/plugin/module/ILockScreenModule;->createUnlockHandlerFor3Part(Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;)V

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    invoke-interface {v2}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->onCreate()Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 116
    .local v0, "parentView":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    .end local v0    # "parentView":Landroid/view/ViewGroup;
    :cond_2
    return-object v1
.end method

.method public handleScreenOff()V
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "handleScreenOff"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    invoke-interface {v0}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->handleScreenOff()V

    .line 130
    :cond_0
    return-void
.end method

.method public handleScreenOn()V
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "handleScreenOn"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    invoke-interface {v0}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->handleScreenOn()V

    .line 141
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "hide"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    invoke-interface {v0}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->onPause()V

    .line 178
    :cond_0
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/vlife/VlifeLockScreen;->context:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 78
    iput-object p1, p0, Lcom/vlife/VlifeLockScreen;->context:Landroid/content/Context;

    .line 80
    :cond_0
    invoke-static {}, Lcom/vlife/VlifeLockScreen;->init3PartShellInfo()V

    .line 81
    invoke-static {p1}, Lcom/vlife/VlifeLockScreen;->isVlifeWallpaperInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const-string v1, "VlifeLockScreen"

    const-string v2, "ERROR you must install vlife wallpaper engine!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "you must install vlife wallpaper engine!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_1
    sget-boolean v1, Lcom/vlife/VlifeLockScreen;->isFirstRun:Z

    if-eqz v1, :cond_2

    .line 86
    sget-object v1, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, "isFirstRun"

    invoke-interface {v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/vlife/HandpetApplication;

    invoke-direct {v0}, Lcom/vlife/HandpetApplication;-><init>()V

    .line 88
    .local v0, "handpetApplication":Lcom/vlife/HandpetApplication;
    invoke-virtual {v0, p1, v0}, Lcom/vlife/HandpetApplication;->buildApplication(Landroid/content/Context;Lcom/vlife/plugin/module/IApplication;)V

    .line 89
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getLockScreenModule()Lcom/vlife/plugin/module/ILockScreenModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlife/plugin/module/ILockScreenModule;->getLockScreenHandlerFor3Part()Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    move-result-object v1

    iput-object v1, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    .line 90
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getLockScreenModule()Lcom/vlife/plugin/module/ILockScreenModule;

    move-result-object v1

    iget-object v2, p0, Lcom/vlife/VlifeLockScreen;->unlockHandler:Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;

    invoke-interface {v1, v2}, Lcom/vlife/plugin/module/ILockScreenModule;->createUnlockHandlerFor3Part(Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;)V

    .line 91
    const/4 v1, 0x0

    sput-boolean v1, Lcom/vlife/VlifeLockScreen;->isFirstRun:Z

    .line 93
    .end local v0    # "handpetApplication":Lcom/vlife/HandpetApplication;
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "onDestroy"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    invoke-interface {v0}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->onDestroy()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->unlockHandler:Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;

    if-eqz v0, :cond_1

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlife/VlifeLockScreen;->unlockHandler:Lcom/vlife/plugin/module/IUnlockHandlerFor3Part;

    .line 155
    :cond_1
    return-void
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 163
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "onKeyDown"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    invoke-interface {v0, p1}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->onKeyDown(Landroid/view/KeyEvent;)V

    .line 167
    :cond_0
    return-void
.end method

.method public setOnTouchEvent(Lcom/vlife/IRegisterOnTouchEvent;)V
    .locals 5
    .param p1, "touchEvent"    # Lcom/vlife/IRegisterOnTouchEvent;

    .prologue
    .line 202
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "setOnTouchEvent"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Lcom/vlife/VlifeLockScreen;->touchEvent:Lcom/vlife/IRegisterOnTouchEvent;

    .line 204
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    const-string v1, "set_ontouch_listener"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vlife/VlifeLockScreen;->onTouchListener:Landroid/view/View$OnTouchListener;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->handleCommonEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void
.end method

.method public setSurfaceViewVisibility(I)V
    .locals 6
    .param p1, "visibility"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "setSurfaceViewVisibility visibility = {}"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    const-string v1, "set_surfaceview_visibility"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->handleCommonEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public setUnlockEvent(Lcom/vlife/IRegisterUnlockEvent;)V
    .locals 2
    .param p1, "unlockEvent"    # Lcom/vlife/IRegisterUnlockEvent;

    .prologue
    .line 197
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "setUnlockEvent"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lcom/vlife/VlifeLockScreen;->unlockEvent:Lcom/vlife/IRegisterUnlockEvent;

    .line 199
    return-void
.end method

.method public setUnlockSoundOn(Z)V
    .locals 2
    .param p1, "isUnlockSoundOn"    # Z

    .prologue
    .line 213
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "setUnlockSoundOn"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 214
    iput-boolean p1, p0, Lcom/vlife/VlifeLockScreen;->isUnlockSoundOn:Z

    .line 215
    return-void
.end method

.method public setUnlockVibrateOn(Z)V
    .locals 2
    .param p1, "isUnlockVibrateOn"    # Z

    .prologue
    .line 223
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "setUnlockVibrateOn"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 224
    iput-boolean p1, p0, Lcom/vlife/VlifeLockScreen;->isUnlockVibrateOn:Z

    .line 225
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 185
    sget-object v0, Lcom/vlife/VlifeLockScreen;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v1, "show"

    invoke-interface {v0, v1}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/vlife/VlifeLockScreen;->lockScreenHandler:Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;

    invoke-interface {v0}, Lcom/vlife/plugin/module/ILockScreenHandlerFor3Part;->onResume()V

    .line 189
    :cond_0
    return-void
.end method
