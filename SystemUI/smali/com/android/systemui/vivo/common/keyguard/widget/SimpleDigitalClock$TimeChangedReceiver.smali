.class Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimpleDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field private mClock:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;)V
    .locals 1
    .param p1, "clock"    # Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 53
    invoke-virtual {p1}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;

    .line 60
    .local v0, "clock":Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;
    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;Landroid/content/Intent;Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    :goto_0
    return-void

    .line 75
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/SimpleDigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method
