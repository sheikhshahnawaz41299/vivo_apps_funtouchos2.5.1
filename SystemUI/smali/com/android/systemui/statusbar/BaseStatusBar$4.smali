.class Lcom/android/systemui/statusbar/BaseStatusBar$4;
.super Landroid/content/BroadcastReceiver;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 417
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 419
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 420
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 421
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v4, v4, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in the house"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 425
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->userSwitched(I)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    goto :goto_0

    .line 428
    :cond_2
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 430
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$200(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 431
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 432
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0

    .line 433
    :cond_3
    const-string v2, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 436
    .local v1, "noMan":Landroid/app/NotificationManager;
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_note_about_notification_hiding"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 440
    const-string v2, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 443
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$4;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.ACTION_APP_NOTIFICATION_REDACTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
