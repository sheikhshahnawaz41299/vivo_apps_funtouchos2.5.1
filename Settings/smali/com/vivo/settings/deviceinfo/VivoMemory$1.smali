.class Lcom/vivo/settings/deviceinfo/VivoMemory$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoMemory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/deviceinfo/VivoMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;


# direct methods
.method constructor <init>(Lcom/vivo/settings/deviceinfo/VivoMemory;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$1;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v3, "VivoMemory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMediaScannerReceiver action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-nez v0, :cond_1

    .line 85
    :cond_0
    return-void

    .line 78
    :cond_1
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.android.settings.formatotg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SCANNER_MEDIAFILE_SCAN_FINISHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    :cond_2
    iget-object v3, p0, Lcom/vivo/settings/deviceinfo/VivoMemory$1;->this$0:Lcom/vivo/settings/deviceinfo/VivoMemory;

    invoke-static {v3}, Lcom/vivo/settings/deviceinfo/VivoMemory;->access$000(Lcom/vivo/settings/deviceinfo/VivoMemory;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;

    .line 82
    .local v1, "category":Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;
    invoke-virtual {v1}, Lcom/vivo/settings/deviceinfo/VivoVolumeCategory;->onMediaScannerFinished()V

    goto :goto_0
.end method
