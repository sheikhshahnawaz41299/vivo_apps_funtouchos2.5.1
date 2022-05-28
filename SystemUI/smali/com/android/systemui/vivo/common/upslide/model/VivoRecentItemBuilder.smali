.class public Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItemBuilder;
.super Ljava/lang/Object;
.source "VivoRecentItemBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoRecentItemBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;II)Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "taskId"    # I
    .param p2, "persistentTaskId"    # I
    .param p3, "baseIntent"    # Landroid/content/Intent;
    .param p4, "origActivity"    # Landroid/content/ComponentName;
    .param p5, "description"    # Ljava/lang/CharSequence;
    .param p6, "instanceId"    # I
    .param p7, "uid"    # I

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 38
    .local v14, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 40
    .local v12, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 45
    :goto_0
    if-nez v12, :cond_0

    .line 46
    const/4 v2, 0x0

    .line 69
    :goto_1
    return-object v2

    .line 41
    :catch_0
    move-exception v13

    .line 42
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v13}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v14, v0, v1}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItemBuilder;->getResolvInfo(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 49
    .local v8, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v8, :cond_1

    .line 50
    const-string v2, "VivoRecentItemBuilder"

    const-string v3, "Build VivoRecentItem, resolveInfo is null, return!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v2, 0x0

    goto :goto_1

    .line 53
    :cond_1
    invoke-static {v14, v12, v8}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItemBuilder;->getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v7

    .line 55
    .local v7, "title":Ljava/lang/String;
    invoke-static {p0, v12, v14, v8}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItemBuilder;->getFullResIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 57
    .local v10, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-lez p6, :cond_2

    .line 58
    invoke-virtual {v14, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 59
    invoke-static {p0, v10}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->drawCloneDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 60
    invoke-static {p0, v7}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getClonedLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 64
    new-instance v2, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget-object v5, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v6, p6

    move-object/from16 v9, p3

    move/from16 v11, p7

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;-><init>(IILjava/lang/String;ILjava/lang/CharSequence;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 67
    :cond_3
    const-string v2, "VivoRecentItemBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    .local v0, "resources":Landroid/content/res/Resources;
    const/high16 v1, 0x10d0000

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getFullResIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 97
    const/4 v5, 0x0

    .line 99
    .local v5, "resources":Landroid/content/res/Resources;
    :try_start_0
    iget-object v7, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 103
    :goto_0
    iget-object v7, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v4

    .line 104
    .local v4, "iconId":I
    const/4 v0, 0x0

    .line 105
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 107
    .local v3, "iconBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    .line 108
    :try_start_1
    invoke-static {v5, v4}, Lcom/android/systemui/vivo/compatible/proxy/VivoThemeProxy;->isSystemIcon(Landroid/content/res/Resources;I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 109
    const/4 v6, 0x0

    .line 110
    .local v6, "src":Landroid/graphics/drawable/Drawable;
    sget-object v7, Lcom/android/systemui/vivo/common/utils/VivoWhiteList;->USE_MAIN_ACTIVTY_ICON_APP_LIST:Ljava/util/ArrayList;

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 115
    :goto_1
    if-eqz v6, :cond_0

    .line 116
    const-string v7, "com.bbk.calendar"

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 117
    invoke-static {p0, v6, v5, v4}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxy;->createIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 121
    :goto_2
    if-eqz v3, :cond_0

    .line 122
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v1, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .line 129
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v6    # "src":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_3
    if-eqz v0, :cond_4

    move-object v7, v0

    .line 135
    :goto_4
    return-object v7

    .line 100
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "iconId":I
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "iconId":I
    .restart local v6    # "src":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-static {p2, p1, v5}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getSuitableAppDrawable(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    .line 119
    :cond_2
    invoke-static {p0, v6}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxy;->createRedrawIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .line 126
    .end local v6    # "src":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_3

    .line 132
    :catch_1
    move-exception v2

    .line 133
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "VivoRecentItemBuilder"

    const-string v8, "getFullResIcon >> Failed to fetch the app\'s icon!"

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItemBuilder;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    goto :goto_4
.end method

.method private static getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 86
    const-string v2, "com.google.android.googlequicksearchbox"

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v1, "Google"

    .line 93
    .local v1, "title":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 90
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 91
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "title":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getResolvInfo(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "origActivity"    # Landroid/content/ComponentName;
    .param p2, "baseIntent"    # Landroid/content/Intent;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 77
    :cond_0
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method
