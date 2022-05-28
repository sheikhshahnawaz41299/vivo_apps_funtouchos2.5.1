.class Lcom/vivo/settings/MasterClear$2;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/MasterClear;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/MasterClear;


# direct methods
.method constructor <init>(Lcom/vivo/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/vivo/settings/MasterClear$2;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 147
    sget-object v0, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    iget-object v1, p0, Lcom/vivo/settings/MasterClear$2;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v1}, Lcom/vivo/settings/MasterClear;->access$600(Lcom/vivo/settings/MasterClear;)Lcom/vivo/settings/MasterClear$ClearThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/settings/MasterClear$ClearThread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 148
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/MasterClear$2;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v2}, Lcom/vivo/settings/MasterClear;->access$600(Lcom/vivo/settings/MasterClear;)Lcom/vivo/settings/MasterClear$ClearThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/settings/MasterClear$ClearThread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/MasterClear$2;->this$0:Lcom/vivo/settings/MasterClear;

    invoke-static {v0}, Lcom/vivo/settings/MasterClear;->access$600(Lcom/vivo/settings/MasterClear;)Lcom/vivo/settings/MasterClear$ClearThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/MasterClear$ClearThread;->clearSet()V

    .line 152
    iget-object v0, p0, Lcom/vivo/settings/MasterClear$2;->this$0:Lcom/vivo/settings/MasterClear;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/settings/MasterClear;->removeDialog(I)V

    goto :goto_0
.end method
