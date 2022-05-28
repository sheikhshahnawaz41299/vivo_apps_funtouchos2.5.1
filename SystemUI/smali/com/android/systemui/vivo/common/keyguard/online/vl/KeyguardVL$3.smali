.class Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;
.super Landroid/database/ContentObserver;
.source "KeyguardVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 224
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$500(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "lockscreen_sounds_enabled"

    invoke-static {v3, v4, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$402(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;Z)Z

    .line 226
    const-string v0, "KeyguardVL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSoundOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$400(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$600(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Lcom/vlife/VlifeLockScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$600(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Lcom/vlife/VlifeLockScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->access$400(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vlife/VlifeLockScreen;->setUnlockSoundOn(Z)V

    .line 230
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 224
    goto :goto_0
.end method
