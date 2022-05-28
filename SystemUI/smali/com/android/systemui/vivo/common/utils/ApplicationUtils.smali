.class public Lcom/android/systemui/vivo/common/utils/ApplicationUtils;
.super Ljava/lang/Object;
.source "ApplicationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationUtils"

.field private static sInstance:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->sInstance:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    return-object v0
.end method

.method public static getSuitableAppDrawable(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 142
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v5, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    .line 144
    :cond_1
    const/4 v0, 0x0

    .line 145
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 146
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 148
    .local v1, "bmp":Landroid/graphics/Bitmap;
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 149
    .local v4, "width":I
    iget v2, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 150
    .local v2, "height":I
    const/16 v5, 0x1f4

    if-lt v4, v5, :cond_2

    mul-int v5, v4, v2

    const v6, 0x3d090

    if-le v5, v6, :cond_2

    .line 151
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    div-int/lit16 v5, v4, 0xc8

    iput v5, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 153
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 76
    const-string v4, "com.mediatek.mtklogger"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v3

    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 81
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x2200

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 84
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    const-string v4, "com.vivo.PCTools"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.bbk.PCTools"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ApplicationUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "found pkg_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v4, p0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-object v3

    .line 57
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 58
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 60
    const/16 v4, 0x2200

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 63
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 70
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 71
    goto :goto_0

    .line 66
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 70
    const/4 v2, 0x0

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v3

    const/4 v2, 0x0

    throw v3
.end method

.method public getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    const/4 p1, 0x0

    .line 52
    .end local p1    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 42
    .restart local p1    # "pkg":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 43
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 45
    const/16 v3, 0x2200

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 48
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 49
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ApplicationUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get label of pkg_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentActivity()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-object v4, p0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 98
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "forGroundActivity":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v3

    .line 100
    :cond_1
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 101
    .local v1, "currentActivity":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 104
    iget-object v3, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getCurrentPkgName()Ljava/lang/String;
    .locals 13

    .prologue
    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, "currentInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v6, 0x0

    .line 110
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x2

    .line 111
    .local v0, "START_TASK_TO_FRONT":I
    const/4 v8, 0x0

    .line 113
    .local v8, "pkgName":Ljava/lang/String;
    :try_start_0
    const-class v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v11, "processState"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 117
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 118
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 119
    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 120
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 121
    .local v2, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v11, 0x64

    if-ne v10, v11, :cond_0

    .line 122
    const/4 v9, 0x0

    .line 124
    .local v9, "state":Ljava/lang/Integer;
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 128
    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v0, :cond_0

    .line 129
    move-object v4, v2

    .line 135
    .end local v2    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "state":Ljava/lang/Integer;
    :cond_1
    if-eqz v4, :cond_2

    .line 136
    iget-object v8, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 138
    :cond_2
    return-object v8

    .line 114
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v5

    .line 115
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "ApplicationUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get field error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "am":Landroid/app/ActivityManager;
    .restart local v2    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "state":Ljava/lang/Integer;
    :catch_1
    move-exception v5

    .line 126
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v10, "ApplicationUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "field getInt error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
