.class Lcom/vivo/settings/ExternalStorageFormatter$4;
.super Landroid/os/Handler;
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
    .line 447
    iput-object p1, p0, Lcom/vivo/settings/ExternalStorageFormatter$4;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 449
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 463
    :goto_0
    return-void

    .line 451
    :pswitch_0
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter$4;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v1}, Lcom/vivo/settings/ExternalStorageFormatter;->access$600(Lcom/vivo/settings/ExternalStorageFormatter;)V

    goto :goto_0

    .line 454
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    const-string v1, "android.intent.extra.REASON"

    iget-object v2, p0, Lcom/vivo/settings/ExternalStorageFormatter$4;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v2}, Lcom/vivo/settings/ExternalStorageFormatter;->access$700(Lcom/vivo/settings/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter$4;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-virtual {v1, v0}, Lcom/vivo/settings/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter$4;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v1}, Lcom/vivo/settings/ExternalStorageFormatter;->access$600(Lcom/vivo/settings/ExternalStorageFormatter;)V

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
