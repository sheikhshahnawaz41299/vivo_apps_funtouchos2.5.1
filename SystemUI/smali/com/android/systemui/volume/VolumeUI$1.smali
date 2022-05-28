.class Lcom/android/systemui/volume/VolumeUI$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "action":Ljava/lang/String;
    const-string v1, "VolumeUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "com.android.settings.font_size_changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeUI;->access$000(Lcom/android/systemui/volume/VolumeUI;)V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v1, "com.android.service.hallobserver.lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeUI;->access$102(Lcom/android/systemui/volume/VolumeUI;Z)Z

    goto :goto_0

    .line 94
    :cond_2
    const-string v1, "com.android.service.hallobserver.unlock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$1;->this$0:Lcom/android/systemui/volume/VolumeUI;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeUI;->access$102(Lcom/android/systemui/volume/VolumeUI;Z)Z

    goto :goto_0
.end method
