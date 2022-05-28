.class Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;
.super Ljava/lang/Thread;
.source "ShortcutSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->instantSaveShortcutInfo(ZLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

.field final synthetic val$clsName:Ljava/lang/String;

.field final synthetic val$isDouble:Z

.field final synthetic val$left:Z

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$left:Z

    iput-object p3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$pkgName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$clsName:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$isDouble:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    monitor-enter v1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$1100(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$left:Z

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$pkgName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$clsName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->saveShortcutIcon(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$left:Z

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$pkgName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$clsName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->val$isDouble:Z

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$1300(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;ZLjava/lang/String;Ljava/lang/String;Z)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$800(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 377
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;->access$002(Lcom/android/systemui/vivo/common/keyguard/nature/iconset/ShortcutSettings;Z)Z

    .line 378
    monitor-exit v1

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
