.class Lcom/android/keyguard/VivoGenericLoginUnlock$3$1;
.super Landroid/os/ResultReceiver;
.source "VivoGenericLoginUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoGenericLoginUnlock$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/VivoGenericLoginUnlock$3;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoGenericLoginUnlock$3;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$3$1;->this$1:Lcom/android/keyguard/VivoGenericLoginUnlock$3;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$3$1;->this$1:Lcom/android/keyguard/VivoGenericLoginUnlock$3;

    iget-object v0, v0, Lcom/android/keyguard/VivoGenericLoginUnlock$3;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$300(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 470
    return-void
.end method
