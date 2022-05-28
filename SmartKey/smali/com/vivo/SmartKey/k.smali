.class Lcom/vivo/SmartKey/k;
.super Landroid/os/Handler;
.source "MyService.java"


# instance fields
.field final synthetic Z:Lcom/vivo/SmartKey/MyService;


# direct methods
.method constructor <init>(Lcom/vivo/SmartKey/MyService;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .prologue
    const/16 v0, 0x258

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v7, -0x1

    .line 289
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 376
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    const-string v0, "MyService"

    const-string v1, "handle view animation."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->a(Lcom/vivo/SmartKey/MyService;)V

    goto :goto_0

    .line 296
    :pswitch_2
    const-string v0, "MyService"

    const-string v1, "handle function cmd."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->b(Lcom/vivo/SmartKey/MyService;)V

    .line 298
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->c(Lcom/vivo/SmartKey/MyService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 303
    :pswitch_3
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v2

    .line 304
    iget-object v3, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v3, v2}, Lcom/vivo/SmartKey/MyService;->a(Lcom/vivo/SmartKey/MyService;I)Z

    move-result v3

    .line 305
    const-string v4, "MyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle launch app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v6}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  isRunning = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v4}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v4

    if-nez v4, :cond_1

    .line 308
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v7}, Lcom/vivo/SmartKey/MyService;->b(Lcom/vivo/SmartKey/MyService;I)I

    .line 309
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v2}, Lcom/vivo/SmartKey/MyService;->c(Lcom/vivo/SmartKey/MyService;I)V

    .line 310
    const/16 v0, 0x12c

    .line 322
    :cond_0
    :goto_1
    if-eqz v3, :cond_3

    .line 323
    add-int/lit8 v0, v0, 0x64

    .line 327
    :goto_2
    iget-object v1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v1}, Lcom/vivo/SmartKey/MyService;->f(Lcom/vivo/SmartKey/MyService;)Lcom/vivo/SmartKey/k;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v8, v2, v3}, Lcom/vivo/SmartKey/k;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 311
    :cond_1
    iget-object v4, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v4}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 312
    iget-object v1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v1, v7}, Lcom/vivo/SmartKey/MyService;->b(Lcom/vivo/SmartKey/MyService;I)I

    .line 313
    iget-object v1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v1, v2}, Lcom/vivo/SmartKey/MyService;->c(Lcom/vivo/SmartKey/MyService;I)V

    .line 314
    iget-object v1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v1}, Lcom/vivo/SmartKey/MyService;->e(Lcom/vivo/SmartKey/MyService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/16 v0, 0x384

    goto :goto_1

    :cond_2
    move v0, v1

    .line 320
    goto :goto_1

    .line 325
    :cond_3
    const/16 v0, 0x4b0

    goto :goto_2

    .line 331
    :pswitch_4
    const-string v0, "MyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle launch app after unlock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v0

    .line 333
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 334
    iget-object v1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    const-string v2, "com.facebook.katana"

    invoke-static {v1, v2, v0}, Lcom/vivo/SmartKey/MyService;->a(Lcom/vivo/SmartKey/MyService;Ljava/lang/String;I)V

    .line 342
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-virtual {v0}, Lcom/vivo/SmartKey/MyService;->stopSelf()V

    goto/16 :goto_0

    .line 335
    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 336
    iget-object v1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v1}, Lcom/vivo/SmartKey/MyService;->g(Lcom/vivo/SmartKey/MyService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "smartkey_start_application_package"

    const-string v3, "unknow"

    invoke-static {v1, v2, v3}, Lcom/vivo/SmartKey/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    iget-object v2, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2, v1, v0}, Lcom/vivo/SmartKey/MyService;->a(Lcom/vivo/SmartKey/MyService;Ljava/lang/String;I)V

    goto :goto_3

    .line 346
    :pswitch_5
    const-string v2, "MyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle launch splash "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v4}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v2

    if-nez v2, :cond_6

    .line 349
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v7}, Lcom/vivo/SmartKey/MyService;->b(Lcom/vivo/SmartKey/MyService;I)I

    .line 350
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->h(Lcom/vivo/SmartKey/MyService;)V

    .line 351
    const/16 v0, 0x190

    .line 359
    :goto_4
    iget-object v1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v1}, Lcom/vivo/SmartKey/MyService;->f(Lcom/vivo/SmartKey/MyService;)Lcom/vivo/SmartKey/k;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v8, v2, v3}, Lcom/vivo/SmartKey/k;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 352
    :cond_6
    iget-object v2, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v2

    if-ne v2, v8, :cond_7

    .line 353
    iget-object v1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v1, v7}, Lcom/vivo/SmartKey/MyService;->b(Lcom/vivo/SmartKey/MyService;I)I

    .line 354
    iget-object v1, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v1}, Lcom/vivo/SmartKey/MyService;->h(Lcom/vivo/SmartKey/MyService;)V

    goto :goto_4

    :cond_7
    move v0, v1

    .line 357
    goto :goto_4

    .line 364
    :pswitch_6
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->i(Lcom/vivo/SmartKey/MyService;)V

    .line 365
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->c(Lcom/vivo/SmartKey/MyService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 370
    :pswitch_7
    iget-object v0, p0, Lcom/vivo/SmartKey/k;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->i(Lcom/vivo/SmartKey/MyService;)V

    goto/16 :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
