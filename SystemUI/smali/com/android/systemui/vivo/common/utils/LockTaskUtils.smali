.class public Lcom/android/systemui/vivo/common/utils/LockTaskUtils;
.super Ljava/lang/Object;
.source "LockTaskUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockTaskUtils"

.field private static mLockTaskMode:Z

.field private static mPendingLock:Z

.field private static mPendingUnLock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mLockTaskMode:Z

    .line 15
    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mPendingLock:Z

    .line 16
    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mPendingUnLock:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInLockTaskMode()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mLockTaskMode:Z

    return v0
.end method

.method public static isLockTaskPending()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mPendingLock:Z

    return v0
.end method

.method public static isUnLockPending()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mPendingUnLock:Z

    return v0
.end method

.method public static setLockTaskMode(Z)V
    .locals 0
    .param p0, "lock"    # Z

    .prologue
    .line 47
    sput-boolean p0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mLockTaskMode:Z

    .line 48
    return-void
.end method

.method public static setLockTaskPending(Z)V
    .locals 1
    .param p0, "locking"    # Z

    .prologue
    .line 23
    sput-boolean p0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mPendingLock:Z

    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mPendingUnLock:Z

    .line 25
    return-void
.end method

.method public static setUnLockTaskPending(Z)V
    .locals 0
    .param p0, "unLocking"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mPendingUnLock:Z

    .line 33
    return-void
.end method

.method public static showScreenPinToast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-boolean v0, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mLockTaskMode:Z

    if-eqz v0, :cond_0

    .line 56
    const v0, 0x10406a1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    :cond_0
    return-void
.end method

.method public static updateLockTaskStatus()V
    .locals 5

    .prologue
    .line 36
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mLockTaskMode:Z

    .line 38
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 39
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    sput-boolean v2, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mLockTaskMode:Z

    .line 40
    const-string v2, "LockTaskUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLockTaskMode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->mLockTaskMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "LockTaskUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to reach activity manager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
