.class Lcom/android/settings/applications/ManageApplications$3;
.super Landroid/os/AsyncTask;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ManageApplications;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;

.field final synthetic val$aom:Landroid/app/AppOpsManager;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mIPm:Landroid/content/pm/IPackageManager;

.field final synthetic val$nm:Landroid/app/INotificationManager;

.field final synthetic val$npm:Landroid/net/NetworkPolicyManager;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1637
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$3;->this$0:Lcom/android/settings/applications/ManageApplications;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$3;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/applications/ManageApplications$3;->val$nm:Landroid/app/INotificationManager;

    iput-object p4, p0, Lcom/android/settings/applications/ManageApplications$3;->val$mIPm:Landroid/content/pm/IPackageManager;

    iput-object p5, p0, Lcom/android/settings/applications/ManageApplications$3;->val$aom:Landroid/app/AppOpsManager;

    iput-object p6, p0, Lcom/android/settings/applications/ManageApplications$3;->val$npm:Landroid/net/NetworkPolicyManager;

    iput-object p7, p0, Lcom/android/settings/applications/ManageApplications$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1637
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1639
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$3;->val$pm:Landroid/content/pm/PackageManager;

    const/16 v10, 0x200

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1641
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 1642
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1644
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v9, "ManageApplications"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enabling notifications: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$3;->val$nm:Landroid/app/INotificationManager;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v12, 0x1

    invoke-interface {v9, v10, v11, v12}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1648
    :goto_1
    iget-boolean v9, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v9, :cond_0

    .line 1649
    const-string v9, "ManageApplications"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enabling app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$3;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    .line 1652
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$3;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 1641
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1659
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$3;->val$mIPm:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface {v9, v10}, Landroid/content/pm/IPackageManager;->resetPreferredActivities(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1662
    :goto_2
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$3;->val$aom:Landroid/app/AppOpsManager;

    invoke-virtual {v9}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 1663
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$3;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v7

    .line 1665
    .local v7, "restrictedUids":[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 1666
    .local v3, "currentUserId":I
    move-object v2, v7

    .local v2, "arr$":[I
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v6, :cond_3

    aget v8, v2, v5

    .line 1668
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    if-ne v9, v3, :cond_2

    .line 1669
    const-string v9, "ManageApplications"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Clearing data policy: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$3;->val$npm:Landroid/net/NetworkPolicyManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1666
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1673
    .end local v8    # "uid":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings/applications/ManageApplications$3;->val$handler:Landroid/os/Handler;

    new-instance v10, Lcom/android/settings/applications/ManageApplications$3$1;

    invoke-direct {v10, p0}, Lcom/android/settings/applications/ManageApplications$3$1;-><init>(Lcom/android/settings/applications/ManageApplications$3;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1690
    const/4 v9, 0x0

    return-object v9

    .line 1660
    .end local v2    # "arr$":[I
    .end local v3    # "currentUserId":I
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "restrictedUids":[I
    :catch_0
    move-exception v9

    goto :goto_2

    .line 1646
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v9

    goto/16 :goto_1
.end method
