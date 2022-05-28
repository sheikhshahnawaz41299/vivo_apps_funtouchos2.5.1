.class Lcom/vivo/settings/ExternalStorageFormatter$1;
.super Landroid/os/storage/StorageEventListener;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/ExternalStorageFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ExternalStorageFormatter;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ExternalStorageFormatter;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vivo/settings/ExternalStorageFormatter$1;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "Settings.ESF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received storage state changed notification that "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed state from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter$1;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v0}, Lcom/vivo/settings/ExternalStorageFormatter;->access$000(Lcom/vivo/settings/ExternalStorageFormatter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "Settings.ESF"

    const-string v1, "service need stop ignore event"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter$1;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v0, p3}, Lcom/vivo/settings/ExternalStorageFormatter;->access$100(Lcom/vivo/settings/ExternalStorageFormatter;Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter$1;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-virtual {v0}, Lcom/vivo/settings/ExternalStorageFormatter;->updateProgressState()V

    goto :goto_0
.end method
