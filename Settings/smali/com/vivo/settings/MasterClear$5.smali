.class final Lcom/vivo/settings/MasterClear$5;
.super Ljava/util/TimerTask;
.source "MasterClear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/MasterClear;->rebootWithService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field mCount:I

.field final synthetic val$pm:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/os/PowerManager;)V
    .locals 1

    .prologue
    .line 364
    iput-object p1, p0, Lcom/vivo/settings/MasterClear$5;->val$pm:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/settings/MasterClear$5;->mCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 368
    const-string v0, "MasterClear"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/vivo/settings/MasterClear$5;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/vivo/settings/MasterClear$5;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": schedul reboot with service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/vivo/settings/MasterClear$5;->val$pm:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 370
    return-void
.end method
