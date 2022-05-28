.class Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;
.super Landroid/content/BroadcastReceiver;
.source "HalffoldControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isShoting:Z

    .line 260
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isShoting:Z

    .line 262
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-string v4, "Keyguard is not lock state"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string v3, "com.android.bbk.action.ACTION_USB_CONNECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$200(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-string v4, "onReceive action is : ACTION_USB_CONNECT   isFirstEnter"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$202(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Z)Z

    .line 269
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isShoting:Z

    goto :goto_0

    .line 272
    :cond_1
    const-string v3, "plug_status"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 273
    .local v1, "mPlugType":I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 274
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-string v4, "onReceive action is : ACTION_USB_CONNECT   mPlugType == 2"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$300(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)J

    move-result-wide v4

    const-wide/16 v6, 0x5dc

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 276
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-wide/16 v4, 0x5dc

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$302(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;J)J

    .line 297
    .end local v1    # "mPlugType":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$500(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$500(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$300(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 278
    :cond_3
    const-string v3, "com.bbk.lock.screen.on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 279
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-string v4, "onReceive action is : ACTION_LOCK_SCREEN_ON"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$300(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 281
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-wide/16 v4, 0x1f4

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$302(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;J)J

    goto :goto_1

    .line 282
    :cond_4
    const-string v3, "com.bbk.lock.screen.show"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 283
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-string v4, "onReceive action is : ACTION_LOCK_SCREEN_SHOW"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$300(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 285
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-wide/16 v4, 0xfa

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$302(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;J)J

    goto :goto_1

    .line 286
    :cond_5
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 287
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-string v4, "onReceive action is : ACTION_BOOT_COMPLETED"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-wide/16 v4, 0xbb8

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$302(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;J)J

    goto :goto_1

    .line 289
    :cond_6
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-string v4, "onReceive action is : ACTION_PHONE_STATE_CHANGED"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)V

    .line 291
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "state":Ljava/lang/String;
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$400(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 293
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-wide/16 v4, 0x5dc

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$302(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;J)J

    .line 295
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v3, v2}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$402(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1
.end method
