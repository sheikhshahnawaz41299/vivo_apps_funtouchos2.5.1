.class Lcom/android/keyguard/VivoPinView$7;
.super Landroid/database/ContentObserver;
.source "VivoPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPinView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/keyguard/VivoPinView$7;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 897
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 898
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$7;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$1400(Lcom/android/keyguard/VivoPinView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "EyeIdentify_VerifyResult"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "result":Ljava/lang/String;
    const-string v1, "VivoPinView"

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

    .line 900
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 901
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$7;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 902
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$7;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 903
    const-string v1, "VivoPinView"

    const-string v2, "onChange === success"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$7;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$1500(Lcom/android/keyguard/VivoPinView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "EyeIdentify_VerifyResult"

    const-string v3, "begin"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 905
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$7;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/VivoPinView;->setEyeStatus(Z)V

    .line 911
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    const-string v1, "failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 907
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$7;->this$0:Lcom/android/keyguard/VivoPinView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/keyguard/VivoPinView;->setEyeStatus(Z)V

    goto :goto_0

    .line 908
    :cond_2
    const-string v1, "useScreenLock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$7;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/VivoPinView;->setAutoStatus(Z)V

    goto :goto_0
.end method
