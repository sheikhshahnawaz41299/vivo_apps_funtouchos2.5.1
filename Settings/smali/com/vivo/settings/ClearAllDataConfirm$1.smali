.class Lcom/vivo/settings/ClearAllDataConfirm$1;
.super Landroid/os/storage/StorageEventListener;
.source "ClearAllDataConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/ClearAllDataConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ClearAllDataConfirm;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ClearAllDataConfirm;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/vivo/settings/ClearAllDataConfirm$1;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

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
    .line 84
    const-string v0, "ClearAllDataConfirm"

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

    .line 87
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm$1;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v0}, Lcom/vivo/settings/ClearAllDataConfirm;->access$000(Lcom/vivo/settings/ClearAllDataConfirm;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/vivo/settings/ClearAllDataConfirm$1;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/settings/ClearAllDataConfirm;->access$102(Lcom/vivo/settings/ClearAllDataConfirm;Z)Z

    .line 91
    :cond_0
    return-void
.end method
