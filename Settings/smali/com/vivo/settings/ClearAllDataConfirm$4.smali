.class Lcom/vivo/settings/ClearAllDataConfirm$4;
.super Landroid/os/Handler;
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
    .line 262
    iput-object p1, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 264
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 266
    :pswitch_0
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$400(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    iget-object v3, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v3}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/ClearAllDataConfirm;->access$402(Lcom/vivo/settings/ClearAllDataConfirm;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 271
    :goto_1
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$400(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$400(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/widget/Toast;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1

    .line 274
    :pswitch_1
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$500(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-nez v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v4}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/vivo/settings/ClearAllDataConfirm;->access$502(Lcom/vivo/settings/ClearAllDataConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 276
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$500(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    const v4, 0x7f0b0937

    invoke-virtual {v3, v4}, Lcom/vivo/settings/ClearAllDataConfirm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$500(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 278
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$500(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 279
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$500(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 280
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$600(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/StatusBarManager;

    move-result-object v2

    if-nez v2, :cond_2

    .line 281
    iget-object v3, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "statusbar"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    invoke-static {v3, v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$602(Lcom/vivo/settings/ClearAllDataConfirm;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$600(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/StatusBarManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 285
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$500(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0

    .line 288
    :pswitch_2
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$500(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$500(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 293
    :pswitch_3
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$700(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$700(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 294
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$700(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 296
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b091c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 298
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    const v3, 0x7f0b07db

    invoke-virtual {v2, v3}, Lcom/vivo/settings/ClearAllDataConfirm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 300
    const v2, 0x7f0b08da

    new-instance v3, Lcom/vivo/settings/ClearAllDataConfirm$4$1;

    invoke-direct {v3, p0}, Lcom/vivo/settings/ClearAllDataConfirm$4$1;-><init>(Lcom/vivo/settings/ClearAllDataConfirm$4;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    const v2, 0x7f0b07c5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/ClearAllDataConfirm;->access$702(Lcom/vivo/settings/ClearAllDataConfirm;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 312
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$700(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 315
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_4
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->access$800(Lcom/vivo/settings/ClearAllDataConfirm;)V

    goto/16 :goto_0

    .line 318
    :pswitch_5
    const-string v2, "ClearAllDataConfirm"

    const-string v3, "send broadcast to factory reset"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    const-string v2, "android.intent.extra.REASON"

    const-string v3, "MasterClearConfirm"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v2, p0, Lcom/vivo/settings/ClearAllDataConfirm$4;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-virtual {v2}, Lcom/vivo/settings/ClearAllDataConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
