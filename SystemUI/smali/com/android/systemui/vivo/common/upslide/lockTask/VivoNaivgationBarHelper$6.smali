.class Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$6;
.super Ljava/lang/Object;
.source "VivoNaivgationBarHelper.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFunctionConfigChange()V
    .locals 5

    .prologue
    .line 243
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$600(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$502(Z)Z

    .line 244
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->refreshTaskLockVisibility()V

    .line 245
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$500()Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 248
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->setLockTaskMode(Z)V

    .line 250
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper$6;->this$0:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->access$200(Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->hideLockTaskToast()V

    .line 251
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "VivoNaivgationBarHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to reach activity manager"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
