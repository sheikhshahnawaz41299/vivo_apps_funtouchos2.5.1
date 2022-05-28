.class Lcom/vivo/settings/ClearAllData$1;
.super Landroid/os/storage/StorageEventListener;
.source "ClearAllData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/ClearAllData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ClearAllData;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ClearAllData;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vivo/settings/ClearAllData$1;->this$0:Lcom/vivo/settings/ClearAllData;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 64
    const-string v0, "ClearAllData"

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

    .line 67
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData$1;->this$0:Lcom/vivo/settings/ClearAllData;

    invoke-static {v0}, Lcom/vivo/settings/ClearAllData;->access$000(Lcom/vivo/settings/ClearAllData;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "bad_removal"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData$1;->this$0:Lcom/vivo/settings/ClearAllData;

    invoke-static {v0}, Lcom/vivo/settings/ClearAllData;->access$100(Lcom/vivo/settings/ClearAllData;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData$1;->this$0:Lcom/vivo/settings/ClearAllData;

    invoke-static {v0}, Lcom/vivo/settings/ClearAllData;->access$200(Lcom/vivo/settings/ClearAllData;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/ClearAllData$1;->this$0:Lcom/vivo/settings/ClearAllData;

    invoke-static {v0}, Lcom/vivo/settings/ClearAllData;->access$200(Lcom/vivo/settings/ClearAllData;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
