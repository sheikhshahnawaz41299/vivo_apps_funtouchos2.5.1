.class Lcom/android/keyguard/VivoGenericLoginUnlock$1;
.super Ljava/lang/Object;
.source "VivoGenericLoginUnlock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoGenericLoginUnlock;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoGenericLoginUnlock;Z)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    iput-boolean p2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 291
    iget-boolean v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->val$success:Z

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$000(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 294
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$000(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 295
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$000(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    .line 296
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$000(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 297
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$100(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vivo_invalidity_password"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "Account"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 302
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$200(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v4}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$000(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 306
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$300(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 307
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$000(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->resetLockoutAttemptDeadline()V

    .line 308
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vivo.secure.keyguard.enable.or.disable"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v1, "intentUI":Landroid/content/Intent;
    const-string v2, "enable"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$400(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 313
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$300(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 319
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentUI":Landroid/content/Intent;
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$1;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v2}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$500(Lcom/android/keyguard/VivoGenericLoginUnlock;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
