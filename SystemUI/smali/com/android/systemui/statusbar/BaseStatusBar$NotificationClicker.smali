.class public Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NotificationClicker"
.end annotation


# instance fields
.field private mIntent:Landroid/app/PendingIntent;

.field private mIsHeadsUp:Z

.field private final mNotificationKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "notificationKey"    # Ljava/lang/String;
    .param p4, "forHun"    # Z

    .prologue
    .line 2003
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2004
    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    .line 2005
    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mNotificationKey:Ljava/lang/String;

    .line 2006
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIsHeadsUp:Z

    .line 2007
    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    .prologue
    .line 1998
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mIsHeadsUp:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mNotificationKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2010
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.systemui.notimultiwindow"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2011
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v2, "notificationKey"

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2012
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2013
    const-string v2, "StatusBar"

    const-string v3, "NotificationOnClick!!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)V

    .line 2081
    .local v1, "clickRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2082
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->onKeyguardNotificationClick(Ljava/lang/Runnable;)V

    .line 2087
    :goto_0
    return-void

    .line 2084
    :cond_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
