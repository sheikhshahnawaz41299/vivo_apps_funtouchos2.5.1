.class Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;
.super Ljava/lang/Thread;
.source "KeyguardSmartUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateKeyguardShortcutIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1073
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1074
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    monitor-enter v7

    .line 1075
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v6

    const-string v8, "custom_settings"

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1076
    .local v0, "customSettings":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->getShortcutWidth()I

    move-result v5

    .line 1077
    .local v5, "shortWidth":I
    const-string v6, "KeyguardSmartUpdateMonitor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----updateKeyguardShortcutIcon shortWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    const-string v6, "left_pkg"

    const-string v8, "com.android.dialer"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1079
    .local v2, "leftPkg":Ljava/lang/String;
    const-string v6, "left_cls"

    const-string v8, "com.android.dialer.TwelveKeyDialer"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    .local v1, "leftCls":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x1

    invoke-static {v6, v8, v2, v1, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->saveShortcutIcon(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 1081
    const-string v6, "right_pkg"

    const-string v8, "com.android.camera"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1082
    .local v4, "rightPkg":Ljava/lang/String;
    const-string v6, "right_cls"

    const-string v8, "com.android.camera.CameraActivity"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    .local v3, "rightCls":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v4, v3, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->saveShortcutIcon(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 1084
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x15

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1085
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v6

    const/16 v8, 0x15

    invoke-virtual {v6, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1086
    monitor-exit v7

    .line 1087
    return-void

    .line 1086
    .end local v0    # "customSettings":Landroid/content/SharedPreferences;
    .end local v1    # "leftCls":Ljava/lang/String;
    .end local v2    # "leftPkg":Ljava/lang/String;
    .end local v3    # "rightCls":Ljava/lang/String;
    .end local v4    # "rightPkg":Ljava/lang/String;
    .end local v5    # "shortWidth":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
