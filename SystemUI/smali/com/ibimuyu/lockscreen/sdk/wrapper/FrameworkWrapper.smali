.class public Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;
.super Ljava/lang/Object;
.source "FrameworkWrapper.java"


# static fields
.field public static final ERROR_ID_NOERROR:I = 0x0

.field private static final FRAMEWORK_CLASS_NAME:Ljava/lang/String; = "com.zookingsoft.framework.lockscreen.load.LockscreenService"

.field public static final MSG_F2W_ENGINE_ERROR:I = 0x2

.field public static final MSG_F2W_START_ACTIVITY:I = 0x3

.field public static final MSG_F2W_UNLOCK:I = 0x1

.field protected static final MSG_W2F_CHECK_BACKGROUND:I = 0xa

.field protected static final MSG_W2F_CREATE:I = 0x1

.field protected static final MSG_W2F_DESTROY:I = 0x2

.field protected static final MSG_W2F_DISPATCH_KEY_EVENT:I = 0x7

.field protected static final MSG_W2F_GET_BACKGROUND:I = 0x9

.field protected static final MSG_W2F_HAVE_LOCKSOUND:I = 0x65

.field protected static final MSG_W2F_HIDE:I = 0xf

.field protected static final MSG_W2F_LOAD_BY_STREAM:I = 0x5

.field public static final MSG_W2F_MULTI_ADD_SHOW_THEMES:I = 0x15

.field public static final MSG_W2F_MULTI_DEL_SHOW_THEMES:I = 0x16

.field protected static final MSG_W2F_MULTI_GET_CURRENT_THEME_ID:I = 0x1b

.field public static final MSG_W2F_MULTI_GET_SHOW_THEMES:I = 0x1a

.field protected static final MSG_W2F_MULTI_GET_THEME_BY_ID:I = 0x1c

.field public static final MSG_W2F_MULTI_GET_VIEW:I = 0x17

.field public static final MSG_W2F_MULTI_HIDE:I = 0x18

.field protected static final MSG_W2F_MULTI_PAUSE_BY_ID:I = 0x20

.field protected static final MSG_W2F_MULTI_RELEASE_THEME_BY_ID:I = 0x1d

.field protected static final MSG_W2F_MULTI_RESUME_BY_ID:I = 0x1f

.field public static final MSG_W2F_MULTI_SET_SHOW_THEMES:I = 0x14

.field public static final MSG_W2F_MULTI_SHOW_NEXT:I = 0x19

.field protected static final MSG_W2F_MULTI_VIEW_LOAD:I = 0x22

.field protected static final MSG_W2F_MULTI_VIEW_NEW:I = 0x21

.field protected static final MSG_W2F_MULTI_VIEW_PAUSE:I = 0x25

.field protected static final MSG_W2F_MULTI_VIEW_RELEASE:I = 0x23

.field protected static final MSG_W2F_MULTI_VIEW_RESUME:I = 0x24

.field protected static final MSG_W2F_PHONE_INFO_CHANGGE:I = 0xc

.field protected static final MSG_W2F_PLAY:I = 0x4

.field protected static final MSG_W2F_REGIST_UNLOCKER_LISTENER:I = 0x10

.field protected static final MSG_W2F_RELOAD:I = 0x6

.field protected static final MSG_W2F_SET_CALL_AND_SMS_NUMBER:I = 0x12

.field protected static final MSG_W2F_SET_DEVICE_INFO:I = 0x13

.field protected static final MSG_W2F_SET_THEMEID:I = 0xd

.field protected static final MSG_W2F_SHOW:I = 0xe

.field protected static final MSG_W2F_STOP:I = 0x3

.field protected static final MSG_W2F_UNLOAD:I = 0xb

.field protected static final MSG_W2F_UNREGIST_UNLOCKER_LISTENER:I = 0x11

.field protected static final MSG_W2F_UPDATE_WALLPAPER:I = 0x8

.field private static final TAG:Ljava/lang/String; = "zooking.FrameworkWrapper"

.field private static final WRAPPER_VERSION:I = 0x2

.field private static mPkgClassloader:Ljava/lang/ClassLoader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInterface:Ljava/lang/Object;

.field private mPakcageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkVersion()Z
    .locals 8

    .prologue
    .line 157
    const/4 v2, 0x0

    .line 159
    .local v2, "ok":Z
    :try_start_0
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "checkVersion"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 160
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 164
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "com.zookingsoft.framework.lockscreen.load.LockscreenService"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 141
    :goto_0
    if-nez v0, :cond_1

    .line 143
    :try_start_1
    sget-object v3, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    if-nez v3, :cond_0

    .line 144
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 145
    .local v2, "packageContext":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    sput-object v3, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    .line 148
    .end local v2    # "packageContext":Landroid/content/Context;
    :cond_0
    sget-object v3, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mPkgClassloader:Ljava/lang/ClassLoader;

    const-string v4, "com.zookingsoft.framework.lockscreen.load.LockscreenService"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 153
    :cond_1
    :goto_1
    return-object v0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public callFWMethod(Landroid/os/Message;)Ljava/lang/Object;
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 170
    .local v2, "result":Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onWrapperCall"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/Message;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 171
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 175
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "result":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 176
    return-object v2

    .line 172
    .restart local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 73
    iput-object p1, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0, p2}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 77
    .local v1, "obj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-direct {p0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->checkVersion()Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->destory()V

    .line 89
    :goto_0
    return v2

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->destory()V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iput-object p2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mPakcageName:Ljava/lang/String;

    .line 89
    const/4 v2, 0x1

    goto :goto_0
.end method

.method destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mContext:Landroid/content/Context;

    .line 131
    iput-object v0, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public init(Landroid/os/Handler;I)Z
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "flag"    # I

    .prologue
    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, "ok":Z
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_0

    .line 98
    :try_start_0
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onInit"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 99
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mPakcageName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 106
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 108
    :try_start_1
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onInit"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 109
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 116
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 118
    :try_start_2
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onInit"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Handler;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 119
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mContext:Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 126
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    :goto_2
    return v2

    .line 100
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "zooking.FrameworkWrapper"

    const-string v4, "no onInit context handler int String"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v2, 0x0

    goto :goto_0

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "zooking.FrameworkWrapper"

    const-string v4, "no onInit context handler int"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v2, 0x0

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 121
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "zooking.FrameworkWrapper"

    const-string v4, "no onInit context handler"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public sendMsgToFW(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 181
    .local v2, "ok":Z
    :try_start_0
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "onWrapperMsg"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/Message;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 182
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 186
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 187
    return v2

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppTag(Ljava/lang/String;)V
    .locals 7
    .param p1, "appTag"    # Ljava/lang/String;

    .prologue
    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setAppTag"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 197
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/ibimuyu/lockscreen/sdk/wrapper/FrameworkWrapper;->mInterface:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
