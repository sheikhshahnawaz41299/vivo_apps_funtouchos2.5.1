.class Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;
.super Ljava/lang/Object;
.source "KeyguardTP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$500(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$600(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$700(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->loadPlaySoundOggRes()V

    .line 148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$702(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;Z)Z

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$800(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$700(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->loadPlaySoundMp3Res()V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$702(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;Z)Z

    goto :goto_0
.end method
