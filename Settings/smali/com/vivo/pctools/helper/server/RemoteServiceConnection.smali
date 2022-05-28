.class public Lcom/vivo/pctools/helper/server/RemoteServiceConnection;
.super Ljava/lang/Object;
.source "RemoteServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;
    }
.end annotation


# static fields
.field private static final AIDL_MESSAGE_SERVICE_CLASS:Ljava/lang/String; = ".RemoteHelperService"

.field private static final AIDL_MESSAGE_SERVICE_PACKAGE:Ljava/lang/String; = "com.vivo.pctools.helper"

.field private static final APPSOLUT_INTENT_ACTION_BIND_MESSAGE_SERVICE:Ljava/lang/String; = "appsolut.intent.action.bindMessageService"

.field public static final INSTALL_ALREADY_EXIST:I = 0x3

.field public static final INSTALL_FAILED_ALREADY_EXISTS:I = -0x1

.field public static final INSTALL_FAILED_DUPLICATE_PACKAGE:I = -0x5

.field public static final INSTALL_FAILED_INSUFFICIENT_STORAGE:I = -0x4

.field public static final INSTALL_FAILED_INVALID_APK:I = -0x2

.field public static final INSTALL_FAILED_INVALID_URI:I = -0x3

.field public static final INSTALL_FAILED_NO_SHARED_USER:I = -0x6

.field public static final INSTALL_FAILED_UNKNOW:I = 0x2

.field public static final INSTALL_SUCCEEDED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final VIVO_INTENT_ACTION_BIND_MESSAGE_SERVICE:Ljava/lang/String; = "vivo.intent.action.bindRemoteService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mOnServiceConnectedListener:Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;

.field private mcontext:Landroid/content/Context;

.field private service:Lcom/vivo/pctools/helper/server/IRemoteHelperService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->mcontext:Landroid/content/Context;

    .line 49
    iput-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->mOnServiceConnectedListener:Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->mHandler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->mcontext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public installApp(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installFlag"    # I

    .prologue
    .line 120
    const/4 v1, -0x1

    .line 121
    .local v1, "retvalue":I
    iget-object v2, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->service:Lcom/vivo/pctools/helper/server/IRemoteHelperService;

    if-eqz v2, :cond_0

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->service:Lcom/vivo/pctools/helper/server/IRemoteHelperService;

    const-string v3, "PCTools"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/vivo/pctools/helper/server/IRemoteHelperService;->InstallApp(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 128
    :cond_0
    :goto_0
    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->service:Lcom/vivo/pctools/helper/server/IRemoteHelperService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 63
    sget-object v0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The service is now connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p2}, Lcom/vivo/pctools/helper/server/IRemoteHelperService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/pctools/helper/server/IRemoteHelperService;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->service:Lcom/vivo/pctools/helper/server/IRemoteHelperService;

    .line 65
    sget-object v0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Querying the message..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->mOnServiceConnectedListener:Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->mOnServiceConnectedListener:Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;

    invoke-interface {v0}, Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;->onServiceConnected()V

    .line 69
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 83
    sget-object v0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The connection to the service got disconnected unexpectedly!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->service:Lcom/vivo/pctools/helper/server/IRemoteHelperService;

    .line 86
    return-void
.end method

.method public safelyConnectTheService()V
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->service:Lcom/vivo/pctools/helper/server/IRemoteHelperService;

    if-nez v1, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "vivo.intent.action.bindRemoteService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "bindIntent":Landroid/content/Intent;
    const-string v1, "com.vivo.pctools.helper"

    const-string v2, "com.vivo.pctools.helper.server.RemoteHelperService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->mcontext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 100
    sget-object v1, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->LOG_TAG:Ljava/lang/String;

    const-string v2, "The Service will be connected soon (asynchronus call)!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v0    # "bindIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public safelyDisconnectTheService()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->service:Lcom/vivo/pctools/helper/server/IRemoteHelperService;

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->service:Lcom/vivo/pctools/helper/server/IRemoteHelperService;

    .line 114
    iget-object v0, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 115
    sget-object v0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The connection to the service was closed.!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    return-void
.end method

.method public setOnServiceConnectedListener(Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->mOnServiceConnectedListener:Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;

    .line 77
    return-void
.end method
