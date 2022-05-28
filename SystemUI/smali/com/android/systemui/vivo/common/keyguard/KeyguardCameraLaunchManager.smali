.class public Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;
.super Ljava/lang/Object;
.source "KeyguardCameraLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_AVAILABILITY_TIMEOUT_MS:I = 0x3e8

.field private static final CLOSE_CAMERA_ACTION_NAME:Ljava/lang/String; = "com.android.systemui.statusbar.phone.CLOSE_CAMERA"

.field private static final DEBUG:Z = true

.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final META_DATA_WILL_WAIT_FOR_CAMERA_AVAILABLE:Ljava/lang/String; = "com.android.systemui.statusbar.phone.will_wait_for_camera_available"

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "KeyguardCameraLaunchManager"


# instance fields
.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mCameraAvailabilityCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;

.field private mCameraAvailabilityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraPreview:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLaunchCameraRunnable:Ljava/lang/Runnable;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

.field private mWaitingToLaunchSecureCamera:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "starter"    # Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mContext:Landroid/content/Context;

    .line 137
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 139
    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    .line 142
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mCameraAvailabilityCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    .line 153
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v0, Lcom/android/systemui/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mPreviewInflater:Lcom/android/systemui/statusbar/policy/PreviewInflater;

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mCameraPreview:Landroid/view/View;

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->areAllCamerasAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private areAllCamerasAvailable()Z
    .locals 3

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 223
    .local v0, "cameraAvailable":Z
    if-nez v0, :cond_0

    .line 224
    const/4 v2, 0x0

    .line 227
    .end local v0    # "cameraAvailable":Z
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 327
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    .line 328
    .local v2, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 330
    .local v0, "currentUserHasTrust":Z
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, "insecureCameraIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v3, "com.android.camera"

    const-string v4, "com.android.camera.CameraActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .end local v1    # "insecureCameraIntent":Landroid/content/Intent;
    :cond_0
    return-object v1
.end method

.method private targetWillWaitForCameraAvailable()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 243
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x800000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 245
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 248
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v5, 0x10000

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 250
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 251
    const-string v5, "KeyguardCameraLaunchManager"

    const-string v6, "No targets found for secure camera intent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    :goto_0
    return v4

    .line 256
    :cond_1
    const v5, 0x10080

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 260
    .local v3, "resolved":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    .line 266
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    const-string v5, "KeyguardCameraLaunchManager"

    const-string v6, "Secure camera intent would launch resolver"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_2
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 273
    :cond_3
    const-string v5, "KeyguardCameraLaunchManager"

    const-string v6, "No meta-data found for secure camera application"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    :cond_4
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "com.android.systemui.statusbar.phone.will_wait_for_camera_available"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 282
    .local v4, "willWaitForCameraAvailability":Z
    const-string v5, "KeyguardCameraLaunchManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Target will wait for camera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private wouldLaunchResolverActivity(Landroid/content/pm/ResolveInfo;Ljava/util/List;)Z
    .locals 4
    .param p1, "resolved"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 292
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 293
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 294
    .local v1, "tmp":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v2, 0x0

    .line 299
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :goto_1
    return v2

    .line 292
    .restart local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "tmp":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public create()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public getCameraPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mCameraPreview:Landroid/view/View;

    return-object v0
.end method

.method public launchCamera()V
    .locals 4

    .prologue
    .line 303
    const-string v2, "KeyguardCameraLaunchManager"

    const-string v3, "launchCamera() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object v0

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    .line 308
    .local v1, "wouldLaunchResolverActivity":Z
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v0, v2, :cond_0

    if-nez v1, :cond_0

    .line 309
    const-string v2, "KeyguardCameraLaunchManager"

    const-string v3, "launchCamera() - launch SECURE_CAMERA_INTENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 324
    :goto_1
    return-void

    .line 319
    :cond_0
    const-string v2, "KeyguardCameraLaunchManager"

    const-string v3, "launchCamera() - launch INSECURE_CAMERA_INTENT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_1

    .line 315
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onSwipingStarted()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "KeyguardCameraLaunchManager"

    const-string v1, "onSwipingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public startSecureCameraLaunch()V
    .locals 4

    .prologue
    .line 209
    const-string v0, "KeyguardCameraLaunchManager"

    const-string v1, "startSecureCameraLunch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->areAllCamerasAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->targetWillWaitForCameraAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->launchCamera()V

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z

    .line 214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
