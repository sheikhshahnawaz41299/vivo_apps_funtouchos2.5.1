.class Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$3;
.super Landroid/database/ContentObserver;
.source "StatusBarColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$3;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 650
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 651
    const-string v0, "StatusBarColorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLockscreenIdContentObserver: selfChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$3;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$3;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->access$400(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "lock_screen_theme_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->access$302(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;I)I

    .line 653
    return-void
.end method
