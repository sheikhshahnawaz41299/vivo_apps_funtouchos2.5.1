.class Lcom/android/settings/TetherService$2;
.super Landroid/content/BroadcastReceiver;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherService;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherService;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 272
    invoke-static {}, Lcom/android/settings/TetherService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TetherService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got provision result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "provisionResponse":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2, v5}, Lcom/android/settings/TetherService;->access$102(Lcom/android/settings/TetherService;Z)Z

    .line 277
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->access$300(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->access$200(Lcom/android/settings/TetherService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 278
    .local v0, "checkType":I
    const-string v2, "EntitlementResult"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 279
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->access$400(Lcom/android/settings/TetherService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->access$500(Lcom/android/settings/TetherService;)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2, v5}, Lcom/android/settings/TetherService;->access$402(Lcom/android/settings/TetherService;Z)Z

    .line 296
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->access$204(Lcom/android/settings/TetherService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->access$300(Lcom/android/settings/TetherService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 298
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-virtual {v2}, Lcom/android/settings/TetherService;->stopSelf()V

    .line 304
    .end local v0    # "checkType":I
    :cond_2
    :goto_1
    return-void

    .line 284
    .restart local v0    # "checkType":I
    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->access$600(Lcom/android/settings/TetherService;)V

    goto :goto_0

    .line 289
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->access$700(Lcom/android/settings/TetherService;)V

    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v2}, Lcom/android/settings/TetherService;->access$800(Lcom/android/settings/TetherService;)V

    goto :goto_0

    .line 301
    :cond_4
    iget-object v2, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    iget-object v3, p0, Lcom/android/settings/TetherService$2;->this$0:Lcom/android/settings/TetherService;

    invoke-static {v3}, Lcom/android/settings/TetherService;->access$200(Lcom/android/settings/TetherService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/TetherService;->access$900(Lcom/android/settings/TetherService;I)V

    goto :goto_1

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
