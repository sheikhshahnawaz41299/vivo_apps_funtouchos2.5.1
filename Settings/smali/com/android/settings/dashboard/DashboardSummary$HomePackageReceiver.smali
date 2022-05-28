.class Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomePackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardSummary;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardSummary;Lcom/android/settings/dashboard/DashboardSummary$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/dashboard/DashboardSummary;
    .param p2, "x1"    # Lcom/android/settings/dashboard/DashboardSummary$1;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;-><init>(Lcom/android/settings/dashboard/DashboardSummary;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    const-string v0, "DashboardSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomePackageReceiver action == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardSummary$HomePackageReceiver;->this$0:Lcom/android/settings/dashboard/DashboardSummary;

    invoke-static {v0, p1}, Lcom/android/settings/dashboard/DashboardSummary;->access$000(Lcom/android/settings/dashboard/DashboardSummary;Landroid/content/Context;)V

    .line 92
    return-void
.end method
