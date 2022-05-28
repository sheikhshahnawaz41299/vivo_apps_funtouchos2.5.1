.class public Lcom/android/systemui/volume/VolumeUI;
.super Lcom/android/systemui/SystemUI;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;,
        Lcom/android/systemui/volume/VolumeUI$VolumeController;
    }
.end annotation


# static fields
.field private static final ACTION_FONT_SIZE_CHANGED:Ljava/lang/String; = "com.android.settings.font_size_changed"

.field private static final DEFAULT:I = 0x1

.field private static final SETTING:Ljava/lang/String; = "systemui_volume_controller"

.field private static final SETTING_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "VolumeUI"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReciver:Landroid/content/BroadcastReceiver;

.field private mDialogPanel:Lcom/android/systemui/volume/VolumePanel;

.field private mDismissDelay:I

.field private mEnabled:Z

.field private mHallLock:Z

.field private final mHandler:Landroid/os/Handler;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private final mObserver:Landroid/database/ContentObserver;

.field private mPanel:Lcom/android/systemui/volume/VolumePanel;

.field private mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

.field private final mStartZenSettings:Ljava/lang/Runnable;

.field private mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "systemui_volume_controller"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHallLock:Z

    .line 83
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeUI$1;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mBroadcastReciver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$3;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/volume/VolumeUI$3;-><init>(Lcom/android/systemui/volume/VolumeUI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mObserver:Landroid/database/ContentObserver;

    .line 188
    new-instance v0, Lcom/android/systemui/volume/VolumeUI$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeUI$4;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mStartZenSettings:Ljava/lang/Runnable;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->initPanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/VolumeUI;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHallLock:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/volume/VolumeUI;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/volume/VolumeUI;->mDismissDelay:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/volume/VolumeUI;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeUI;->mHallLock:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumePanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/volume/VolumeUI;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mStartZenSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/volume/VolumeUI;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/volume/VolumeUI;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/volume/VolumeUI$VolumeController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/VolumeUI;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->updateController()V

    return-void
.end method

.method private initPanel()V
    .locals 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeUI;->mDismissDelay:I

    .line 155
    new-instance v0, Lcom/android/systemui/volume/VolumePanel;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/volume/VolumePanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ZenModeController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    new-instance v1, Lcom/android/systemui/volume/VolumeUI$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/VolumeUI$2;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumePanel;->setCallback(Lcom/android/systemui/volume/VolumePanel$Callback;)V

    .line 178
    return-void
.end method

.method private updateController()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "systemui_volume_controller"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "VolumeUI"

    const-string v1, "Registering volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v0, "VolumeUI"

    const-string v1, "Unregistering volume controller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, v3}, Landroid/media/session/MediaSessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "mEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mPanel:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 131
    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 105
    iget-boolean v1, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    if-nez v1, :cond_0

    .line 123
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mAudioManager:Landroid/media/AudioManager;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    const-string v2, "media_session"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->initPanel()V

    .line 110
    new-instance v1, Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/volume/VolumeUI$VolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    .line 111
    new-instance v1, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;-><init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$1;)V

    iput-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mRemoteVolumeController:Lcom/android/systemui/volume/VolumeUI$RemoteVolumeController;

    .line 112
    const-class v1, Lcom/android/systemui/volume/VolumeComponent;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeController:Lcom/android/systemui/volume/VolumeUI$VolumeController;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/volume/VolumeUI;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeUI;->updateController()V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/VolumeUI;->SETTING_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/volume/VolumeUI;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.android.settings.font_size_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    const-string v1, "com.android.service.hallobserver.lock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const-string v1, "com.android.service.hallobserver.unlock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI;->mBroadcastReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
