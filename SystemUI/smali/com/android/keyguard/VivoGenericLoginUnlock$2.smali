.class Lcom/android/keyguard/VivoGenericLoginUnlock$2;
.super Ljava/lang/Object;
.source "VivoGenericLoginUnlock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoGenericLoginUnlock;->loginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoGenericLoginUnlock;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$2;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$2;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$600(Lcom/android/keyguard/VivoGenericLoginUnlock;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$2;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v0}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$300(Lcom/android/keyguard/VivoGenericLoginUnlock;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/VivoGenericLoginUnlock$2;->this$0:Lcom/android/keyguard/VivoGenericLoginUnlock;

    invoke-static {v0, v1}, Lcom/android/keyguard/VivoGenericLoginUnlock;->access$602(Lcom/android/keyguard/VivoGenericLoginUnlock;Z)Z

    .line 484
    return-void
.end method
