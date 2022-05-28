.class Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$2;
.super Ljava/lang/Object;
.source "KeyguardCameraLaunchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->onSwipingStarted()V
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
    .line 192
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui.statusbar.phone.CLOSE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    return-void
.end method
