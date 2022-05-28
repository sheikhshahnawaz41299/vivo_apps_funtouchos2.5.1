.class Lcom/vivo/settings/applications/FactoryAppManager$2;
.super Landroid/os/Handler;
.source "FactoryAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/FactoryAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/FactoryAppManager;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 238
    iget v2, p1, Landroid/os/Message;->what:I

    .line 239
    .local v2, "what":I
    packed-switch v2, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 241
    :pswitch_0
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$200(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$300(Lcom/vivo/settings/applications/FactoryAppManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$400(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$400(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$200(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$500(Lcom/vivo/settings/applications/FactoryAppManager;)V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$200(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$600(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$600(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$700(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 256
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$700(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 258
    :cond_2
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$600(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 259
    :try_start_0
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$600(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;

    .line 260
    .local v1, "tmpInfo":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$700(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 262
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "tmpInfo":Lcom/vivo/settings/applications/FactoryAppManager$PackageFileInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$400(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$2;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$800(Lcom/vivo/settings/applications/FactoryAppManager;)Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vivo/settings/applications/FactoryAppManager$PackageFileAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
