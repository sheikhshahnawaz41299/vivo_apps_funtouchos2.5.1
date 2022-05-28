.class public final Lcom/squareup/leakcanary/internal/LeakCanaryInternals;
.super Ljava/lang/Object;
.source "LeakCanaryInternals.java"


# static fields
.field public static final LG:Ljava/lang/String; = "LGE"

.field public static final LOLLIPOP_MR1:I = 0x16

.field public static final MOTOROLA:Ljava/lang/String; = "motorola"

.field public static final M_MR1:I = 0x17

.field public static final NVIDIA:Ljava/lang/String; = "NVIDIA"

.field public static final SAMSUNG:Ljava/lang/String; = "samsung"

.field private static final fileIoExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "File-IO"

    invoke-static {v0}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->fileIoExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static classSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 60
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 61
    .local v0, "separator":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 64
    .end local p0    # "className":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "className":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static executeOnFileIoThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    sget-object v0, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->fileIoExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public static isInServiceProcess(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 91
    .local v10, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 96
    .local v9, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v13, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 98
    .local v6, "mainProcess":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v3, "component":Landroid/content/ComponentName;
    const/4 v13, 0x0

    :try_start_1
    invoke-virtual {v10, v3, v13}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v12

    .line 107
    .local v12, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 108
    const-string v13, "Did not expect service %s to run in main process %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    const/4 v15, 0x1

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const/4 v13, 0x0

    .line 128
    .end local v3    # "component":Landroid/content/ComponentName;
    .end local v6    # "mainProcess":Ljava/lang/String;
    .end local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_0
    return v13

    .line 92
    :catch_0
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "Could not get package info for %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v4, v13, v14}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    const/4 v13, 0x0

    goto :goto_0

    .line 102
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "component":Landroid/content/ComponentName;
    .restart local v6    # "mainProcess":Ljava/lang/String;
    .restart local v9    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v5

    .line 104
    .local v5, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v13, 0x0

    goto :goto_0

    .line 113
    .end local v5    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 115
    .local v7, "myPid":I
    const-string v13, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 116
    .local v2, "activityManager":Landroid/app/ActivityManager;
    const/4 v8, 0x0

    .line 117
    .local v8, "myProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 123
    :goto_1
    if-nez v8, :cond_3

    .line 124
    const-string v13, "Could not find running process for %d"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    const/4 v13, 0x0

    goto :goto_0

    .line 117
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 118
    .local v11, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v14, v11, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v14, v7, :cond_1

    .line 119
    move-object v8, v11

    .line 120
    goto :goto_1

    .line 128
    .end local v11    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3
    iget-object v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v14, v12, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    goto :goto_0
.end method

.method public static newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "threadName"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Lcom/squareup/leakcanary/internal/LeakCanarySingleThreadFactory;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/LeakCanarySingleThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static setEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals$1;-><init>(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {v1}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->executeOnFileIoThread(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public static setEnabledBlocking(Landroid/content/Context;Ljava/lang/Class;Z)V
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, "componentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    .line 80
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 82
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz p2, :cond_0

    move v1, v3

    .line 84
    .local v1, "newState":I
    :goto_0
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 85
    return-void

    .line 82
    .end local v1    # "newState":I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentTitle"    # Ljava/lang/CharSequence;
    .param p2, "contentText"    # Ljava/lang/CharSequence;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 135
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 138
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 139
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 140
    .local v3, "notification":Landroid/app/Notification;
    const v5, 0x108008a

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v3, Landroid/app/Notification;->when:J

    .line 142
    iget v5, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 145
    :try_start_0
    const-class v5, Landroid/app/Notification;

    const-string v6, "setLatestEventInfo"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 146
    const-class v9, Ljava/lang/CharSequence;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Landroid/app/PendingIntent;

    aput-object v9, v7, v8

    .line 145
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 147
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object p3, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    const v5, -0x21504111

    invoke-virtual {v4, v5, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 166
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_0
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 153
    const v6, 0x108008a

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 155
    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 156
    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 157
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 158
    invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 159
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_1

    .line 160
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 161
    .restart local v3    # "notification":Landroid/app/Notification;
    goto :goto_0

    .line 162
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .restart local v3    # "notification":Landroid/app/Notification;
    goto :goto_0
.end method
