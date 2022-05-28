.class Lcom/vivo/SmartKey/l;
.super Landroid/content/BroadcastReceiver;
.source "MyService.java"


# instance fields
.field final synthetic Z:Lcom/vivo/SmartKey/MyService;


# direct methods
.method private constructor <init>(Lcom/vivo/SmartKey/MyService;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/SmartKey/MyService;Lcom/vivo/SmartKey/i;)V
    .locals 0

    .prologue
    .line 503
    invoke-direct {p0, p1}, Lcom/vivo/SmartKey/l;-><init>(Lcom/vivo/SmartKey/MyService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, -0x1

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 509
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 510
    const-string v0, "MyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user present "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2}, Lcom/vivo/SmartKey/MyService;->j(Lcom/vivo/SmartKey/MyService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 513
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v3}, Lcom/vivo/SmartKey/MyService;->b(Lcom/vivo/SmartKey/MyService;I)I

    .line 514
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->f(Lcom/vivo/SmartKey/MyService;)Lcom/vivo/SmartKey/k;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v7, v2, v3}, Lcom/vivo/SmartKey/k;->sendEmptyMessageDelayed(IJ)Z

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 517
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v4}, Lcom/vivo/SmartKey/MyService;->a(Lcom/vivo/SmartKey/MyService;Z)Z

    .line 518
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v0

    .line 519
    const-string v1, "MyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v3}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v3}, Lcom/vivo/SmartKey/MyService;->j(Lcom/vivo/SmartKey/MyService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    if-eq v0, v6, :cond_2

    if-eq v0, v7, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->k(Lcom/vivo/SmartKey/MyService;)I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 524
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v5}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;I)V

    .line 525
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v4}, Lcom/vivo/SmartKey/MyService;->e(Lcom/vivo/SmartKey/MyService;I)I

    .line 527
    :cond_3
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->f(Lcom/vivo/SmartKey/MyService;)Lcom/vivo/SmartKey/k;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/vivo/SmartKey/k;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->f(Lcom/vivo/SmartKey/MyService;)Lcom/vivo/SmartKey/k;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/vivo/SmartKey/k;->removeMessages(I)V

    .line 529
    :cond_4
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->f(Lcom/vivo/SmartKey/MyService;)Lcom/vivo/SmartKey/k;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v6, v2, v3}, Lcom/vivo/SmartKey/k;->sendEmptyMessageDelayed(IJ)Z

    .line 530
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->j(Lcom/vivo/SmartKey/MyService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v4}, Lcom/vivo/SmartKey/MyService;->b(Lcom/vivo/SmartKey/MyService;Z)Z

    .line 532
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->l(Lcom/vivo/SmartKey/MyService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->m(Lcom/vivo/SmartKey/MyService;)V

    goto/16 :goto_0

    .line 539
    :cond_5
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    const-string v0, "MyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen off "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2}, Lcom/vivo/SmartKey/MyService;->j(Lcom/vivo/SmartKey/MyService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2}, Lcom/vivo/SmartKey/MyService;->n(Lcom/vivo/SmartKey/MyService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v0, "MyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v2}, Lcom/vivo/SmartKey/MyService;->c(Lcom/vivo/SmartKey/MyService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->n(Lcom/vivo/SmartKey/MyService;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 544
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v4}, Lcom/vivo/SmartKey/MyService;->a(Lcom/vivo/SmartKey/MyService;Z)Z

    goto/16 :goto_0

    .line 547
    :cond_6
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->d(Lcom/vivo/SmartKey/MyService;)I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 548
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0, v3}, Lcom/vivo/SmartKey/MyService;->b(Lcom/vivo/SmartKey/MyService;I)I

    .line 550
    :cond_7
    iget-object v0, p0, Lcom/vivo/SmartKey/l;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-virtual {v0}, Lcom/vivo/SmartKey/MyService;->stopSelf()V

    goto/16 :goto_0
.end method
