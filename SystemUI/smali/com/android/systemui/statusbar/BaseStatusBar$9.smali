.class Lcom/android/systemui/statusbar/BaseStatusBar$9;
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

.field final synthetic val$appUidF:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$appLabel:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$appUidF:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$appLabel:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$appUidF:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$9;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$600(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1088
    return-void
.end method
