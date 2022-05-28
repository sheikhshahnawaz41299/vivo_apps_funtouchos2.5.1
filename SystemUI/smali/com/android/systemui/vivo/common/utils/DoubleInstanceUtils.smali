.class public Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;
.super Ljava/lang/Object;
.source "DoubleInstanceUtils.java"


# static fields
.field public static final EXTRA_INIT_INSTANCE:Ljava/lang/String; = "android.intent.extra.init_instance"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areNotificationsEnabledForPackageForDualInstance(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "instanceId"    # I

    .prologue
    const/4 v5, 0x0

    .line 102
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 106
    .local v1, "mNotificationService":Landroid/app/INotificationManager;
    :try_start_0
    const-class v4, Landroid/app/INotificationManager;

    const-string v6, "areNotificationsEnabledForPackageForDualInstance"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 107
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, "result":Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 111
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 110
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v4, v5

    .line 111
    goto :goto_0
.end method

.method public static drawCloneBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 171
    const/4 v1, 0x0

    .line 173
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 174
    const-class v5, Lcom/vivo/content/ImageUtil;

    const-string v6, "getCloneBitmap"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/graphics/drawable/Drawable;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 175
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 176
    invoke-static {p0}, Lcom/vivo/content/ImageUtil;->getInstance(Landroid/content/Context;)Lcom/vivo/content/ImageUtil;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move-object v2, v1

    .line 181
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    .line 178
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    move-object v2, v1

    .line 179
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;I)V
    .locals 7
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "instanceId"    # I

    .prologue
    .line 93
    :try_start_0
    const-class v2, Landroid/app/ActivityManager;

    const-string v3, "forceStopPackage"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 94
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getClonedApplicationIcon(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 253
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 254
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 255
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 258
    :cond_0
    invoke-static {p1, v0}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->drawCloneDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public static getClonedApplicationLabel(Landroid/content/pm/ApplicationInfo;Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 263
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v0, ""

    .line 264
    .local v0, "label":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 265
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v2

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Landroid/content/ISmartShowContext;->markCloneLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    return-object v0
.end method

.method public static getClonedLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Landroid/content/ISmartShowContext;->markCloneLabel(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 165
    .end local p1    # "label":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getPackagePriorityForDualInstance(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "instanceId"    # I

    .prologue
    .line 146
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 150
    .local v1, "mNotificationService":Landroid/app/INotificationManager;
    :try_start_0
    const-class v4, Landroid/app/INotificationManager;

    const-string v5, "getPackagePriorityForDualInstance"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 151
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 152
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 153
    .local v3, "result":Ljava/lang/Object;
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "result":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 155
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getProcessInstanceId(I)I
    .locals 9
    .param p0, "pid"    # I

    .prologue
    .line 66
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 68
    .local v2, "mAm":Landroid/app/IActivityManager;
    :try_start_0
    const-class v4, Landroid/app/IActivityManager;

    const-string v5, "getInstanceId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 69
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 70
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 71
    .local v1, "instanceId":Ljava/lang/Object;
    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "instanceId":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 74
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static getRecentInstanceId(Landroid/app/ActivityManager$RecentTaskInfo;)I
    .locals 5
    .param p0, "recentInfo"    # Landroid/app/ActivityManager$RecentTaskInfo;

    .prologue
    .line 55
    :try_start_0
    const-class v3, Landroid/app/ActivityManager$RecentTaskInfo;

    const-string v4, "instanceId"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 56
    .local v1, "instance":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 58
    .local v2, "result":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 60
    .end local v1    # "instance":Ljava/lang/reflect/Field;
    :goto_0
    return v3

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I
    .locals 6
    .param p0, "statusBarNotification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 44
    :try_start_0
    const-class v3, Landroid/service/notification/StatusBarNotification;

    const-string v4, "getInstanceId"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 46
    .local v2, "result":Ljava/lang/Object;
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 48
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static isCloneEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 186
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/SmartShowContext;->getInstance()Landroid/content/ISmartShowContext;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/ISmartShowContext;->isDualInstanceEnabled(Ljava/lang/String;II)Z

    move-result v0

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public static putDoubleInstanceFlag(Landroid/content/Intent;)V
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 274
    :try_start_0
    const-class v2, Landroid/content/Intent;

    const-string v3, "putSmartShowExtra"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 275
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android.intent.extra.init_instance"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1"

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setNotificationsEnabledForPackageForDualInstance(Landroid/content/Context;Ljava/lang/String;IZI)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z
    .param p4, "instanceId"    # I

    .prologue
    .line 118
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 122
    .local v0, "mNotificationService":Landroid/app/INotificationManager;
    :try_start_0
    const-class v2, Landroid/app/INotificationManager;

    const-string v3, "setNotificationsEnabledForPackageForDualInstance"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 123
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 124
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static setPackagePriorityForDualInstance(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "instanceId"    # I
    .param p4, "priority"    # I

    .prologue
    .line 132
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 136
    .local v0, "mNotificationService":Landroid/app/INotificationManager;
    :try_start_0
    const-class v2, Landroid/app/INotificationManager;

    const-string v3, "setPackagePriorityForDualInstance"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 137
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 138
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v2

    goto :goto_0
.end method
