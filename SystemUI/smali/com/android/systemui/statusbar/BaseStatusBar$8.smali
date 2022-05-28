.class Lcom/android/systemui/statusbar/BaseStatusBar$8;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appLabel:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$appLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1066
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V

    .line 1070
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$502(Lcom/android/systemui/statusbar/BaseStatusBar;I)I

    .line 1071
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlocked:Z

    .line 1072
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$pkg:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedPkg:Ljava/lang/String;

    .line 1073
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$appLabel:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedAppLabel:Ljava/lang/String;

    .line 1074
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedInstanceId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1081
    :goto_0
    return-void

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar"

    const-string v2, "BaseStatusBar, blockButton.setOnClickListener, dismissKeyguard error!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$appLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$8;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->blockNotification(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method
