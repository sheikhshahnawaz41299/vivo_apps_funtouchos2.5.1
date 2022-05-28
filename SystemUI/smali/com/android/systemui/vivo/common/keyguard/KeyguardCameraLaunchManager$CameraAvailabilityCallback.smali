.class Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "KeyguardCameraLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraAvailabilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;
    .param p2, "x1"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 118
    const-string v0, "KeyguardCameraLaunchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraAvailable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$100(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$200(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->launchCamera()V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$102(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;Z)Z

    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$400(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$300(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string v0, "KeyguardCameraLaunchManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraUnavailble("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
