.class public Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
.super Ljava/lang/Object;
.source "NotificationOpsContentInfo.java"


# static fields
.field private static final ICON_SIZE_LIMIT:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "NotificationOpsContentInfo"


# instance fields
.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mAppLabel:Ljava/lang/String;

.field private mAppPkg:Ljava/lang/String;

.field private mInstanceId:I

.field private mIsNotificationEnabled:Z

.field private mIsOfficialShow:Z

.field private mNotificationShowState:Z

.field private mNotificationShownType:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsNotificationEnabled:Z

    .line 43
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShowState:Z

    .line 44
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsOfficialShow:Z

    .line 45
    iput v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mInstanceId:I

    .line 46
    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppIcon:Landroid/graphics/Bitmap;

    .line 47
    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppLabel:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShownType:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/util/HashSet;Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationOpsManager"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .param p4, "contentInfo"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p3, "haveNotificationPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iget-boolean v0, p4, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsNotificationEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsNotificationEnabled:Z

    .line 56
    iget-boolean v0, p4, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShowState:Z

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShowState:Z

    .line 57
    iget v0, p4, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mUid:I

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mUid:I

    .line 58
    iget-boolean v0, p4, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsOfficialShow:Z

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsOfficialShow:Z

    .line 59
    iget-object v0, p4, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppIcon:Landroid/graphics/Bitmap;

    .line 60
    iget-object v0, p4, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppLabel:Ljava/lang/String;

    .line 61
    iget-object v0, p4, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    .line 62
    iget-object v0, p4, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShownType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShownType:Ljava/lang/String;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mInstanceId:I

    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppLabel:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getClonedLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppLabel:Ljava/lang/String;

    .line 66
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->notificationEnabledForPkg(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsNotificationEnabled:Z

    .line 67
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShowState:Z

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->notificationShownType(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShownType:Ljava/lang/String;

    .line 70
    return-void
.end method

.method private getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 195
    const/4 v2, 0x0

    .line 196
    .local v2, "resources":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 198
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 202
    :goto_0
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 203
    invoke-static {p1, p2, v2}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getSuitableAppDrawable(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 205
    :cond_0
    return-object v0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getShowingLabel(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "label":Ljava/lang/String;
    const-string v1, "com.android.phone"

    iget-object v2, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v1

    const-string v2, "com.android.dialer"

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "com.android.dialer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    :cond_1
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_2
    return-object v0
.end method

.method private loadImageFromAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p3, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v0, 0x0

    .line 170
    if-nez p3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    const/4 v2, 0x0

    .line 175
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v3, p3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    .line 176
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getAppIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 187
    :goto_1
    if-eqz v2, :cond_0

    .line 188
    invoke-static {p1, v2}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxy;->createRedrawIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 178
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    const-string v3, "com.android.phone"

    iget-object v4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v3

    const-string v4, "com.android.dialer"

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1

    .line 181
    :cond_3
    invoke-virtual {p3, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_1

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "NotificationOpsContentInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadImageFromAppInfo Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private notificationEnabledForPkg(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Z
    .locals 4
    .param p1, "notificationOpsManager"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .prologue
    .line 227
    const/4 v0, 0x1

    .line 228
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mUid:I

    iget v3, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mInstanceId:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->areNotificationsEnabledForPackage(Ljava/lang/String;II)Z

    move-result v0

    .line 229
    return v0
.end method

.method private notificationShownType(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationOpsManager"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .prologue
    const v4, 0x7f0e01cb

    const v3, 0x7f0e01c9

    .line 235
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsNotificationEnabled:Z

    if-nez v1, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 259
    :goto_0
    return-object v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    .line 240
    .local v0, "shownType":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mInstanceId:I

    invoke-virtual {p2, v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isKeyguardNotificationEnabled(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mInstanceId:I

    invoke-virtual {p2, v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeEnable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    if-eqz v0, :cond_3

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 256
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showOfficalIcon(Landroid/content/pm/ApplicationInfo;)Z
    .locals 4
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 211
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->is3partAppAsSystem(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 215
    :cond_1
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.vivo.easyshare"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 216
    goto :goto_0

    .line 218
    :cond_2
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    move v0, v1

    .line 219
    goto :goto_0
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAppLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mInstanceId:I

    return v0
.end method

.method public getNotificationShowState()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShowState:Z

    return v0
.end method

.method public getNotificationShownType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShownType:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mUid:I

    return v0
.end method

.method public isNotificationEnabled()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsNotificationEnabled:Z

    return v0
.end method

.method public isOfficialShow()Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsOfficialShow:Z

    return v0
.end method

.method public refreshNotificationShownType(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationOpsManager"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->notificationShownType(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->setNotificationShownType(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public refreshNotificationState(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V
    .locals 3
    .param p1, "notificationOpsManager"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mUid:I

    iget v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mInstanceId:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->areNotificationsEnabledForPackage(Ljava/lang/String;II)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->setNotificationOn(Z)V

    .line 264
    return-void
.end method

.method public releaseResouce(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppIcon:Landroid/graphics/Bitmap;

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;I)V

    .line 272
    return-void
.end method

.method public setAppIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppIcon:Landroid/graphics/Bitmap;

    .line 138
    return-void
.end method

.method public setAppInfo(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Landroid/content/pm/PackageManager;Ljava/util/HashSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "notificationOpsManager"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
    .param p4, "packageManager"    # Landroid/content/pm/PackageManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/ApplicationInfo;",
            "Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p5, "haveNotificationPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget v0, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mUid:I

    .line 75
    invoke-direct {p0, p1, p4, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->loadImageFromAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppIcon:Landroid/graphics/Bitmap;

    .line 76
    invoke-direct {p0, p1, p4, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->getShowingLabel(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppLabel:Ljava/lang/String;

    .line 77
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    .line 78
    invoke-direct {p0, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->notificationEnabledForPkg(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsNotificationEnabled:Z

    .line 79
    iget-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShowState:Z

    .line 80
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->showOfficalIcon(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsOfficialShow:Z

    .line 81
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->notificationShownType(Landroid/content/Context;Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShownType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setAppLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "appLabel"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppLabel:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setAppPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "appPkg"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mAppPkg:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setInstanceId(I)V
    .locals 0
    .param p1, "instanceId"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mInstanceId:I

    .line 126
    return-void
.end method

.method public setNotificationOn(Z)V
    .locals 0
    .param p1, "isNotificationEnabled"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsNotificationEnabled:Z

    .line 166
    return-void
.end method

.method public setNotificationShowState(Z)V
    .locals 0
    .param p1, "notificationShowState"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShowState:Z

    .line 106
    return-void
.end method

.method public setNotificationShownType(Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationShownType"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mNotificationShownType:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setOfficialShow(Z)V
    .locals 0
    .param p1, "isOfficialShow"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mIsOfficialShow:Z

    .line 122
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsContentInfo;->mUid:I

    .line 114
    return-void
.end method
