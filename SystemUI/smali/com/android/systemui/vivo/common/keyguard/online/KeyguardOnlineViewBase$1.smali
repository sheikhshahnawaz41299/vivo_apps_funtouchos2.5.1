.class Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase$1;
.super Landroid/os/Handler;
.source "KeyguardOnlineViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/online/KeyguardOnlineViewBase;->unlock()V

    .line 36
    return-void
.end method
