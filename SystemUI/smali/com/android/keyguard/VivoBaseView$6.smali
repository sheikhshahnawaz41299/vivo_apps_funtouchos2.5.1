.class Lcom/android/keyguard/VivoBaseView$6;
.super Landroid/database/ContentObserver;
.source "VivoBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoBaseView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoBaseView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/keyguard/VivoBaseView$6;->this$0:Lcom/android/keyguard/VivoBaseView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 903
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 904
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$6;->this$0:Lcom/android/keyguard/VivoBaseView;

    invoke-static {v1}, Lcom/android/keyguard/VivoBaseView;->access$200(Lcom/android/keyguard/VivoBaseView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_secure_fingerprint_iv"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "result":Ljava/lang/String;
    const-string v1, "VivoBaseView"

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

    .line 906
    const-string v1, "begin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$6;->this$0:Lcom/android/keyguard/VivoBaseView;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/VivoBaseView;->showSecurity(Ljava/lang/String;)V

    .line 908
    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$6;->this$0:Lcom/android/keyguard/VivoBaseView;

    invoke-static {v1}, Lcom/android/keyguard/VivoBaseView;->access$300(Lcom/android/keyguard/VivoBaseView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_secure_fingerprint_iv"

    const-string v3, "begin"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 910
    :cond_0
    return-void
.end method
