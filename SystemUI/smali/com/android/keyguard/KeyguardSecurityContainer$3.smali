.class Lcom/android/keyguard/KeyguardSecurityContainer$3;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$3;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .param p1, "securityVerified"    # Z

    .prologue
    .line 656
    return-void
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 654
    const/4 v0, 0x0

    return v0
.end method

.method public reportUnlockAttempt(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 652
    return-void
.end method

.method public showBackupSecurity()V
    .locals 0

    .prologue
    .line 650
    return-void
.end method

.method public showLockScreen()V
    .locals 0

    .prologue
    .line 659
    return-void
.end method

.method public showSecurity()V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 648
    return-void
.end method
