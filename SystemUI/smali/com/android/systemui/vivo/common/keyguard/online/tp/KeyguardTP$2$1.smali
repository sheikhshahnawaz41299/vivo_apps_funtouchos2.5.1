.class Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2$1;
.super Ljava/lang/Object;
.source "KeyguardTP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2$1;->this$1:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2$1;->this$1:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP$2;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;->access$300(Lcom/android/systemui/vivo/common/keyguard/online/tp/KeyguardTP;)V

    .line 136
    return-void
.end method
