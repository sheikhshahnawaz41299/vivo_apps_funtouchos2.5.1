.class Lcom/vivo/settings/CPURealDataActivity$1;
.super Ljava/util/TimerTask;
.source "CPURealDataActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/CPURealDataActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/CPURealDataActivity;


# direct methods
.method constructor <init>(Lcom/vivo/settings/CPURealDataActivity;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vivo/settings/CPURealDataActivity$1;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vivo/settings/CPURealDataActivity$1;->this$0:Lcom/vivo/settings/CPURealDataActivity;

    invoke-static {v0}, Lcom/vivo/settings/CPURealDataActivity;->access$100(Lcom/vivo/settings/CPURealDataActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/vivo/settings/CPURealDataActivity$1$1;

    invoke-direct {v1, p0}, Lcom/vivo/settings/CPURealDataActivity$1$1;-><init>(Lcom/vivo/settings/CPURealDataActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method
