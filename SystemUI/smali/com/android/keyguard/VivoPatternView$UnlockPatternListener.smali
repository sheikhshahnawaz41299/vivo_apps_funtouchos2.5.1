.class Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;
.super Ljava/lang/Object;
.source "VivoPatternView.java"

# interfaces
.implements Lcom/android/keyguard/UnLockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPatternView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/VivoPatternView;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/VivoPatternView;Lcom/android/keyguard/VivoPatternView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/VivoPatternView;
    .param p2, "x1"    # Lcom/android/keyguard/VivoPatternView$1;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/VivoPatternView;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPatternView;->access$300(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 367
    return-void
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 363
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 372
    :try_start_0
    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v7}, Lcom/android/keyguard/VivoPatternView;->access$400(Lcom/android/keyguard/VivoPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 378
    .local v1, "checkPattern":Z
    :goto_0
    const-string v7, "VivoPatternView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkPattern = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v1, :cond_0

    .line 380
    const-string v7, "VivoPatternView"

    const-string v8, "checkPattern sucessful "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v7}, Lcom/android/keyguard/VivoPatternView;->access$300(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 382
    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v7}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/UnLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 383
    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v7}, Lcom/android/keyguard/VivoPatternView;->access$300(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 384
    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/VivoPatternView;->setEyeStatus(Z)V

    .line 387
    invoke-static {v6}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 416
    :goto_1
    return-void

    .line 373
    .end local v1    # "checkPattern":Z
    :catch_0
    move-exception v4

    .line 374
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "VivoPatternView"

    const-string v8, "try  catch"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x0

    .restart local v1    # "checkPattern":Z
    goto :goto_0

    .line 390
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_1

    .line 391
    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v7}, Lcom/android/keyguard/VivoPatternView;->access$300(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 395
    :cond_1
    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-virtual {v7}, Lcom/android/keyguard/VivoPatternView;->vibrate()V

    .line 398
    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v7}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v7

    sget-object v8, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v7, v8}, Lcom/android/keyguard/UnLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 399
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_3

    .line 401
    .local v5, "registeredAttempt":Z
    :goto_2
    if-eqz v5, :cond_2

    .line 402
    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v7}, Lcom/android/keyguard/VivoPatternView;->access$300(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 404
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v6}, Lcom/android/keyguard/VivoPatternView;->access$500(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 405
    .local v0, "attempts":I
    if-eqz v5, :cond_4

    rem-int/lit8 v6, v0, 0x5

    if-nez v6, :cond_4

    .line 407
    iget-object v6, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v6}, Lcom/android/keyguard/VivoPatternView;->access$400(Lcom/android/keyguard/VivoPatternView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v2

    .line 408
    .local v2, "deadline":J
    iget-object v6, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v6, v2, v3}, Lcom/android/keyguard/VivoPatternView;->access$600(Lcom/android/keyguard/VivoPatternView;J)V

    goto :goto_1

    .end local v0    # "attempts":I
    .end local v2    # "deadline":J
    .end local v5    # "registeredAttempt":Z
    :cond_3
    move v5, v6

    .line 399
    goto :goto_2

    .line 410
    .restart local v0    # "attempts":I
    .restart local v5    # "registeredAttempt":Z
    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v6}, Lcom/android/keyguard/VivoPatternView;->access$700(Lcom/android/keyguard/VivoPatternView;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 411
    iget-object v6, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v6}, Lcom/android/keyguard/VivoPatternView;->access$800(Lcom/android/keyguard/VivoPatternView;)V

    .line 413
    :cond_5
    iget-object v6, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v6}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v7}, Lcom/android/keyguard/VivoPatternView;->access$200(Lcom/android/keyguard/VivoPatternView;)Ljava/lang/Runnable;

    move-result-object v7

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/keyguard/UnLockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v0}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPatternView;->access$200(Lcom/android/keyguard/VivoPatternView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method
