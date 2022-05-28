.class public Lcom/vivo/SmartKey/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# instance fields
.field private F:Lcom/vivo/analysis/VivoCollectData;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Lcom/vivo/SmartKey/k;

.field private M:Lcom/vivo/SmartKey/l;

.field private N:Landroid/os/Vibrator;

.field private O:[J

.field private P:Landroid/app/KeyguardManager;

.field private Q:Landroid/os/PowerManager;

.field private R:Landroid/os/PowerManager$WakeLock;

.field private S:Landroid/os/PowerManager$WakeLock;

.field private T:Landroid/hardware/Flashlight;

.field private U:I

.field private V:Z

.field private W:Landroid/view/IWindowManager;

.field X:Landroid/app/ActivityManager;

.field private Y:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mLayout:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    iput-boolean v1, p0, Lcom/vivo/SmartKey/MyService;->H:Z

    .line 68
    iput-boolean v1, p0, Lcom/vivo/SmartKey/MyService;->I:Z

    .line 69
    iput-boolean v1, p0, Lcom/vivo/SmartKey/MyService;->J:Z

    .line 70
    iput v1, p0, Lcom/vivo/SmartKey/MyService;->K:I

    .line 71
    new-instance v0, Lcom/vivo/SmartKey/k;

    invoke-direct {v0, p0}, Lcom/vivo/SmartKey/k;-><init>(Lcom/vivo/SmartKey/MyService;)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->L:Lcom/vivo/SmartKey/k;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/SmartKey/MyService;->U:I

    .line 87
    iput-boolean v1, p0, Lcom/vivo/SmartKey/MyService;->V:Z

    .line 503
    return-void
.end method

.method static synthetic a(Lcom/vivo/SmartKey/MyService;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 588
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/vivo/SmartKey/MyService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v0

    .line 590
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/vivo/SmartKey/MyService;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->r()V

    return-void
.end method

.method static synthetic a(Lcom/vivo/SmartKey/MyService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/vivo/SmartKey/MyService;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 556
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/vivo/SmartKey/SmartKeyApp;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const-string v0, "MyService"

    const-string v1, "The app is not available under visitor mode."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->q()V

    .line 559
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->v()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/MyService;->a(Landroid/content/Intent;)V

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    invoke-direct {p0, p2}, Lcom/vivo/SmartKey/MyService;->d(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/vivo/SmartKey/MyService;I)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/vivo/SmartKey/MyService;->f(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/vivo/SmartKey/MyService;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/vivo/SmartKey/MyService;->V:Z

    return p1
.end method

.method static synthetic b(Lcom/vivo/SmartKey/MyService;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/vivo/SmartKey/MyService;->U:I

    return p1
.end method

.method static synthetic b(Lcom/vivo/SmartKey/MyService;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->l()V

    return-void
.end method

.method static synthetic b(Lcom/vivo/SmartKey/MyService;Z)Z
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/vivo/SmartKey/MyService;->J:Z

    return p1
.end method

.method static synthetic c(Lcom/vivo/SmartKey/MyService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->S:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_sounds_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    return-void
.end method

.method static synthetic c(Lcom/vivo/SmartKey/MyService;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/vivo/SmartKey/MyService;->d(I)V

    return-void
.end method

.method static synthetic d(Lcom/vivo/SmartKey/MyService;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/vivo/SmartKey/MyService;->U:I

    return v0
.end method

.method private d(I)V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 243
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->q()V

    .line 245
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->f()Z

    move-result v0

    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->c(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/MyService;->a(Landroid/content/Intent;)V

    .line 246
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->F:Lcom/vivo/analysis/VivoCollectData;

    const-string v2, "1040"

    const-string v3, "10403"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 269
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-static {p1}, Lcom/vivo/SmartKey/SmartKeyApp;->j(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->q()V

    .line 252
    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/SmartKey/MyService;->a(Landroid/content/Intent;)V

    .line 255
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 256
    const-string v3, "10407"

    .line 262
    :goto_1
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->F:Lcom/vivo/analysis/VivoCollectData;

    const-string v2, "1040"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    goto :goto_0

    .line 258
    :cond_1
    const-string v3, "10408"

    .line 259
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 260
    const-string v1, "p_n"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 265
    :cond_2
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->q()V

    .line 266
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->v()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/MyService;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/vivo/SmartKey/MyService;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/vivo/SmartKey/MyService;->c(I)V

    return-void
.end method

.method private dismissKeyguard()V
    .locals 2

    .prologue
    .line 201
    :try_start_0
    const-string v0, "MyService"

    const-string v1, "dismissKeyguard..."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/MyService;->c(I)V

    .line 203
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->h()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/vivo/SmartKey/MyService;I)I
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/vivo/SmartKey/MyService;->K:I

    return p1
.end method

.method private e(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 595
    const-string v0, "MyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppIconDrawable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x0

    .line 598
    invoke-static {p1}, Lcom/vivo/SmartKey/SmartKeyApp;->j(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 599
    if-nez v1, :cond_1

    .line 619
    :cond_0
    :goto_0
    const-string v1, "MyService"

    const-string v2, "getAppIconDrawable..."

    invoke-static {v1, v2}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    return-object v0

    .line 602
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 603
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 605
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 606
    if-eqz v1, :cond_0

    .line 609
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 610
    if-eqz v2, :cond_0

    .line 613
    invoke-static {v2, v1}, Lcom/vivo/SmartKey/SmartKeyApp;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_0

    .line 617
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/vivo/SmartKey/MyService;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/vivo/SmartKey/MyService;)Lcom/vivo/SmartKey/k;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->L:Lcom/vivo/SmartKey/k;

    return-object v0
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->P:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->P:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 625
    const/4 v0, 0x0

    .line 626
    packed-switch p1, :pswitch_data_0

    move-object v1, v0

    .line 641
    :goto_0
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->X:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    move v0, v2

    .line 655
    :goto_1
    return v0

    .line 628
    :pswitch_0
    const-string v0, "com.android.camera"

    move-object v1, v0

    .line 629
    goto :goto_0

    .line 631
    :pswitch_1
    const-string v0, "com.facebook.katana"

    move-object v1, v0

    .line 632
    goto :goto_0

    .line 634
    :pswitch_2
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    const-string v1, "smartkey_start_application_package"

    const-string v3, "unknow"

    invoke-static {v0, v1, v3}, Lcom/vivo/SmartKey/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 636
    goto :goto_0

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->X:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 644
    if-nez v0, :cond_1

    move v0, v2

    .line 645
    goto :goto_1

    .line 647
    :cond_1
    if-nez v1, :cond_2

    move v0, v2

    .line 648
    goto :goto_1

    .line 650
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 651
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    .line 655
    goto :goto_1

    .line 626
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic g(Lcom/vivo/SmartKey/MyService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 187
    const-string v0, "MyService"

    const-string v1, "wakeupByPM..."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->R:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 189
    return-void
.end method

.method private g(I)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    const/4 v4, -0x1

    .line 663
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->mWindowManager:Landroid/view/WindowManager;

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 668
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 669
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    .line 671
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    .line 672
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->Y:Landroid/widget/FrameLayout;

    .line 673
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->Y:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 674
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 675
    invoke-direct {p0, p1}, Lcom/vivo/SmartKey/MyService;->e(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 676
    if-eqz v1, :cond_2

    .line 677
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 679
    :cond_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 682
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 683
    iget-object v2, p0, Lcom/vivo/SmartKey/MyService;->Y:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 688
    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 689
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 690
    const v1, 0x200518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 695
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 696
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 697
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 698
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/vivo/SmartKey/MyService;->Y:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    const-string v1, "SmartKey"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 705
    return-void
.end method

.method private h()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->W:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 194
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->W:Landroid/view/IWindowManager;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->W:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic h(Lcom/vivo/SmartKey/MyService;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->k()V

    return-void
.end method

.method private i()I
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_sounds_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/vivo/SmartKey/MyService;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->g()V

    return-void
.end method

.method private isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->P:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.smartwake.dismiss"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MyService;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method static synthetic j(Lcom/vivo/SmartKey/MyService;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vivo/SmartKey/MyService;->J:Z

    return v0
.end method

.method static synthetic k(Lcom/vivo/SmartKey/MyService;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/vivo/SmartKey/MyService;->K:I

    return v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/vivo/SmartKey/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 274
    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/MyService;->a(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method private l()V
    .locals 12

    .prologue
    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 383
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->t()I

    move-result v1

    .line 384
    const-string v2, "MyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleFuntionCmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    if-ne v1, v10, :cond_5

    .line 386
    invoke-static {}, Lcom/vivo/SmartKey/SmartKeyApp;->u()I

    move-result v1

    .line 387
    const-string v2, "MyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the function choosed is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    packed-switch v1, :pswitch_data_0

    .line 457
    :goto_0
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->L:Lcom/vivo/SmartKey/k;

    const/4 v1, 0x3

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/SmartKey/k;->sendEmptyMessageDelayed(IJ)Z

    .line 461
    :goto_1
    return-void

    .line 390
    :pswitch_0
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->o()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_0

    .line 391
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->S:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 392
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->L:Lcom/vivo/SmartKey/k;

    const/4 v2, 0x6

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Lcom/vivo/SmartKey/k;->sendEmptyMessageDelayed(IJ)Z

    .line 393
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    const v2, 0x7f07000f

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 410
    :goto_2
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MyService;->stopSelf()V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->S:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 396
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vivo.flashlight.ACTION_SWITCH_FLASHLIGHT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    const-string v2, "com.vivo.daemonService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v2, "com.vivo.daemonService"

    const-string v3, "com.vivo.daemonService.flashlight.VivoFlashlightService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    invoke-virtual {p0, v1}, Lcom/vivo/SmartKey/MyService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 400
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->T:Landroid/hardware/Flashlight;

    invoke-virtual {v1}, Landroid/hardware/Flashlight;->getFlashlightState()I

    move-result v1

    if-ne v1, v10, :cond_1

    move v0, v10

    .line 401
    :cond_1
    const-string v1, "MyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFlashlightOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    if-eqz v0, :cond_2

    .line 403
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->F:Lcom/vivo/analysis/VivoCollectData;

    const-string v2, "1040"

    const-string v3, "10402_0"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    goto :goto_2

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->F:Lcom/vivo/analysis/VivoCollectData;

    const-string v2, "1040"

    const-string v3, "10402_1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    goto :goto_2

    .line 417
    :pswitch_1
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->Q:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 418
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->p()V

    .line 419
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->F:Lcom/vivo/analysis/VivoCollectData;

    const-string v2, "1040"

    const-string v3, "10404"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 425
    :pswitch_2
    const/4 v2, 0x2

    iput v2, p0, Lcom/vivo/SmartKey/MyService;->U:I

    .line 426
    invoke-direct {p0, v1}, Lcom/vivo/SmartKey/MyService;->g(I)V

    .line 427
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 428
    iput-boolean v0, p0, Lcom/vivo/SmartKey/MyService;->J:Z

    goto/16 :goto_0

    .line 430
    :cond_3
    iput-boolean v10, p0, Lcom/vivo/SmartKey/MyService;->J:Z

    .line 431
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->i()I

    move-result v0

    iput v0, p0, Lcom/vivo/SmartKey/MyService;->K:I

    .line 432
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->dismissKeyguard()V

    goto/16 :goto_0

    .line 439
    :pswitch_3
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->f()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 440
    iput v10, p0, Lcom/vivo/SmartKey/MyService;->U:I

    .line 441
    iput-boolean v0, p0, Lcom/vivo/SmartKey/MyService;->J:Z

    .line 443
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->L:Lcom/vivo/SmartKey/k;

    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->L:Lcom/vivo/SmartKey/k;

    const/4 v1, 0x7

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/SmartKey/k;->sendEmptyMessageDelayed(IJ)Z

    .line 444
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->j()V

    goto/16 :goto_0

    .line 446
    :cond_4
    iput v0, p0, Lcom/vivo/SmartKey/MyService;->U:I

    .line 447
    iput-boolean v10, p0, Lcom/vivo/SmartKey/MyService;->J:Z

    .line 448
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->i()I

    move-result v0

    iput v0, p0, Lcom/vivo/SmartKey/MyService;->K:I

    .line 449
    invoke-direct {p0, v1}, Lcom/vivo/SmartKey/MyService;->g(I)V

    .line 450
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->dismissKeyguard()V

    goto/16 :goto_0

    .line 459
    :cond_5
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MyService;->stopSelf()V

    goto/16 :goto_1

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic l(Lcom/vivo/SmartKey/MyService;)Z
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method private m()V
    .locals 2

    .prologue
    .line 464
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 465
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 469
    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->M:Lcom/vivo/SmartKey/l;

    invoke-virtual {p0, v1, v0}, Lcom/vivo/SmartKey/MyService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 470
    return-void
.end method

.method static synthetic m(Lcom/vivo/SmartKey/MyService;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->dismissKeyguard()V

    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->M:Lcom/vivo/SmartKey/l;

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 474
    return-void
.end method

.method static synthetic n(Lcom/vivo/SmartKey/MyService;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vivo/SmartKey/MyService;->V:Z

    return v0
.end method

.method private o()I
    .locals 6

    .prologue
    .line 476
    const/4 v2, -0x1

    .line 477
    const/4 v0, 0x0

    .line 480
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v3, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 482
    new-array v0, v0, [B

    .line 483
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 484
    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 486
    :try_start_2
    const-string v2, "MyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentBatteryCapacity: capacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 492
    if-eqz v1, :cond_0

    .line 493
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 501
    :cond_0
    :goto_0
    return v0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 497
    :catch_1
    move-exception v1

    .line 498
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 488
    :catch_2
    move-exception v1

    move-object v1, v0

    move v0, v2

    .line 489
    :goto_1
    :try_start_4
    const-string v2, "MyService"

    const-string v3, "getCurrentBatteryCapacity: error error error "

    invoke-static {v2, v3}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 492
    if-eqz v1, :cond_0

    .line 493
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 495
    :catch_3
    move-exception v1

    .line 496
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 497
    :catch_4
    move-exception v1

    .line 498
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 491
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 492
    :goto_2
    if-eqz v1, :cond_1

    .line 493
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 499
    :cond_1
    :goto_3
    throw v0

    .line 495
    :catch_5
    move-exception v1

    .line 496
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 497
    :catch_6
    move-exception v1

    .line 498
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 491
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 488
    :catch_7
    move-exception v0

    move v0, v2

    goto :goto_1

    :catch_8
    move-exception v2

    goto :goto_1
.end method

.method static synthetic o(Lcom/vivo/SmartKey/MyService;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic p(Lcom/vivo/SmartKey/MyService;)Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 567
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.bbksoundrecorder"

    const-string v3, "com.android.bbksoundrecorder.SoundRecorder"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 570
    const-string v1, "com.vivo.smartkey.SOUNDRECORDER_EXTRA"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 573
    invoke-direct {p0, v0}, Lcom/vivo/SmartKey/MyService;->a(Landroid/content/Intent;)V

    .line 574
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vivo/SmartKey/SmartKeyApp;->setLockScreenShown(Z)V

    .line 584
    :cond_0
    return-void
.end method

.method private r()V
    .locals 4

    .prologue
    .line 708
    const-string v0, "MyService"

    const-string v1, "endTrackAnimation..."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->Y:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->Y:Landroid/widget/FrameLayout;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 711
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 712
    new-instance v1, Lcom/vivo/SmartKey/i;

    invoke-direct {v1, p0}, Lcom/vivo/SmartKey/i;-><init>(Lcom/vivo/SmartKey/MyService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 719
    new-instance v1, Lcom/vivo/SmartKey/j;

    invoke-direct {v1, p0}, Lcom/vivo/SmartKey/j;-><init>(Lcom/vivo/SmartKey/MyService;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 746
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 748
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->Y:Landroid/widget/FrameLayout;

    .line 749
    return-void

    .line 710
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 111
    const-string v0, "MyService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 113
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MyService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    .line 114
    new-instance v0, Lcom/vivo/SmartKey/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/vivo/SmartKey/l;-><init>(Lcom/vivo/SmartKey/MyService;Lcom/vivo/SmartKey/i;)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->M:Lcom/vivo/SmartKey/l;

    .line 115
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->Q:Landroid/os/PowerManager;

    .line 116
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->X:Landroid/app/ActivityManager;

    .line 117
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->Q:Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string v2, "SmartKey"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->R:Landroid/os/PowerManager$WakeLock;

    .line 120
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->Q:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "SmartKeyPt"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->S:Landroid/os/PowerManager$WakeLock;

    .line 123
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->P:Landroid/app/KeyguardManager;

    .line 124
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/vivo/SmartKey/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->N:Landroid/os/Vibrator;

    .line 125
    invoke-virtual {p0}, Lcom/vivo/SmartKey/MyService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107001c

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/SmartKeyApp;->a(Landroid/content/res/Resources;I)[J

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->O:[J

    .line 127
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->m()V

    .line 128
    new-instance v0, Lcom/vivo/analysis/VivoCollectData;

    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/vivo/analysis/VivoCollectData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->F:Lcom/vivo/analysis/VivoCollectData;

    .line 129
    new-instance v0, Landroid/hardware/Flashlight;

    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/Flashlight;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->T:Landroid/hardware/Flashlight;

    .line 130
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 135
    const-string v0, "MyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/SmartKey/MyService;->H:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0}, Lcom/vivo/SmartKey/MyService;->n()V

    .line 137
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "MyService"

    const-string v1, "remove views..."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/SmartKey/MyService;->mLayout:Landroid/widget/FrameLayout;

    .line 142
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 143
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    .line 148
    const-string v0, "MyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vivo/SmartKey/MyService;->V:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->S:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/SmartKey/MyService;->V:Z

    .line 151
    iget-object v0, p0, Lcom/vivo/SmartKey/MyService;->L:Lcom/vivo/SmartKey/k;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vivo/SmartKey/k;->sendEmptyMessageDelayed(IJ)Z

    .line 153
    const/4 v0, 0x2

    return v0
.end method
