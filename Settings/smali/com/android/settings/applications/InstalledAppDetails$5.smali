.class Lcom/android/settings/applications/InstalledAppDetails$5;
.super Landroid/content/BroadcastReceiver;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 2236
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2241
    .local v0, "action":Ljava/lang/String;
    const-string v2, "pkg"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2242
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNotificationReceiver action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDisableNotification:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->access$2000(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2500(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 2246
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2000(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2000(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2247
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$2000(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 2248
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$5;->this$0:Lcom/android/settings/applications/InstalledAppDetails;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->access$2002(Lcom/android/settings/applications/InstalledAppDetails;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 2251
    :cond_0
    return-void
.end method
