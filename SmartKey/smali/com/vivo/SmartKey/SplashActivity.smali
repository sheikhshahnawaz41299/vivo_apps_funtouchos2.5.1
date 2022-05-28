.class public Lcom/vivo/SmartKey/SplashActivity;
.super Landroid/app/Activity;
.source "SplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vivo/SmartKey/SplashActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 37
    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->setLockScreenShown(Z)V

    .line 38
    invoke-direct {p0}, Lcom/vivo/SmartKey/SplashActivity;->f()Z

    move-result v0

    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->c(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/SplashActivity;->a(Landroid/content/Intent;)V

    .line 49
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/vivo/SmartKey/SmartKeyApp;->j(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->setLockScreenShown(Z)V

    .line 43
    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/SplashActivity;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v1}, Lcom/vivo/SmartKey/SmartKeyApp;->setLockScreenShown(Z)V

    .line 46
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->v()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/SplashActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 20
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/SplashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 22
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x1

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 89
    const-string v0, "Launcher"

    const-string v1, "---onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const-string v0, "Launcher"

    const-string v1, "---onCreate"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/SmartKey/SplashActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 66
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/SplashActivity;->setContentView(Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/vivo/SmartKey/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 71
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v0

    .line 72
    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/SplashActivity;->d(I)V

    .line 74
    invoke-virtual {p0}, Lcom/vivo/SmartKey/SplashActivity;->finish()V

    .line 75
    invoke-virtual {p0, v2, v2}, Lcom/vivo/SmartKey/SplashActivity;->overridePendingTransition(II)V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "Launcher"

    const-string v1, "---onDestroy"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 103
    const-string v0, "Launcher"

    const-string v1, "---onNewIntent"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 109
    const-string v0, "Launcher"

    const-string v1, "---onPause"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 111
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    const-string v0, "Launcher"

    const-string v1, "---onResume"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 117
    const-string v0, "Launcher"

    const-string v1, "---onStart"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "Launcher"

    const-string v1, "---onStop"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 132
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 96
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---onWindowFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
