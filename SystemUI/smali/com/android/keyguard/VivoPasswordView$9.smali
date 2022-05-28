.class Lcom/android/keyguard/VivoPasswordView$9;
.super Landroid/database/ContentObserver;
.source "VivoPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPasswordView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView$9;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 813
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 814
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$9;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$700(Lcom/android/keyguard/VivoPasswordView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "EyeIdentify_VerifyResult"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 815
    .local v0, "result":Ljava/lang/String;
    const-string v1, "VivoPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$9;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 818
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$9;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 819
    const-string v1, "VivoPasswordView"

    const-string v2, "onChange === success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$9;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$800(Lcom/android/keyguard/VivoPasswordView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "EyeIdentify_VerifyResult"

    const-string v3, "begin"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 821
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$9;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/VivoPasswordView;->setEyeStatus(Z)V

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 823
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$9;->this$0:Lcom/android/keyguard/VivoPasswordView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/VivoPasswordView;->setEyeStatus(Z)V

    goto :goto_0

    .line 824
    :cond_2
    const-string v1, "useScreenLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$9;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/VivoPasswordView;->setAutoStatus(Z)V

    goto :goto_0
.end method
