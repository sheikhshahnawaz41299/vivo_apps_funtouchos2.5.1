.class Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;
.super Ljava/lang/Object;
.source "KeyguardCameraLaunchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$100(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "KeyguardCameraLaunchManager"

    const-string v1, "Timeout waiting for camera availability"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->launchCamera()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$102(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;Z)Z

    .line 161
    :cond_0
    return-void
.end method
