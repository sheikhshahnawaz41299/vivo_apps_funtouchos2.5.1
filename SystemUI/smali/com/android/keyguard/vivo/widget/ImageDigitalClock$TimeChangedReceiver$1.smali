.class Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "ImageDigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

.field final synthetic val$timezoneChanged:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver;ZLcom/android/keyguard/vivo/widget/ImageDigitalClock;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver$1;->this$0:Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver;

    iput-boolean p2, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    iput-object p3, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver$1;->val$timezoneChanged:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->access$002(Lcom/android/keyguard/vivo/widget/ImageDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->updateTime()V

    .line 101
    return-void
.end method
