.class Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$1;
.super Ljava/lang/Object;
.source "KeyguardVL.java"

# interfaces
.implements Lcom/vlife/IRegisterOnTouchEvent;


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
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch()V
    .locals 2

    .prologue
    .line 75
    const-string v0, "KeyguardVL"

    const-string v1, "onTouch"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/online/vl/KeyguardVL;->userActivity()V

    .line 77
    return-void
.end method
