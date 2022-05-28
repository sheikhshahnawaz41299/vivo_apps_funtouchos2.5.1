.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14$1;
.super Ljava/util/TimerTask;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;)V
    .locals 0

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1019
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IWindowManager;->dismissKeyguard()V

    .line 1021
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1026
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1027
    .local v1, "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1028
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1029
    return-void

    .line 1023
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "PhoneStatusBar"

    const-string v3, "PhoneStatusBar, setOnClickBlockListener, dismissKeyguard error!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
