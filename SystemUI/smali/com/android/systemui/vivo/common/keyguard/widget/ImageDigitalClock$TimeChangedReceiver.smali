.class Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImageDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;
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
            "Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;)V
    .locals 1
    .param p1, "clock"    # Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock$TimeChangedReceiver;->mClock:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .line 111
    .local v0, "clock":Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 114
    .local v1, "timezoneChanged":Z
    if-eqz v1, :cond_0

    .line 115
    const-string v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "tz":Ljava/lang/String;
    const-string v3, "ImageDigitalClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Time zone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v2    # "tz":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 127
    .end local v1    # "timezoneChanged":Z
    :goto_0
    return-void

    .line 122
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock$TimeChangedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v3

    goto :goto_0
.end method
